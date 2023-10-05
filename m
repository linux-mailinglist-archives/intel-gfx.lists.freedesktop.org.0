Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 163517B99FD
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 04:37:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A485710E3D4;
	Thu,  5 Oct 2023 02:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B5A8A10E3D2;
 Thu,  5 Oct 2023 02:37:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8C97A00E8;
 Thu,  5 Oct 2023 02:37:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8147740953192209456=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Thu, 05 Oct 2023 02:37:26 -0000
Message-ID: <169647344665.7512.14445377787257812464@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231004183625.1307100-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231004183625.1307100-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/4=5D_drm/i915=3A_Add_GuC_TLB_Invali?=
 =?utf-8?q?dation_pci_tags?=
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

--===============8147740953192209456==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v5,1/4] drm/i915: Add GuC TLB Invalidation pci tags
URL   : https://patchwork.freedesktop.org/series/124636/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13713 -> Patchwork_124636v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_124636v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_124636v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/index.html

Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_124636v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@flip:
    - bat-adln-1:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-adln-1/igt@kms_busy@basic@flip.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-adln-1/igt@kms_busy@basic@flip.html
    - bat-rplp-1:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-rplp-1/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-rplp-1/igt@kms_busy@basic@flip.html
    - bat-adlp-6:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-adlp-6/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-adlp-6/igt@kms_busy@basic@flip.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-rpls-1:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_124636v1 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-bsw-n3050:       [FAIL][9] ([i915#8293]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/fi-bsw-n3050/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-bsw-n3050/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@lmem0:
    - bat-atsm-1:         NOTRUN -> [DMESG-WARN][11] ([i915#8841]) +4 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][12] ([fdo#109271]) +18 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live@dmabuf:
    - fi-bsw-nick:        [PASS][13] -> [DMESG-FAIL][14] ([i915#7913])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/fi-bsw-nick/igt@i915_selftest@live@dmabuf.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-bsw-nick/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@gtt:
    - bat-adlp-9:         [PASS][15] -> [INCOMPLETE][16] ([i915#7913])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-adlp-9/igt@i915_selftest@live@gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-adlp-9/igt@i915_selftest@live@gtt.html
    - bat-dg2-11:         [PASS][17] -> [INCOMPLETE][18] ([i915#7913])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-dg2-11/igt@i915_selftest@live@gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-dg2-11/igt@i915_selftest@live@gtt.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-atsm-1:         NOTRUN -> [SKIP][19] ([i915#6645])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][20] ([i915#6645])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][21] ([IGT#3])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-atsm-1:         NOTRUN -> [SKIP][22] ([i915#1836])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][23] ([i915#7911] / [i915#7913]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][25] ([i915#5334]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][27] ([i915#9414]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-ivb-3770:        [DMESG-WARN][29] ([i915#1982] / [i915#8841]) -> [DMESG-WARN][30] ([i915#8841])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414


Build changes
-------------

  * Linux: CI_DRM_13713 -> Patchwork_124636v1

  CI-20190529: 20190529
  CI_DRM_13713: 4540606b1e3d945191858f82b07576e12feb7f26 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7512: 2eb58faf82d3cd5e2e74154a7319cff56eb40762 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124636v1: 4540606b1e3d945191858f82b07576e12feb7f26 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

26f31d449650 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
8434b48054dc drm/i915: No TLB invalidation on wedged or suspended GT
6fd399123b57 drm/i915: Define and use GuC and CTB TLB invalidation routines
e32d37e8465f drm/i915: Add GuC TLB Invalidation pci tags

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/index.html

--===============8147740953192209456==
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
<tr><td><b>Series:</b></td><td>series starting with [v5,1/4] drm/i915: Add GuC TLB Invalidation pci tags</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124636/">https://patchwork.freedesktop.org/series/124636/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13713 -&gt; Patchwork_124636v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_124636v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_124636v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_124636v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-adln-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-adln-1/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-rplp-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-rplp-1/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-adlp-6/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124636v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-bsw-n3050/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@lmem0:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/fi-bsw-nick/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-bsw-nick/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-adlp-9/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-adlp-9/igt@i915_selftest@live@gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-dg2-11/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-dg2-11/igt@i915_selftest@live@gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s2idle-without-i915:<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13713/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124636v1/fi-ivb-3770/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13713 -&gt; Patchwork_124636v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13713: 4540606b1e3d945191858f82b07576e12feb7f26 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7512: 2eb58faf82d3cd5e2e74154a7319cff56eb40762 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124636v1: 4540606b1e3d945191858f82b07576e12feb7f26 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>26f31d449650 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck<br />
8434b48054dc drm/i915: No TLB invalidation on wedged or suspended GT<br />
6fd399123b57 drm/i915: Define and use GuC and CTB TLB invalidation routines<br />
e32d37e8465f drm/i915: Add GuC TLB Invalidation pci tags</p>

</body>
</html>

--===============8147740953192209456==--
