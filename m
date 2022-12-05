Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D8A642E91
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 18:22:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C5A810E25A;
	Mon,  5 Dec 2022 17:22:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E6ED710E25A;
 Mon,  5 Dec 2022 17:22:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0CF9AADE3;
 Mon,  5 Dec 2022 17:22:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8630425383016050975=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Mon, 05 Dec 2022 17:22:15 -0000
Message-ID: <167026093588.24406.4975828832941011214@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221203031454.1280538-1-ashutosh.dixit@intel.com>
In-Reply-To: <20221203031454.1280538-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hwmon=3A_Silence_=22mailbox_access_failed=22_warning_in_s?=
 =?utf-8?q?nb=5Fpcode=5Fread_=28rev2=29?=
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

--===============8630425383016050975==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hwmon: Silence "mailbox access failed" warning in snb_pcode_read (rev2)
URL   : https://patchwork.freedesktop.org/series/111599/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12467 -> Patchwork_111599v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/index.html

Participating hosts (41 -> 44)
------------------------------

  Additional (4): fi-kbl-soraka fi-adl-ddr5 bat-atsm-1 bat-adls-5 
  Missing    (1): bat-dg1-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111599v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_suspend@basic-s3-without-i915:
    - {bat-adls-5}:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_111599v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][2] ([i915#7456])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@debugfs_test@basic-hwmon.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271]) +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html
    - fi-pnv-d510:        [PASS][4] -> [FAIL][5] ([i915#7229])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][8] ([i915#4613]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_tiled_pread_basic:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][9] ([i915#3282])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][10] ([i915#7561])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][11] ([i915#5334])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][12] -> [INCOMPLETE][13] ([i915#4983])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][14] ([i915#1886])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-adl-ddr5:        NOTRUN -> [DMESG-WARN][15] ([i915#5591])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111827])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][17] ([fdo#111827]) +8 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][18] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][19] ([i915#4103])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][20] ([fdo#109285])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_page_flip:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][21] ([i915#1072]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@kms_psr@primary_page_flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][22] ([i915#3555])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-userptr:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][23] ([fdo#109295] / [i915#3301])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][24] ([fdo#109295] / [i915#3291]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][25] ([i915#2867]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_module_load@reload:
    - {bat-rpls-2}:       [DMESG-WARN][27] ([i915#6434]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/bat-rpls-2/igt@i915_module_load@reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/bat-rpls-2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-rpls-2}:       [WARN][29] ([i915#7346]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/bat-rpls-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-8109u:       [DMESG-FAIL][31] ([i915#5334]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][33] ([i915#4785]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-2}:       [INCOMPLETE][35] ([i915#6257]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/bat-rpls-2/igt@i915_selftest@live@requests.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/bat-rpls-2/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - {bat-adln-1}:       [DMESG-FAIL][37] ([i915#6997]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/bat-adln-1/igt@i915_selftest@live@slpc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/bat-adln-1/igt@i915_selftest@live@slpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
  [i915#6166]: https://gitlab.freedesktop.org/drm/intel/issues/6166
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7346]: https://gitlab.freedesktop.org/drm/intel/issues/7346
  [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561


Build changes
-------------

  * Linux: CI_DRM_12467 -> Patchwork_111599v2

  CI-20190529: 20190529
  CI_DRM_12467: 8b1064b1f2700cf5dd6b1ebd677beda7e7bcf2a7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7082: c5bc18db358ec5ec0b26909526f467afb6ed4e68 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111599v2: 8b1064b1f2700cf5dd6b1ebd677beda7e7bcf2a7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1451de5ef463 drm/i915/hwmon: Silence "mailbox access failed" warning in snb_pcode_read

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/index.html

--===============8630425383016050975==
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
<tr><td><b>Series:</b></td><td>drm/i915/hwmon: Silence &quot;mailbox access failed&quot; warning in snb_pcode_read (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111599/">https://patchwork.freedesktop.org/series/111599/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12467 -&gt; Patchwork_111599v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/index.html</p>
<h2>Participating hosts (41 -&gt; 44)</h2>
<p>Additional (4): fi-kbl-soraka fi-adl-ddr5 bat-atsm-1 bat-adls-5 <br />
  Missing    (1): bat-dg1-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_111599v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>{bat-adls-5}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111599v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +7 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-adl-ddr5/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/bat-rpls-2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6434">i915#6434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/bat-rpls-2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7346">i915#7346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/bat-rpls-2/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6257">i915#6257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/bat-adln-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12467 -&gt; Patchwork_111599v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12467: 8b1064b1f2700cf5dd6b1ebd677beda7e7bcf2a7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7082: c5bc18db358ec5ec0b26909526f467afb6ed4e68 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111599v2: 8b1064b1f2700cf5dd6b1ebd677beda7e7bcf2a7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1451de5ef463 drm/i915/hwmon: Silence "mailbox access failed" warning in snb_pcode_read</p>

</body>
</html>

--===============8630425383016050975==--
