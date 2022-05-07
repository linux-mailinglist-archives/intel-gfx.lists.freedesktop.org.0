Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B66B551E443
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 07:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF8C11125F2;
	Sat,  7 May 2022 05:25:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AEE541125F1;
 Sat,  7 May 2022 05:25:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE5ABA00FD;
 Sat,  7 May 2022 05:25:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5158344821764013174=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Sat, 07 May 2022 05:25:52 -0000
Message-ID: <165190115268.22140.5179697190417053680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220507045847.862261-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220507045847.862261-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVt?=
 =?utf-8?q?ove_unnecessary_GuC_err_capture_noise?=
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

--===============5158344821764013174==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Remove unnecessary GuC err capture noise
URL   : https://patchwork.freedesktop.org/series/103709/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11620 -> Patchwork_103709v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_103709v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_103709v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/index.html

Participating hosts (47 -> 34)
------------------------------

  Missing    (13): bat-adls-5 bat-dg1-6 bat-dg1-5 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 fi-kbl-guc bat-adln-1 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_103709v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bdw-gvtdvm:      NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-bdw-gvtdvm/igt@i915_selftest@live@late_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_103709v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][2] -> [DMESG-FAIL][3] ([i915#4528])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11620/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-snb-2600:        NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][5] ([fdo#109271]) +26 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-bdw-gvtdvm/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@runner@aborted:
    - fi-blb-e6850:       NOTRUN -> [FAIL][6] ([fdo#109271] / [i915#2403] / [i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-blb-e6850/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][7] ([i915#3921]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11620/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-bdw-gvtdvm:      [DMESG-WARN][9] ([i915#5922]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11620/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#5922]: https://gitlab.freedesktop.org/drm/intel/issues/5922


Build changes
-------------

  * Linux: CI_DRM_11620 -> Patchwork_103709v1

  CI-20190529: 20190529
  CI_DRM_11620: 21604008b69633f65286f7bb4106ccc6c7f87c98 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103709v1: 21604008b69633f65286f7bb4106ccc6c7f87c98 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f0fd1b406611 drm/i915/guc: Remove unnecessary GuC err capture noise

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/index.html

--===============5158344821764013174==
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
<tr><td><b>Series:</b></td><td>Remove unnecessary GuC err capture noise</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103709/">https://patchwork.freedesktop.org/series/103709/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11620 -&gt; Patchwork_103709v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_103709v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_103709v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/index.html</p>
<h2>Participating hosts (47 -&gt; 34)</h2>
<p>Missing    (13): bat-adls-5 bat-dg1-6 bat-dg1-5 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 fi-kbl-guc bat-adln-1 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_103709v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@late_gt_pm:<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-bdw-gvtdvm/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103709v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11620/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-bdw-gvtdvm/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11620/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11620/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5922">i915#5922</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103709v1/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11620 -&gt; Patchwork_103709v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11620: 21604008b69633f65286f7bb4106ccc6c7f87c98 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103709v1: 21604008b69633f65286f7bb4106ccc6c7f87c98 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f0fd1b406611 drm/i915/guc: Remove unnecessary GuC err capture noise</p>

</body>
</html>

--===============5158344821764013174==--
