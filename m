Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6B07A14BF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 06:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63D810E055;
	Fri, 15 Sep 2023 04:21:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B200810E055;
 Fri, 15 Sep 2023 04:21:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A47BDA0BA8;
 Fri, 15 Sep 2023 04:21:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2538718121284622012=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 15 Sep 2023 04:21:06 -0000
Message-ID: <169475166663.32041.5013551090245023178@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230914192659.757475-1-imre.deak@intel.com>
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_BW_management_on_shared_display_links_=28rev5?=
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

--===============2538718121284622012==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Improve BW management on shared display links (rev5)
URL   : https://patchwork.freedesktop.org/series/122589/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13635 -> Patchwork_122589v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/index.html

Participating hosts (40 -> 40)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_122589v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@engines@fds:
    - bat-mtlp-6:         [PASS][1] -> [ABORT][2] ([i915#9262])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13635/bat-mtlp-6/igt@gem_exec_parallel@engines@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/bat-mtlp-6/igt@gem_exec_parallel@engines@fds.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-atsm-1:         [PASS][5] -> [INCOMPLETE][6] ([i915#7913])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13635/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][7] ([i915#1886] / [i915#7913])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bsw-nick:        [PASS][8] -> [INCOMPLETE][9] ([i915#4817])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13635/fi-bsw-nick/igt@i915_suspend@basic-s3-without-i915.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/fi-bsw-nick/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][10] ([fdo#109271]) +9 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html

  
#### Possible fixes ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][11] ([IGT#3] / [i915#6121]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13635/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262


Build changes
-------------

  * Linux: CI_DRM_13635 -> Patchwork_122589v5

  CI-20190529: 20190529
  CI_DRM_13635: c6b7f865a77a75af03c3b68baa4cf7eb66c1c6d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7488: 099e058c5dfb7a49942edf03cae88a52a77077a3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122589v5: c6b7f865a77a75af03c3b68baa4cf7eb66c1c6d5 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b0a3d0b34309 drm/i915/dp_mst: Check BW limitations only after all streams are computed
6f8f53129a5a drm/i915/dp_mst: Improve BW sharing between MST streams
b5a5a7f88084 drm/i915/dp_mst: Allow DSC only for sink ports of the first branch device
6cd5e811c7a4 drm/i915/dp_mst: Add missing DSC compression disabling
ee9689328b06 drm/i915/dp_mst: Enable DSC decompression if any stream needs this
c64811bf340a drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
4f9f7b30b991 drm/i915/dp_mst: Program the DSC PPS SDP for each stream
e5c67f3706d4 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
65967e8437cc drm/i915/dp_mst: Fix PBN calculation with FEC overhead
03059d0858d7 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
29ca3c422569 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
35a8b403f58d drm/dp_mst: Add helper to determine if an MST port is downstream of another port
71687e696a15 drm/dp_mst: Add a way to calculate PBN values with FEC overhead
58d1f25e15c9 drm/dp_mst: Fix fractional DSC bpp handling
e109cfb89599 drm/i915/fdi: Recompute state for affected CRTCs on FDI links
314ac7782bf0 drm/i915/fdi: Improve FDI BW sharing between pipe B and C
24c6f63b9a40 drm/i915: Add helpers for BW management on shared display links
1a0464f77ef3 drm/i915: Factor out a helper to check/compute all the CRTC states
05b0b8c7a6c8 drm/i915: During modeset forcing handle inactive but enabled pipes
abced857c3da drm/i915: Add helper to modeset a set of pipes
44766c4ad358 drm/i915/dp: Limit the output link bpp in DSC mode
10af6187546d drm/i915/dp: Update the link bpp limits for DSC mode
a6834e84dc6f drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
bf33bf15dd1a drm/i915/dp: Track the pipe and link bpp limits separately
f396a776eb3a drm/i915/dp: Factor out helpers to compute the link limits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/index.html

--===============2538718121284622012==
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
<tr><td><b>Series:</b></td><td>drm/i915: Improve BW management on shared display links (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122589/">https://patchwork.freedesktop.org/series/122589/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13635 -&gt; Patchwork_122589v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/index.html</p>
<h2>Participating hosts (40 -&gt; 40)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122589v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13635/bat-mtlp-6/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/bat-mtlp-6/igt@gem_exec_parallel@engines@fds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13635/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13635/fi-bsw-nick/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/fi-bsw-nick/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_hdmi_inject@inject-audio:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13635/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v5/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13635 -&gt; Patchwork_122589v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13635: c6b7f865a77a75af03c3b68baa4cf7eb66c1c6d5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7488: 099e058c5dfb7a49942edf03cae88a52a77077a3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122589v5: c6b7f865a77a75af03c3b68baa4cf7eb66c1c6d5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b0a3d0b34309 drm/i915/dp_mst: Check BW limitations only after all streams are computed<br />
6f8f53129a5a drm/i915/dp_mst: Improve BW sharing between MST streams<br />
b5a5a7f88084 drm/i915/dp_mst: Allow DSC only for sink ports of the first branch device<br />
6cd5e811c7a4 drm/i915/dp_mst: Add missing DSC compression disabling<br />
ee9689328b06 drm/i915/dp_mst: Enable DSC decompression if any stream needs this<br />
c64811bf340a drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled<br />
4f9f7b30b991 drm/i915/dp_mst: Program the DSC PPS SDP for each stream<br />
e5c67f3706d4 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms<br />
65967e8437cc drm/i915/dp_mst: Fix PBN calculation with FEC overhead<br />
03059d0858d7 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations<br />
29ca3c422569 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager<br />
35a8b403f58d drm/dp_mst: Add helper to determine if an MST port is downstream of another port<br />
71687e696a15 drm/dp_mst: Add a way to calculate PBN values with FEC overhead<br />
58d1f25e15c9 drm/dp_mst: Fix fractional DSC bpp handling<br />
e109cfb89599 drm/i915/fdi: Recompute state for affected CRTCs on FDI links<br />
314ac7782bf0 drm/i915/fdi: Improve FDI BW sharing between pipe B and C<br />
24c6f63b9a40 drm/i915: Add helpers for BW management on shared display links<br />
1a0464f77ef3 drm/i915: Factor out a helper to check/compute all the CRTC states<br />
05b0b8c7a6c8 drm/i915: During modeset forcing handle inactive but enabled pipes<br />
abced857c3da drm/i915: Add helper to modeset a set of pipes<br />
44766c4ad358 drm/i915/dp: Limit the output link bpp in DSC mode<br />
10af6187546d drm/i915/dp: Update the link bpp limits for DSC mode<br />
a6834e84dc6f drm/i915/dp: Skip computing a non-DSC link config if DSC is needed<br />
bf33bf15dd1a drm/i915/dp: Track the pipe and link bpp limits separately<br />
f396a776eb3a drm/i915/dp: Factor out helpers to compute the link limits</p>

</body>
</html>

--===============2538718121284622012==--
