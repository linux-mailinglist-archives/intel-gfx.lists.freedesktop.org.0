Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A41917BB013
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 03:39:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 776D210E085;
	Fri,  6 Oct 2023 01:39:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1994A10E085;
 Fri,  6 Oct 2023 01:39:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17694AADEA;
 Fri,  6 Oct 2023 01:39:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3649765325183534530=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Fri, 06 Oct 2023 01:39:32 -0000
Message-ID: <169655637208.6465.10012227083369122775@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgU3Vi?=
 =?utf-8?q?ject=3A_=5BPATCH_dii-client_v6_0/4=5D_drm/i915=3A_Define_and_us?=
 =?utf-8?q?e_GuC_and_CTB_TLB_invalidation_routines_=28rev2=29?=
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

--===============3649765325183534530==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Subject: [PATCH dii-client v6 0/4] drm/i915: Define and use GuC and CTB TLB invalidation routines (rev2)
URL   : https://patchwork.freedesktop.org/series/124641/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13719 -> Patchwork_124641v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_124641v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_124641v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_124641v2:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_prop_blob@basic:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/fi-kbl-soraka/igt@kms_prop_blob@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/fi-kbl-soraka/igt@kms_prop_blob@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_124641v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [PASS][3] -> [DMESG-FAIL][4] ([i915#5334])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][5] ([i915#6645])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5:
    - bat-adlp-11:        [PASS][6] -> [ABORT][7] ([i915#8668] / [i915#9451])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][8] -> [ABORT][9] ([i915#8668])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-kbl-soraka:      [DMESG-WARN][10] ([i915#1982]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/fi-kbl-soraka/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/fi-kbl-soraka/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-adlp-9:         [INCOMPLETE][12] -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][14] ([i915#9414]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - {bat-dg2-13}:       [DMESG-WARN][16] ([Intel XE#485]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - bat-adlp-11:        [DMESG-WARN][18] ([i915#6868]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp5:
    - bat-adlp-11:        [DMESG-FAIL][20] ([i915#6868]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@a-dp5.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@a-dp5.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dp5:
    - bat-adlp-11:        [FAIL][22] ([i915#6121]) -> [PASS][23] +6 other tests pass
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp5.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp5.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5:
    - bat-adlp-11:        [ABORT][24] ([i915#8668]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#485]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/485
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9451]: https://gitlab.freedesktop.org/drm/intel/issues/9451


Build changes
-------------

  * Linux: CI_DRM_13719 -> Patchwork_124641v2

  CI-20190529: 20190529
  CI_DRM_13719: 68e5c10def179bde3bf44bd95d19eea796cbf7a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7517: 8368e3ad3f9459a8f5cdd24f813ae802c1211029 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124641v2: 68e5c10def179bde3bf44bd95d19eea796cbf7a3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

db66c7af068d drm/i915: Enable GuC TLB invalidations for MTL
ecdbf850d004 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
36c0b99a44d3 drm/i915: No TLB invalidation on wedged or suspended GT
7bb0fdcee8b7 drm/i915: Define and use GuC and CTB TLB invalidation routines
bbfa46308b9f drm/i915: Add GuC TLB Invalidation device info flags

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/index.html

--===============3649765325183534530==
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
<tr><td><b>Series:</b></td><td>Subject: [PATCH dii-client v6 0/4] drm/i915: Define and use GuC and CTB TLB invalidation routines (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124641/">https://patchwork.freedesktop.org/series/124641/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13719 -&gt; Patchwork_124641v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_124641v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_124641v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_124641v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_prop_blob@basic:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/fi-kbl-soraka/igt@kms_prop_blob@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/fi-kbl-soraka/igt@kms_prop_blob@basic.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124641v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9451">i915#9451</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/fi-kbl-soraka/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/fi-kbl-soraka/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/485">Intel XE#485</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dp5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@a-dp5.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@a-dp5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp5.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp5.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13719/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124641v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13719 -&gt; Patchwork_124641v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13719: 68e5c10def179bde3bf44bd95d19eea796cbf7a3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7517: 8368e3ad3f9459a8f5cdd24f813ae802c1211029 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124641v2: 68e5c10def179bde3bf44bd95d19eea796cbf7a3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>db66c7af068d drm/i915: Enable GuC TLB invalidations for MTL<br />
ecdbf850d004 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck<br />
36c0b99a44d3 drm/i915: No TLB invalidation on wedged or suspended GT<br />
7bb0fdcee8b7 drm/i915: Define and use GuC and CTB TLB invalidation routines<br />
bbfa46308b9f drm/i915: Add GuC TLB Invalidation device info flags</p>

</body>
</html>

--===============3649765325183534530==--
