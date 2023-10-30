Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5C87DC351
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 00:57:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0769110E3C3;
	Mon, 30 Oct 2023 23:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2664F10E3C3;
 Mon, 30 Oct 2023 23:57:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21046A0003;
 Mon, 30 Oct 2023 23:57:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8876269067850838427=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 30 Oct 2023 23:57:27 -0000
Message-ID: <169871024709.25484.4338559984740449446@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231030155843.2251023-1-imre.deak@intel.com>
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_BW_management_on_MST_links_=28rev8=29?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8876269067850838427==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Improve BW management on MST links (rev8)
URL   : https://patchwork.freedesktop.org/series/125490/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13814 -> Patchwork_125490v8
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125490v8 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125490v8, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/index.html

Participating hosts (35 -> 33)
------------------------------

  Additional (2): bat-kbl-2 bat-jsl-3 
  Missing    (4): fi-hsw-4770 bat-adlp-11 fi-snb-2520m bat-dg1-5 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125490v8:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-rpls-1:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_125490v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-jsl-3:          NOTRUN -> [SKIP][3] ([i915#9318])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#1849])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - bat-jsl-3:          NOTRUN -> [SKIP][5] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - bat-jsl-3:          NOTRUN -> [SKIP][6] ([i915#4613]) +3 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][7] ([fdo#109271]) +39 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [PASS][8] -> [DMESG-FAIL][9] ([i915#5334])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-3:          NOTRUN -> [SKIP][10] ([i915#4103]) +1 other test skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-jsl-3:          NOTRUN -> [SKIP][11] ([fdo#109285])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [PASS][12] -> [FAIL][13] ([IGT#3])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-jsl-3:          NOTRUN -> [SKIP][14] ([i915#3555]) +1 other test skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318


Build changes
-------------

  * Linux: CI_DRM_13814 -> Patchwork_125490v8

  CI-20190529: 20190529
  CI_DRM_13814: b560681c6bf623db41064ac486dd148d6c103e53 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7566: 7566
  Patchwork_125490v8: b560681c6bf623db41064ac486dd148d6c103e53 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1569a83c368b drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info
f752c221f7dc drm/i915/dp_mst: Check BW limitations only after all streams are computed
f6db4b851955 drm/i915/dp_mst: Improve BW sharing between MST streams
88174b0f14f5 drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it
55bfd15b1f8a drm/i915: Factor out function to clear pipe update flags
7700735c22e9 drm/i915/dp_mst: Enable MST DSC decompression for all streams
2c703e559452 drm/i915/dp_mst: Enable DSC passthrough
6e3844f39232 drm/i915/dp: Enable DSC via the connector decompression AUX
1ac943431a78 drm/i915/dp_mst: Enable decompression in the sink from the MST encoder hooks
0c29eafc983f drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk
c2a5ca4ed9b5 drm/i915/dp: Disable FEC ready flag in the sink
8ddde9873129 drm/i915/dp: Wait for FEC detected status in the sink
50bde9c7a949 drm/i915/dp: Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec()
fbe41de11a43 drm/i915/dp_mst: Add missing DSC compression disabling
fca9f5c25986 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
d8e97f9f9957 drm/i915/dp_mst: Program the DSC PPS SDP for each stream
3569154af98e drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
36246a635303 drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation
dc2f75e48632 drm/i915/dp: Pass actual BW overhead to m_n calculation
f5011a363aba drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder
71ac021a3909 drm/i915/dp_mst: Enable FEC early once it's known DSC is needed
ae37af9911f5 drm/dp: Add helpers to calculate the link BW overhead
48155a9d962f drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs
b71fd60b8593 drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags
d1662e35c27c drm/dp_mst: Allow DSC in any Synaptics last branch device
cba9c81513dd drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
64ffc1470787 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
0b631e694e25 drm/dp_mst: Add helper to determine if an MST port is downstream of another port
3f78b3a37478 drm/dp_mst: Fix fractional DSC bpp handling
9a1c5f7e42e3 drm/i915/dp_mst: Fix race between connector registration and setup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/index.html

--===============8876269067850838427==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Improve BW management on MST links (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125490/">https://patchwork.freedesktop.org/series/125490/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13814 -&gt; Patchwork_125490v8</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125490v8 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_125490v8, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/index.html</p>
<h2>Participating hosts (35 -&gt; 33)</h2>
<p>Additional (2): bat-kbl-2 bat-jsl-3 <br />
  Missing    (4): fi-hsw-4770 bat-adlp-11 fi-snb-2520m bat-dg1-5 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_125490v8:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_force_connector_basic@force-connector-state:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125490v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13814 -&gt; Patchwork_125490v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13814: b560681c6bf623db41064ac486dd148d6c103e53 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7566: 7566<br />
  Patchwork_125490v8: b560681c6bf623db41064ac486dd148d6c103e53 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1569a83c368b drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info<br />
f752c221f7dc drm/i915/dp_mst: Check BW limitations only after all streams are computed<br />
f6db4b851955 drm/i915/dp_mst: Improve BW sharing between MST streams<br />
88174b0f14f5 drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it<br />
55bfd15b1f8a drm/i915: Factor out function to clear pipe update flags<br />
7700735c22e9 drm/i915/dp_mst: Enable MST DSC decompression for all streams<br />
2c703e559452 drm/i915/dp_mst: Enable DSC passthrough<br />
6e3844f39232 drm/i915/dp: Enable DSC via the connector decompression AUX<br />
1ac943431a78 drm/i915/dp_mst: Enable decompression in the sink from the MST encoder hooks<br />
0c29eafc983f drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk<br />
c2a5ca4ed9b5 drm/i915/dp: Disable FEC ready flag in the sink<br />
8ddde9873129 drm/i915/dp: Wait for FEC detected status in the sink<br />
50bde9c7a949 drm/i915/dp: Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec()<br />
fbe41de11a43 drm/i915/dp_mst: Add missing DSC compression disabling<br />
fca9f5c25986 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled<br />
d8e97f9f9957 drm/i915/dp_mst: Program the DSC PPS SDP for each stream<br />
3569154af98e drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms<br />
36246a635303 drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation<br />
dc2f75e48632 drm/i915/dp: Pass actual BW overhead to m_n calculation<br />
f5011a363aba drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder<br />
71ac021a3909 drm/i915/dp_mst: Enable FEC early once it's known DSC is needed<br />
ae37af9911f5 drm/dp: Add helpers to calculate the link BW overhead<br />
48155a9d962f drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs<br />
b71fd60b8593 drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags<br />
d1662e35c27c drm/dp_mst: Allow DSC in any Synaptics last branch device<br />
cba9c81513dd drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations<br />
64ffc1470787 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager<br />
0b631e694e25 drm/dp_mst: Add helper to determine if an MST port is downstream of another port<br />
3f78b3a37478 drm/dp_mst: Fix fractional DSC bpp handling<br />
9a1c5f7e42e3 drm/i915/dp_mst: Fix race between connector registration and setup</p>

</body>
</html>

--===============8876269067850838427==--
