Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3AD7A61C5
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 13:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72D5710E10F;
	Tue, 19 Sep 2023 11:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5804E10E106;
 Tue, 19 Sep 2023 11:55:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53B7CA73C7;
 Tue, 19 Sep 2023 11:55:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6777205778699704142=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 19 Sep 2023 11:55:30 -0000
Message-ID: <169512453031.3667.994176278823103721@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230914192659.757475-1-imre.deak@intel.com>
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_BW_management_on_shared_display_links_=28rev10?=
 =?utf-8?q?=29?=
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

--===============6777205778699704142==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Improve BW management on shared display links (rev10)
URL   : https://patchwork.freedesktop.org/series/122589/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13651 -> Patchwork_122589v10
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_122589v10 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_122589v10, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/index.html

Participating hosts (38 -> 37)
------------------------------

  Additional (2): fi-kbl-soraka bat-rpls-2 
  Missing    (3): fi-tgl-1115g4 bat-atsm-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_122589v10:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-mtlp-8:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/bat-mtlp-8/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/bat-mtlp-8/igt@i915_module_load@load.html

  * igt@runner@aborted:
    - bat-rpls-2:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/bat-rpls-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_122589v10 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-hsw-4770:        [PASS][4] -> [FAIL][5] ([i915#8293])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/fi-hsw-4770/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-hsw-4770/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][8] ([i915#1886] / [i915#7913])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][9] ([fdo#109271]) +9 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [ABORT][10] ([i915#7913]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - {bat-dg2-13}:       [DMESG-WARN][12] ([i915#7952]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][14] ([IGT#3] / [i915#6121]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_13651 -> Patchwork_122589v10

  CI-20190529: 20190529
  CI_DRM_13651: 61b71c3f061a44a6ab1dcf756918886aa03a5480 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7493: 2517e42d612e0c1ca096acf8b5f6177f7ef4bce7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122589v10: 61b71c3f061a44a6ab1dcf756918886aa03a5480 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

083e3c934233 drm/i915/dp_mst: Check BW limitations only after all streams are computed
981a0f4e3e4c drm/i915/dp_mst: Improve BW sharing between MST streams
56ef0e4b6625 drm/i915/dp_mst: Allow DSC only for sink ports of the first branch device
d6dd87fac678 drm/i915/dp_mst: Add missing DSC compression disabling
1a32e08efe98 drm/i915/dp_mst: Enable DSC decompression if any stream needs this
6cc7e9ed99c7 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
11fc2f2b8219 drm/i915/dp_mst: Program the DSC PPS SDP for each stream
1ae3523042c4 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
a0ef3c0a67ac drm/i915/dp_mst: Fix PBN calculation with FEC overhead
cbeff948d039 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
53b98fbfae49 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
08dccb8ead0c drm/dp_mst: Add helper to determine if an MST port is downstream of another port
9ce658a8cf6c drm/dp_mst: Add a way to calculate PBN values with FEC overhead
0a1f353ad215 drm/dp_mst: Fix fractional DSC bpp handling
ff78e7f980c5 drm/i915/fdi: Recompute state for affected CRTCs on FDI links
94262c175ffd drm/i915/fdi: Improve FDI BW sharing between pipe B and C
bfb10a7239d1 drm/i915: Add helpers for BW management on shared display links
0899c01543f4 drm/i915: Factor out a helper to check/compute all the CRTC states
81ea58177388 drm/i915: Rename intel_modeset_all_pipes() to intel_modeset_all_pipes_late()
f3bc271dbb8b drm/i915: Add helper to modeset a set of pipes
45a2fb673630 drm/i915/dp: Limit the output link bpp in DSC mode
a14f3e77aa9f drm/i915/dp: Update the link bpp limits for DSC mode
7b7d3300dc14 drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
94fc9fc20497 drm/i915/dp: Track the pipe and link bpp limits separately
33e00687bb18 drm/i915/dp: Factor out helpers to compute the link limits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/index.html

--===============6777205778699704142==
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
<tr><td><b>Series:</b></td><td>drm/i915: Improve BW management on shared display links (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122589/">https://patchwork.freedesktop.org/series/122589/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13651 -&gt; Patchwork_122589v10</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_122589v10 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_122589v10, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Additional (2): fi-kbl-soraka bat-rpls-2 <br />
  Missing    (3): fi-tgl-1115g4 bat-atsm-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_122589v10:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/bat-mtlp-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/bat-mtlp-8/igt@i915_module_load@load.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/bat-rpls-2/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122589v10 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7952">i915#7952</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13651 -&gt; Patchwork_122589v10</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13651: 61b71c3f061a44a6ab1dcf756918886aa03a5480 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7493: 2517e42d612e0c1ca096acf8b5f6177f7ef4bce7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122589v10: 61b71c3f061a44a6ab1dcf756918886aa03a5480 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>083e3c934233 drm/i915/dp_mst: Check BW limitations only after all streams are computed<br />
981a0f4e3e4c drm/i915/dp_mst: Improve BW sharing between MST streams<br />
56ef0e4b6625 drm/i915/dp_mst: Allow DSC only for sink ports of the first branch device<br />
d6dd87fac678 drm/i915/dp_mst: Add missing DSC compression disabling<br />
1a32e08efe98 drm/i915/dp_mst: Enable DSC decompression if any stream needs this<br />
6cc7e9ed99c7 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled<br />
11fc2f2b8219 drm/i915/dp_mst: Program the DSC PPS SDP for each stream<br />
1ae3523042c4 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms<br />
a0ef3c0a67ac drm/i915/dp_mst: Fix PBN calculation with FEC overhead<br />
cbeff948d039 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations<br />
53b98fbfae49 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager<br />
08dccb8ead0c drm/dp_mst: Add helper to determine if an MST port is downstream of another port<br />
9ce658a8cf6c drm/dp_mst: Add a way to calculate PBN values with FEC overhead<br />
0a1f353ad215 drm/dp_mst: Fix fractional DSC bpp handling<br />
ff78e7f980c5 drm/i915/fdi: Recompute state for affected CRTCs on FDI links<br />
94262c175ffd drm/i915/fdi: Improve FDI BW sharing between pipe B and C<br />
bfb10a7239d1 drm/i915: Add helpers for BW management on shared display links<br />
0899c01543f4 drm/i915: Factor out a helper to check/compute all the CRTC states<br />
81ea58177388 drm/i915: Rename intel_modeset_all_pipes() to intel_modeset_all_pipes_late()<br />
f3bc271dbb8b drm/i915: Add helper to modeset a set of pipes<br />
45a2fb673630 drm/i915/dp: Limit the output link bpp in DSC mode<br />
a14f3e77aa9f drm/i915/dp: Update the link bpp limits for DSC mode<br />
7b7d3300dc14 drm/i915/dp: Skip computing a non-DSC link config if DSC is needed<br />
94fc9fc20497 drm/i915/dp: Track the pipe and link bpp limits separately<br />
33e00687bb18 drm/i915/dp: Factor out helpers to compute the link limits</p>

</body>
</html>

--===============6777205778699704142==--
