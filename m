Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE85812A86
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 09:38:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BBBC10E2B9;
	Thu, 14 Dec 2023 08:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CDC1310E2B9;
 Thu, 14 Dec 2023 08:38:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85E50AADD8;
 Thu, 14 Dec 2023 08:38:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4597488751316191984=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/guc=3A_Change_wa_r?=
 =?utf-8?q?egisters_to_MCR_type?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shuicheng Lin" <shuicheng.lin@intel.com>
Date: Thu, 14 Dec 2023 08:38:06 -0000
Message-ID: <170254308651.19957.13748118423005904868@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231214072629.3240287-1-shuicheng.lin@intel.com>
In-Reply-To: <20231214072629.3240287-1-shuicheng.lin@intel.com>
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

--===============4597488751316191984==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Change wa registers to MCR type
URL   : https://patchwork.freedesktop.org/series/127788/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14017 -> Patchwork_127788v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (2): bat-rpls-2 bat-kbl-2 
  Missing    (2): bat-dg2-9 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127788v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_psr@psr-primary-page-flip}:
    - bat-rpls-2:         NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@kms_psr@psr-primary-page-flip.html

  
New tests
---------

  New tests have been introduced between CI_DRM_14017 and Patchwork_127788v1:

### New IGT tests (13) ###

  * igt@fbdev@eof:
    - Statuses : 30 pass(s) 5 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@fbdev@nullptr:
    - Statuses : 30 pass(s) 5 skip(s)
    - Exec time: [0.0] s

  * igt@fbdev@read:
    - Statuses : 30 pass(s) 5 skip(s)
    - Exec time: [0.0, 9.45] s

  * igt@fbdev@write:
    - Statuses : 30 pass(s) 5 skip(s)
    - Exec time: [0.0, 6.33] s

  * igt@gem_exec_suspend@basic-s0:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_lmem_swapping@basic:
    - Statuses : 26 skip(s)
    - Exec time: [0.0] s

  * igt@gem_lmem_swapping@basic@lmem0:
    - Statuses : 3 pass(s)
    - Exec time: [13.73, 29.67] s

  * igt@gem_lmem_swapping@parallel-random-engines:
    - Statuses : 26 skip(s)
    - Exec time: [0.0] s

  * igt@gem_lmem_swapping@parallel-random-engines@lmem0:
    - Statuses : 3 pass(s)
    - Exec time: [29.94, 51.25] s

  * igt@gem_lmem_swapping@random-engines:
    - Statuses : 26 skip(s)
    - Exec time: [0.0] s

  * igt@gem_lmem_swapping@random-engines@lmem0:
    - Statuses : 3 pass(s)
    - Exec time: [0.47, 1.31] s

  * igt@gem_lmem_swapping@verify-random:
    - Statuses : 26 skip(s)
    - Exec time: [0.0] s

  * igt@gem_lmem_swapping@verify-random@lmem0:
    - Statuses : 3 pass(s)
    - Exec time: [6.42, 12.32] s

  

Known issues
------------

  Here are the changes found in Patchwork_127788v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-adlp-11:        [PASS][2] -> [FAIL][3] ([i915#8293])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/bat-adlp-11/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-adlp-11/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-rpls-2:         NOTRUN -> [SKIP][4] ([i915#9318])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1849])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-1:          [PASS][6] -> [INCOMPLETE][7] ([i915#9275])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/bat-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_lmem_swapping@parallel-random-engines (NEW):
    - bat-kbl-2:          NOTRUN -> [SKIP][8] ([fdo#109271]) +35 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_tiled_pread_basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][9] ([i915#3282])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@gem_tiled_pread_basic.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-kbl-2:          NOTRUN -> [INCOMPLETE][10] ([i915#4817])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-kbl-2/igt@i915_suspend@basic-s3-without-i915.html
    - bat-jsl-1:          [PASS][11] -> [FAIL][12] ([fdo#103375])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-rpls-2:         NOTRUN -> [SKIP][13] ([i915#4103]) +1 other test skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][14] ([i915#3555] / [i915#3840])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-rpls-2:         NOTRUN -> [SKIP][15] ([fdo#109285])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][16] ([i915#9826]) +3 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-rpls-2:         NOTRUN -> [SKIP][17] ([i915#5354])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@kms_pm_backlight@basic-brightness.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8981]: https://gitlab.freedesktop.org/drm/intel/issues/8981
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9826]: https://gitlab.freedesktop.org/drm/intel/issues/9826


Build changes
-------------

  * Linux: CI_DRM_14017 -> Patchwork_127788v1

  CI-20190529: 20190529
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127788v1: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

34c887a464cb drm/i915/guc: Change wa registers to MCR type

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/index.html

--===============4597488751316191984==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Change wa registers to MCR type</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127788/">https://patchwork.freedesktop.org/series/127788/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14017 -&gt; Patchwork_127788v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (2): bat-rpls-2 bat-kbl-2 <br />
  Missing    (2): bat-dg2-9 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_127788v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_psr@psr-primary-page-flip}:<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@kms_psr@psr-primary-page-flip.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14017 and Patchwork_127788v1:</p>
<h3>New IGT tests (13)</h3>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>Statuses : 30 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>Statuses : 30 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>Statuses : 30 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 9.45] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>Statuses : 30 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 6.33] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>Statuses : 26 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [13.73, 29.67] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>Statuses : 26 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines@lmem0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [29.94, 51.25] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>Statuses : 26 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines@lmem0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.47, 1.31] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>Statuses : 26 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random@lmem0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [6.42, 12.32] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127788v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/bat-adlp-11/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-adlp-11/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/bat-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines (NEW):</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-kbl-2/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9826">i915#9826</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v1/bat-rpls-2/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14017 -&gt; Patchwork_127788v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127788v1: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>34c887a464cb drm/i915/guc: Change wa registers to MCR type</p>

</body>
</html>

--===============4597488751316191984==--
