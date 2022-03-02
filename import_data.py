import os
import numpy as np
import pandas as pd
import mne

# test = mne.io.read_raw_gdf("./BCICIV_2a_gdf/A01E.gdf", eog=, misc=None, stim_channel='auto', exclude=(), preload=False, verbose=None)
raw = mne.io.read_raw_gdf("./BCICIV_2a_gdf/A01E.gdf")
df = raw.to_data_frame()


print(df)
