Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDD181860E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 12:08:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0638010E064;
	Tue, 19 Dec 2023 11:08:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9910E10E064;
 Tue, 19 Dec 2023 11:08:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9017EAADED;
 Tue, 19 Dec 2023 11:08:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3079535981879875009=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Enable_Adaptive_Sync_SDP_Su?=
 =?utf-8?q?pport_for_DP_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Date: Tue, 19 Dec 2023 11:08:44 -0000
Message-ID: <170298412454.17583.9916116386699000318@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231219085343.1211864-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20231219085343.1211864-1-mitulkumar.ajitkumar.golani@intel.com>
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

--===============3079535981879875009==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Adaptive Sync SDP Support for DP (rev5)
URL   : https://patchwork.freedesktop.org/series/126829/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14042 -> Patchwork_126829v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126829v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126829v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/index.html

Participating hosts (35 -> 35)
------------------------------

  Additional (2): bat-kbl-2 fi-pnv-d510 
  Missing    (2): bat-rpls-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126829v5:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_create@basic-files:
    - fi-rkl-11600:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/fi-rkl-11600/igt@gem_ctx_create@basic-files.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/fi-rkl-11600/igt@gem_ctx_create@basic-files.html

  * igt@i915_module_load@load:
    - fi-bsw-n3050:       [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/fi-bsw-n3050/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/fi-bsw-n3050/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/fi-elk-e7500/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/fi-elk-e7500/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/fi-bsw-nick/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/fi-bsw-nick/igt@i915_module_load@load.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-ilk-650:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-rpls-3}:       [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/bat-rpls-3/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-rpls-3/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_126829v5 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][13] -> [FAIL][14] ([i915#8293])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/bat-jsl-1/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#1849])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg2-9:          [PASS][16] -> [INCOMPLETE][17] ([i915#9275])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][18] ([fdo#109271]) +28 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][19] ([fdo#109271]) +36 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-atsm-1:         NOTRUN -> [SKIP][20] ([i915#6645])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-atsm-1:         NOTRUN -> [SKIP][21] ([i915#1836])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-6:         [DMESG-WARN][22] ([i915#9715]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9715]: https://gitlab.freedesktop.org/drm/intel/issues/9715


Build changes
-------------

  * Linux: CI_DRM_14042 -> Patchwork_126829v5

  CI-20190529: 20190529
  CI_DRM_14042: 22e2e737f9603922e0850f2f8eb627b261e15854 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7647: c5db51a88823962e79d41cff10fe1bdd8ea92d89 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126829v5: 22e2e737f9603922e0850f2f8eb627b261e15854 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

52e74439b856 drm/i915/display: Compute and Enable AS SDP
140b9e9c7917 drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
136dfd5af490 drm: Add Adaptive Sync SDP logging

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/index.html

--===============3079535981879875009==
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
<tr><td><b>Series:</b></td><td>Enable Adaptive Sync SDP Support for DP (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126829/">https://patchwork.freedesktop.org/series/126829/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14042 -&gt; Patchwork_126829v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126829v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126829v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/index.html</p>
<h2>Participating hosts (35 -&gt; 35)</h2>
<p>Additional (2): bat-kbl-2 fi-pnv-d510 <br />
  Missing    (2): bat-rpls-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126829v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/fi-rkl-11600/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/fi-rkl-11600/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/fi-bsw-n3050/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/fi-elk-e7500/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/fi-bsw-nick/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/bat-rpls-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-rpls-3/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126829v5 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14042/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9715">i915#9715</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v5/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14042 -&gt; Patchwork_126829v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14042: 22e2e737f9603922e0850f2f8eb627b261e15854 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7647: c5db51a88823962e79d41cff10fe1bdd8ea92d89 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126829v5: 22e2e737f9603922e0850f2f8eb627b261e15854 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>52e74439b856 drm/i915/display: Compute and Enable AS SDP<br />
140b9e9c7917 drm/i915/dp: Add Read/Write support for Adaptive Sync SDP<br />
136dfd5af490 drm: Add Adaptive Sync SDP logging</p>

</body>
</html>

--===============3079535981879875009==--
