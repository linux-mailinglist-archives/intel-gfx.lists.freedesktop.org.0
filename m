Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 527C46FB328
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 16:43:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89B6110E2DB;
	Mon,  8 May 2023 14:43:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D943210E2C2;
 Mon,  8 May 2023 14:43:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE979AADE4;
 Mon,  8 May 2023 14:43:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6041734395346977987=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cong Liu" <liucong2@kylinos.cn>
Date: Mon, 08 May 2023 14:43:41 -0000
Message-ID: <168355702180.22734.8483952763910717220@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230508085016.437836-1-liucong2@kylinos.cn>
In-Reply-To: <20230508085016.437836-1-liucong2@kylinos.cn>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_memory_leaks_in_function_live=5Fnop=5Fswitch?=
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

--===============6041734395346977987==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix memory leaks in function live_nop_switch
URL   : https://patchwork.freedesktop.org/series/117458/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13121 -> Patchwork_117458v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_117458v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_117458v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/index.html

Participating hosts (40 -> 40)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_117458v1:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_self_import@basic-llseek-bad:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/fi-kbl-soraka/igt@prime_self_import@basic-llseek-bad.html

  
Known issues
------------

  Here are the changes found in Patchwork_117458v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][4] ([i915#1886] / [i915#7913])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-2:         NOTRUN -> [TIMEOUT][5] ([i915#6794] / [i915#7392])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/bat-rpls-2/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-2:         NOTRUN -> [ABORT][6] ([i915#6687])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271]) +16 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][8] ([i915#3546]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - bat-rpls-2:         [ABORT][9] ([i915#7913] / [i915#7982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13121/bat-rpls-2/igt@i915_selftest@live@requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/bat-rpls-2/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982


Build changes
-------------

  * Linux: CI_DRM_13121 -> Patchwork_117458v1

  CI-20190529: 20190529
  CI_DRM_13121: e877e3f54ca2349b821c99b3430a60bcadab59e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7283: ce51f53938690f581b315fa045d41155a5c6ecd3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117458v1: e877e3f54ca2349b821c99b3430a60bcadab59e8 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

437c11555eb3 drm/i915: Fix memory leaks in function live_nop_switch

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/index.html

--===============6041734395346977987==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix memory leaks in function live_nop_switch</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117458/">https://patchwork.freedesktop.org/series/117458/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13121 -&gt; Patchwork_117458v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_117458v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_117458v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/index.html</p>
<h2>Participating hosts (40 -&gt; 40)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_117458v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@prime_self_import@basic-llseek-bad:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/fi-kbl-soraka/igt@prime_self_import@basic-llseek-bad.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117458v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/bat-rpls-2/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13121/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v1/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13121 -&gt; Patchwork_117458v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13121: e877e3f54ca2349b821c99b3430a60bcadab59e8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7283: ce51f53938690f581b315fa045d41155a5c6ecd3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117458v1: e877e3f54ca2349b821c99b3430a60bcadab59e8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>437c11555eb3 drm/i915: Fix memory leaks in function live_nop_switch</p>

</body>
</html>

--===============6041734395346977987==--
