Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5183D568841
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 14:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 848B511AAB7;
	Wed,  6 Jul 2022 12:25:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3315A10FDD2;
 Wed,  6 Jul 2022 12:25:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2A1DDA73C7;
 Wed,  6 Jul 2022 12:25:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3753153401675313193=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Wed, 06 Jul 2022 12:25:28 -0000
Message-ID: <165711032813.1546.6687940352677469847@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220706114345.1128018-1-alexander.usyskin@intel.com>
In-Reply-To: <20220706114345.1128018-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgR1ND?=
 =?utf-8?q?_support_for_XeHP_SDV_and_DG2_platforms_=28rev5=29?=
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

--===============3753153401675313193==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GSC support for XeHP SDV and DG2 platforms (rev5)
URL   : https://patchwork.freedesktop.org/series/102339/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11850 -> Patchwork_102339v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/index.html

Participating hosts (47 -> 41)
------------------------------

  Additional (1): fi-bxt-dsi 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u bat-adlm-1 bat-adlp-4 fi-ctg-p8600 bat-jsl-3 bat-rpls-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102339v5:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {bat-rpls-2}:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-rpls-2/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-rpls-2/igt@i915_module_load@reload.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11850 and Patchwork_102339v5:

### New IGT tests (9) ###

  * igt@gem_exec_basic@basic@bcs0-lmem0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_basic@basic@rcs0-lmem0:
    - Statuses : 4 pass(s)
    - Exec time: [0.00] s

  * igt@gem_exec_basic@basic@vcs0-lmem0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec_basic@basic@vcs1-lmem0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec_basic@basic@vecs0-lmem0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2:
    - Statuses : 2 pass(s)
    - Exec time: [0.62, 0.74] s

  * igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2:
    - Statuses : 2 pass(s)
    - Exec time: [0.58, 0.73] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-hdmi-a2:
    - Statuses : 2 pass(s)
    - Exec time: [0.90, 1.16] s

  * igt@kms_flip@basic-plain-flip@d-hdmi-a2:
    - Statuses : 2 pass(s)
    - Exec time: [0.62, 0.72] s

  

