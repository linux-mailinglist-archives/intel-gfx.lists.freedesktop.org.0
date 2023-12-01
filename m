Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DC98001C4
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 03:53:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3CA010E7AB;
	Fri,  1 Dec 2023 02:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 63DFB10E7AB;
 Fri,  1 Dec 2023 02:53:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52E50A0078;
 Fri,  1 Dec 2023 02:53:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3411384641940614726=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Date: Fri, 01 Dec 2023 02:53:33 -0000
Message-ID: <170139921330.19685.13793517854409386877@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231130213103.214915-1-khaled.almahallawy@intel.com>
In-Reply-To: <20231130213103.214915-1-khaled.almahallawy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/dp=3A_Use_LINK=5FQUAL?=
 =?utf-8?q?=5FPATTERN=5F*_Phy_test_pattern_names?=
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

--===============3411384641940614726==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names
URL   : https://patchwork.freedesktop.org/series/127146/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13956 -> Patchwork_127146v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127146v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127146v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/index.html

Participating hosts (39 -> 34)
------------------------------

  Missing    (5): fi-bsw-n3050 fi-snb-2520m bat-atsm-1 fi-pnv-d510 bat-mtlp-8 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127146v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-b-dp-6:
    - bat-adlp-11:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-b-dp-6.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-b-dp-6.html

  
Known issues
------------

  Here are the changes found in Patchwork_127146v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [PASS][4] -> [FAIL][5] ([IGT#3])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5:
    - bat-adlp-11:        [PASS][6] -> [DMESG-FAIL][7] ([i915#6868])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5:
    - bat-adlp-11:        [PASS][8] -> [FAIL][9] ([i915#9666])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][10] ([i915#1845] / [i915#9197])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-b-dp-6:
    - bat-adlp-11:        [PASS][11] -> [ABORT][12] ([i915#8668])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc@pipe-b-dp-6.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc@pipe-b-dp-6.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-1:         NOTRUN -> [SKIP][13] ([i915#1845])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-apl-guc:         [ABORT][14] ([i915#8213] / [i915#8668]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         [ABORT][16] ([i915#7978]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
  [i915#9666]: https://gitlab.freedesktop.org/drm/intel/issues/9666


Build changes
-------------

  * Linux: CI_DRM_13956 -> Patchwork_127146v1

  CI-20190529: 20190529
  CI_DRM_13956: b59a0a6520764f36a79ba6b4c590e243ac6b913d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7612: b5c47966901ee1060bcb9d4bccdd3ccec9651ef4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127146v1: b59a0a6520764f36a79ba6b4c590e243ac6b913d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

495fc28b6019 drm/i915/dp: Add TPS4 PHY test pattern support
e49d81ed6615 drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/index.html

--===============3411384641940614726==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127146/">https://patchwork.freedesktop.org/series/127146/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13956 -&gt; Patchwork_127146v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127146v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_127146v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/index.html</p>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Missing    (5): fi-bsw-n3050 fi-snb-2520m bat-atsm-1 fi-pnv-d510 bat-mtlp-8 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_127146v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-b-dp-6:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-b-dp-6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-b-dp-6.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127146v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9666">i915#9666</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-b-dp-6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc@pipe-b-dp-6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc@pipe-b-dp-6.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13956/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127146v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13956 -&gt; Patchwork_127146v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13956: b59a0a6520764f36a79ba6b4c590e243ac6b913d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7612: b5c47966901ee1060bcb9d4bccdd3ccec9651ef4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127146v1: b59a0a6520764f36a79ba6b4c590e243ac6b913d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>495fc28b6019 drm/i915/dp: Add TPS4 PHY test pattern support<br />
e49d81ed6615 drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names</p>

</body>
</html>

--===============3411384641940614726==--
