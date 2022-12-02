Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84112640599
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 12:16:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 053CC10E04D;
	Fri,  2 Dec 2022 11:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EEC9410E04D;
 Fri,  2 Dec 2022 11:16:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7821A47DF;
 Fri,  2 Dec 2022 11:16:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8458330569028857841=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Fri, 02 Dec 2022 11:16:34 -0000
Message-ID: <166997979491.27864.3299338685418716505@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSGFu?=
 =?utf-8?q?dle_BPC_for_HDMI2=2E1_PCON_without_DSC1=2E2_sink_and_other_fixe?=
 =?utf-8?q?s_=28rev8=29?=
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

--===============8458330569028857841==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Handle BPC for HDMI2.1 PCON without DSC1.2 sink and other fixes (rev8)
URL   : https://patchwork.freedesktop.org/series/107550/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12462 -> Patchwork_107550v8
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/index.html

Participating hosts (42 -> 40)
------------------------------

  Additional (1): bat-dg1-7 
  Missing    (3): fi-ilk-m540 fi-apl-guc bat-dg1-6 

Known issues
------------

  Here are the changes found in Patchwork_107550v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-6700k2:      [PASS][1] -> [DMESG-FAIL][2] ([i915#5334])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][3] ([i915#2582]) -> [PASS][4] +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/bat-rpls-2/igt@fbdev@read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rplp-1}:       [DMESG-WARN][5] ([i915#2867]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][7] ([i915#5334]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-2}:       [INCOMPLETE][9] ([i915#4983] / [i915#6257]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/bat-rpls-2/igt@i915_selftest@live@requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/bat-rpls-2/igt@i915_selftest@live@requests.html

  * igt@kms_psr@primary_page_flip:
    - fi-kbl-soraka:      [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/fi-kbl-soraka/igt@kms_psr@primary_page_flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/fi-kbl-soraka/igt@kms_psr@primary_page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4303]: https://gitlab.freedesktop.org/drm/intel/issues/4303
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7346]: https://gitlab.freedesktop.org/drm/intel/issues/7346
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561


Build changes
-------------

  * Linux: CI_DRM_12462 -> Patchwork_107550v8

  CI-20190529: 20190529
  CI_DRM_12462: 00b10bdfd8b9edc9b2c681d806fbb6ae2e5f31a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7078: 71bce31c26998d5d53cff3138049261fd6c4fbaf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107550v8: 00b10bdfd8b9edc9b2c681d806fbb6ae2e5f31a3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0ba6bef0af3e drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints
ffb5435c2164 drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP
b407783aee5a drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
2e474682091b drm/i915/dp: Avoid DSC with output_format YCBCR420
81d704d195c2 drm/i915/display: Add helper function to check if sink_format is 420
618a2a42e598 drm/i915/dp: Check if mode can be supported with dsc compressed bpp
4581cb5a9441 drm/i915/dp: Consider output_format while computing dsc bpp for mode_valid
a9474182ce45 drm/i915/dp: Rearrange check for illegal mode and comments in mode_valid
6bb87b27e81c drm/i915/display: Use sink_format instead of ycbcr420_output flag
362850bf8e5f drm/i915/dp: Compute output format with/without DSC
7e3aad1b7d37 drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state sink_format
3030cded43d8 drm/i915/dp: Add Scaler constraint for YCbCr420 output
def98e46e1b8 drm/i915/display: Add new member in intel_dp to store ycbcr420 passthrough cap
a137557b7d21 drm/i915/display: Add new member to configure PCON color conversion

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/index.html

--===============8458330569028857841==
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
<tr><td><b>Series:</b></td><td>Handle BPC for HDMI2.1 PCON without DSC1.2 sink and other fixes (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107550/">https://patchwork.freedesktop.org/series/107550/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12462 -&gt; Patchwork_107550v8</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Additional (1): bat-dg1-7 <br />
  Missing    (3): fi-ilk-m540 fi-apl-guc bat-dg1-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107550v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/bat-rpls-2/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6257">i915#6257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/fi-kbl-soraka/igt@kms_psr@primary_page_flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v8/fi-kbl-soraka/igt@kms_psr@primary_page_flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12462 -&gt; Patchwork_107550v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12462: 00b10bdfd8b9edc9b2c681d806fbb6ae2e5f31a3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7078: 71bce31c26998d5d53cff3138049261fd6c4fbaf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107550v8: 00b10bdfd8b9edc9b2c681d806fbb6ae2e5f31a3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0ba6bef0af3e drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints<br />
ffb5435c2164 drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP<br />
b407783aee5a drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC<br />
2e474682091b drm/i915/dp: Avoid DSC with output_format YCBCR420<br />
81d704d195c2 drm/i915/display: Add helper function to check if sink_format is 420<br />
618a2a42e598 drm/i915/dp: Check if mode can be supported with dsc compressed bpp<br />
4581cb5a9441 drm/i915/dp: Consider output_format while computing dsc bpp for mode_valid<br />
a9474182ce45 drm/i915/dp: Rearrange check for illegal mode and comments in mode_valid<br />
6bb87b27e81c drm/i915/display: Use sink_format instead of ycbcr420_output flag<br />
362850bf8e5f drm/i915/dp: Compute output format with/without DSC<br />
7e3aad1b7d37 drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state sink_format<br />
3030cded43d8 drm/i915/dp: Add Scaler constraint for YCbCr420 output<br />
def98e46e1b8 drm/i915/display: Add new member in intel_dp to store ycbcr420 passthrough cap<br />
a137557b7d21 drm/i915/display: Add new member to configure PCON color conversion</p>

</body>
</html>

--===============8458330569028857841==--
