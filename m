Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 739D463311B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 01:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA4310E19E;
	Tue, 22 Nov 2022 00:08:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 163F210E19E;
 Tue, 22 Nov 2022 00:08:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C83F5AADD8;
 Tue, 22 Nov 2022 00:08:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0193552438417214079=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 22 Nov 2022 00:08:49 -0000
Message-ID: <166907572978.2187.696478880784031210@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221121231617.1110329-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221121231617.1110329-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_GSC_FW_loading?=
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

--===============0193552438417214079==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add support for GSC FW loading
URL   : https://patchwork.freedesktop.org/series/111170/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12409 -> Patchwork_111170v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_111170v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_111170v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/index.html

Participating hosts (35 -> 35)
------------------------------

  Additional (2): bat-rpls-2 bat-dg2-11 
  Missing    (2): fi-ilk-m540 fi-rkl-11600 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111170v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_engines:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-WARN][2] +39 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/fi-ivb-3770/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/fi-ivb-3770/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@perf:
    - fi-hsw-4770:        [PASS][3] -> [DMESG-WARN][4] +40 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/fi-hsw-4770/igt@i915_selftest@live@perf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/fi-hsw-4770/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@uncore:
    - fi-snb-2520m:       [PASS][5] -> [DMESG-WARN][6] +39 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/fi-snb-2520m/igt@i915_selftest@live@uncore.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/fi-snb-2520m/igt@i915_selftest@live@uncore.html

  
Known issues
------------

  Here are the changes found in Patchwork_111170v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_render_tiled_blits@basic:
    - fi-apl-guc:         [PASS][7] -> [INCOMPLETE][8] ([i915#7056])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/fi-apl-guc/igt@gem_render_tiled_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/fi-apl-guc/igt@gem_render_tiled_blits@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rplp-1}:       [DMESG-WARN][9] ([i915#2867]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@hangcheck:
    - {bat-dg2-9}:        [INCOMPLETE][11] ([i915#7349]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/bat-dg2-9/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/bat-dg2-9/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7056]: https://gitlab.freedesktop.org/drm/intel/issues/7056
  [i915#7346]: https://gitlab.freedesktop.org/drm/intel/issues/7346
  [i915#7348]: https://gitlab.freedesktop.org/drm/intel/issues/7348
  [i915#7349]: https://gitlab.freedesktop.org/drm/intel/issues/7349
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561


Build changes
-------------

  * Linux: CI_DRM_12409 -> Patchwork_111170v1

  CI-20190529: 20190529
  CI_DRM_12409: ab70218208c05b2a68a1143438a56c3d494eb529 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7069: 40a2de5cc6a6b43af7da7905bfe1ede9d9a3200c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111170v1: ab70218208c05b2a68a1143438a56c3d494eb529 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

8476feaf19d5 drm/i915/mtl: MTL has one GSC CS on the media GT
faba11959cd4 drm/i915/gsc: Disable GSC engine and power well if FW is not selected
131e5e37fc13 drm/i915/gsc: Do a driver-FLR on unload if GSC was loaded
9d9b1090faaf drm/i915/gsc: GSC firmware loading
0068cf3d27fb drm/i915/gsc: Skip the version check when fetching the GSC FW
9fdbfecae323 drm/i915/uc: Introduce GSC FW

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/index.html

--===============0193552438417214079==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add support for GSC FW loading</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111170/">https://patchwork.freedesktop.org/series/111170/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12409 -&gt; Patchwork_111170v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_111170v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_111170v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/index.html</p>
<h2>Participating hosts (35 -&gt; 35)</h2>
<p>Additional (2): bat-rpls-2 bat-dg2-11 <br />
  Missing    (2): fi-ilk-m540 fi-rkl-11600 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_111170v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/fi-ivb-3770/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/fi-ivb-3770/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/fi-hsw-4770/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/fi-hsw-4770/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/fi-snb-2520m/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/fi-snb-2520m/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +39 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111170v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_render_tiled_blits@basic:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7056">i915#7056</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12409/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7349">i915#7349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111170v1/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12409 -&gt; Patchwork_111170v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12409: ab70218208c05b2a68a1143438a56c3d494eb529 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7069: 40a2de5cc6a6b43af7da7905bfe1ede9d9a3200c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111170v1: ab70218208c05b2a68a1143438a56c3d494eb529 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>8476feaf19d5 drm/i915/mtl: MTL has one GSC CS on the media GT<br />
faba11959cd4 drm/i915/gsc: Disable GSC engine and power well if FW is not selected<br />
131e5e37fc13 drm/i915/gsc: Do a driver-FLR on unload if GSC was loaded<br />
9d9b1090faaf drm/i915/gsc: GSC firmware loading<br />
0068cf3d27fb drm/i915/gsc: Skip the version check when fetching the GSC FW<br />
9fdbfecae323 drm/i915/uc: Introduce GSC FW</p>

</body>
</html>

--===============0193552438417214079==--