Known issues
------------

  Here are the changes found in Patchwork_102339v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-bxt-dsi/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_tiled_blits@basic:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][5] ([fdo#109271]) +12 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-bxt-dsi/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [PASS][6] -> [DMESG-FAIL][7] ([i915#4494] / [i915#4957])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][8] -> [DMESG-FAIL][9] ([i915#4528])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-bxt-dsi/igt@kms_chamelium@hdmi-edid-read.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][11] ([i915#2582]) -> [PASS][12] +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-rpls-2/igt@fbdev@read.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-rpls-2/igt@fbdev@read.html

  * igt@i915_selftest@live@client:
    - {bat-dg2-9}:        [DMESG-WARN][13] ([i915#5763]) -> [PASS][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-dg2-9/igt@i915_selftest@live@client.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-dg2-9/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [DMESG-WARN][15] ([i915#5904]) -> [PASS][16] +34 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-cfl-8109u:       [DMESG-WARN][17] ([i915#5904] / [i915#62]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_addfb_basic@too-high:
    - fi-cfl-8109u:       [DMESG-WARN][19] ([i915#62]) -> [PASS][20] +82 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html

  * igt@kms_busy@basic@modeset:
    - {bat-adln-1}:       [DMESG-WARN][21] ([i915#3576]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-adln-1/igt@kms_busy@basic@modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-adln-1/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][23] ([i915#3576]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - {bat-rpls-2}:       [SKIP][25] ([i915#1849]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - {bat-rpls-2}:       [SKIP][27] ([fdo#109295] / [i915#1845] / [i915#3708]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#5904]: https://gitlab.freedesktop.org/drm/intel/issues/5904
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6297]: https://gitlab.freedesktop.org/drm/intel/issues/6297


Build changes
-------------

  * Linux: CI_DRM_11850 -> Patchwork_102339v5

  CI-20190529: 20190529
  CI_DRM_11850: 295e0e9b3a5d5ef71096cfac07684be807f5a8c0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6555: 1a3ffecd400b8f82c35745fa2e07992f6bdeede2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102339v5: 295e0e9b3a5d5ef71096cfac07684be807f5a8c0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

fe489ff16e0f HAX: drm/i915: force INTEL_MEI_GSC on for CI
adc2e0cdff79 drm/i915/gsc: allocate extended operational memory in LMEM
a54cd3e5cf2e mei: debugfs: add pxp mode to devstate in debugfs
b7815328436b mei: gsc: add transition to PXP mode in resume flow
681b1fb79a65 mei: gsc: setup gsc extended operational memory
2f4363c50800 mei: mkhi: add memory ready command
255c14d51ae8 mei: bus: export common mkhi definitions into a separate header
2692a974ce85 mei: extend timeouts on slow devices.
8fb24855769d mei: gsc: wait for reset thread on stop
4112cc0582b4 mei: gsc: use polling instead of interrupts
51a3966a1c86 drm/i915/gsc: add GSC XeHP SDV platform definition
f1c2ac15a286 drm/i915/gsc: add slow_fw flag to the gsc device definition
38bfeba72c07 drm/i915/gsc: add slow_fw flag to the mei auxiliary device
a669e45687ca drm/i915/gsc: skip irq initialization if using polling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/index.html

--===============3753153401675313193==
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
<tr><td><b>Series:</b></td><td>GSC support for XeHP SDV and DG2 platforms (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102339/">https://patchwork.freedesktop.org/series/102339/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11850 -&gt; Patchwork_102339v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/index.html</p>
<h2>Participating hosts (47 -&gt; 41)</h2>
<p>Additional (1): fi-bxt-dsi <br />
  Missing    (7): fi-ilk-m540 fi-hsw-4200u bat-adlm-1 bat-adlp-4 fi-ctg-p8600 bat-jsl-3 bat-rpls-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102339v5:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-rpls-2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-rpls-2/igt@i915_module_load@reload.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11850 and Patchwork_102339v5:</p>
<h3>New IGT tests (9)</h3>
<ul>
<li>
<p>igt@gem_exec_basic@basic@bcs0-lmem0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic@rcs0-lmem0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic@vcs0-lmem0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic@vcs1-lmem0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic@vecs0-lmem0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.62, 0.74] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.58, 0.73] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-hdmi-a2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.90, 1.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@d-hdmi-a2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.62, 0.72] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102339v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-bxt-dsi/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-bxt-dsi/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-bxt-dsi/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-dg2-9/igt@i915_selftest@live@client.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5763">i915#5763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-dg2-9/igt@i915_selftest@live@client.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">PASS</a> +82 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-adln-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-adln-1/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11850/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v5/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11850 -&gt; Patchwork_102339v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11850: 295e0e9b3a5d5ef71096cfac07684be807f5a8c0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6555: 1a3ffecd400b8f82c35745fa2e07992f6bdeede2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102339v5: 295e0e9b3a5d5ef71096cfac07684be807f5a8c0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>fe489ff16e0f HAX: drm/i915: force INTEL_MEI_GSC on for CI<br />
adc2e0cdff79 drm/i915/gsc: allocate extended operational memory in LMEM<br />
a54cd3e5cf2e mei: debugfs: add pxp mode to devstate in debugfs<br />
b7815328436b mei: gsc: add transition to PXP mode in resume flow<br />
681b1fb79a65 mei: gsc: setup gsc extended operational memory<br />
2f4363c50800 mei: mkhi: add memory ready command<br />
255c14d51ae8 mei: bus: export common mkhi definitions into a separate header<br />
2692a974ce85 mei: extend timeouts on slow devices.<br />
8fb24855769d mei: gsc: wait for reset thread on stop<br />
4112cc0582b4 mei: gsc: use polling instead of interrupts<br />
51a3966a1c86 drm/i915/gsc: add GSC XeHP SDV platform definition<br />
f1c2ac15a286 drm/i915/gsc: add slow_fw flag to the gsc device definition<br />
38bfeba72c07 drm/i915/gsc: add slow_fw flag to the mei auxiliary device<br />
a669e45687ca drm/i915/gsc: skip irq initialization if using polling</p>

</body>
</html>

--===============3753153401675313193==--
