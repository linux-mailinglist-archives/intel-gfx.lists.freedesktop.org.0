Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1672F2C3646
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 02:39:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9576189E32;
	Wed, 25 Nov 2020 01:39:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E732A89CA8;
 Wed, 25 Nov 2020 01:39:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDCEFA00E6;
 Wed, 25 Nov 2020 01:39:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Wed, 25 Nov 2020 01:39:21 -0000
Message-ID: <160626836187.8876.708045481962750678@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201125003108.156110-1-aditya.swarup@intel.com>
In-Reply-To: <20201125003108.156110-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Fix_REVID_macros_for_TGL_to_fetch_correct_stepping?=
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
Content-Type: multipart/mixed; boundary="===============1653267527=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1653267527==
Content-Type: multipart/alternative;
 boundary="===============2678661922836122837=="

--===============2678661922836122837==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

== Series Details ==

Series: drm/i915/tgl: Fix REVID macros for TGL to fetch correct stepping
URL   : https://patchwork.freedesktop.org/series/84238/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9385 -> Patchwork_18972
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9385 and Patchwork_18972:

### New CI tests (1) ###

  * boot:
    - Statuses : 38 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18972 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-apl-guc:         [PASS][3] -> [DMESG-WARN][4] ([i915#1635] / [i915#62]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-byt-j1900/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-FAIL][8] ([i915#541])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cfl-8109u:       [DMESG-WARN][11] ([i915#262]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [DMESG-WARN][15] ([i915#402]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-tgl-y/igt@prime_vgem@basic-read.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-tgl-y/igt@prime_vgem@basic-read.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-tgl-y:           [DMESG-WARN][17] ([i915#2411]) -> [DMESG-WARN][18] ([i915#1982] / [i915#2411])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * Linux: CI_DRM_9385 -> Patchwork_18972

  CI-20190529: 20190529
  CI_DRM_9385: 3d37e624f60f40cea80e784617686ae2917e9b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5870: 08b13995b85df26a77212e4fb21fd772976ef33c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18972: 3f30d254dfce5873961fbf3bc10177086bfdcc7c @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_18972/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  HDRTEST drivers/gpu/drm/i915/display/intel_display_types.h
In file included from ./include/drm/drm_mm.h:49,
                 from ./include/drm/drm_vma_manager.h:26,
                 from ./include/drm/drm_gem.h:40,
                 from ./drivers/gpu/drm/i915/i915_drv.h:55,
                 from ./drivers/gpu/drm/i915/display/intel_display_types.h:46,
                 from <command-line>:
./drivers/gpu/drm/i915/i915_drv.h: In function ‘tgl_revids_get’:
./drivers/gpu/drm/i915/i915_drv.h:1594:9: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 5 has type ‘unsigned int’ [-Werror=format=]
         "Unsupported SOC stepping found %u, using %lu instead\n",
         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/drm/drm_print.h:450:38: note: in definition of macro ‘drm_dbg_kms’
  drm_dev_dbg((drm)->dev, DRM_UT_KMS, fmt, ##__VA_ARGS__)
                                      ^~~
./drivers/gpu/drm/i915/i915_drv.h:1602:8: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 5 has type ‘unsigned int’ [-Werror=format=]
        "Unsupported SOC stepping found %u, using %lu instead\n",
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/drm/drm_print.h:450:38: note: in definition of macro ‘drm_dbg_kms’
  drm_dev_dbg((drm)->dev, DRM_UT_KMS, fmt, ##__VA_ARGS__)
                                      ^~~
cc1: all warnings being treated as errors
drivers/gpu/drm/i915/Makefile:304: recipe for target 'drivers/gpu/drm/i915/display/intel_display_types.hdrtest' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_display_types.hdrtest] Error 1
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1799: recipe for target 'drivers' failed
make: *** [drivers] Error 2


== Linux commits ==

3f30d254dfce drm/i915/tgl: Fix REVID macros for TGL to fetch correct stepping

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/index.html

--===============2678661922836122837==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit


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
<tr><td><b>Series:</b></td><td>drm/i915/tgl: Fix REVID macros for TGL to fetch correct stepping</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84238/">https://patchwork.freedesktop.org/series/84238/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9385 -&gt; Patchwork_18972</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9385 and Patchwork_18972:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 38 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18972 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-tgl-y/igt@prime_vgem@basic-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-tgl-y/igt@prime_vgem@basic-read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-pci-d3-state:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus fi-kbl-r </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9385 -&gt; Patchwork_18972</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9385: 3d37e624f60f40cea80e784617686ae2917e9b01 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5870: 08b13995b85df26a77212e4fb21fd772976ef33c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18972: 3f30d254dfce5873961fbf3bc10177086bfdcc7c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Kernel 32bit build ==</p>
<p>Warning: Kernel 32bit buildtest failed:<br />
https://intel-gfx-ci.01.org/Patchwork_18972/build_32bit.log</p>
<p>CALL    scripts/checksyscalls.sh<br />
  CALL    scripts/atomic/check-atomics.sh<br />
  CHK     include/generated/compile.h<br />
  HDRTEST drivers/gpu/drm/i915/display/intel_display_types.h<br />
In file included from ./include/drm/drm_mm.h:49,<br />
                 from ./include/drm/drm_vma_manager.h:26,<br />
                 from ./include/drm/drm_gem.h:40,<br />
                 from ./drivers/gpu/drm/i915/i915_drv.h:55,<br />
                 from ./drivers/gpu/drm/i915/display/intel_display_types.h:46,<br />
                 from <command-line>:<br />
./drivers/gpu/drm/i915/i915_drv.h: In function ‘tgl_revids_get’:<br />
./drivers/gpu/drm/i915/i915_drv.h:1594:9: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 5 has type ‘unsigned int’ [-Werror=format=]<br />
         "Unsupported SOC stepping found %u, using %lu instead\n",<br />
         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br />
./include/drm/drm_print.h:450:38: note: in definition of macro ‘drm_dbg_kms’<br />
  drm_dev_dbg((drm)-&gt;dev, DRM_UT_KMS, fmt, ##<strong>VA_ARGS</strong>)<br />
                                      ^~~<br />
./drivers/gpu/drm/i915/i915_drv.h:1602:8: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 5 has type ‘unsigned int’ [-Werror=format=]<br />
        "Unsupported SOC stepping found %u, using %lu instead\n",<br />
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br />
./include/drm/drm_print.h:450:38: note: in definition of macro ‘drm_dbg_kms’<br />
  drm_dev_dbg((drm)-&gt;dev, DRM_UT_KMS, fmt, ##<strong>VA_ARGS</strong>)<br />
                                      ^~~<br />
cc1: all warnings being treated as errors<br />
drivers/gpu/drm/i915/Makefile:304: recipe for target 'drivers/gpu/drm/i915/display/intel_display_types.hdrtest' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">4</a>: <strong><em> [drivers/gpu/drm/i915/display/intel_display_types.hdrtest] Error 1<br />
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm/i915' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">3</a>: </em></strong> [drivers/gpu/drm/i915] Error 2<br />
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18972/fi-tgl-y/igt@debugfs_test@read_all_entries.html">2</a>: <strong><em> [drivers/gpu/drm] Error 2<br />
scripts/Makefile.build:500: recipe for target 'drivers/gpu' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/fi-tgl-y/igt@debugfs_test@read_all_entries.html">1</a>: </em></strong> [drivers/gpu] Error 2<br />
Makefile:1799: recipe for target 'drivers' failed<br />
make: *** [drivers] Error 2</p>
<p>== Linux commits ==</p>
<p>3f30d254dfce drm/i915/tgl: Fix REVID macros for TGL to fetch correct stepping</p>

</body>
</html>

--===============2678661922836122837==--

--===============1653267527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1653267527==--
