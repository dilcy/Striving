import geopandas as geo
afri_map = geo.GeoDataFrame.from_file('Africa.shp')
afri_map.head()
afri_map.plot(column = 'CODE')
afri_pop = pd.read_csv('Africa_populations.tsv',sep='\t')
afri_pop.head()
afri_map = pd.merge(afri_map,afri_pop,left_on='COUNTRY',right_on='Country_Name')
afri_map.plot(column='Population',colormap = 'hot')
