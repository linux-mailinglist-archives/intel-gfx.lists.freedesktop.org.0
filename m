Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4325F50B4D2
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Apr 2022 12:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D7E10E319;
	Fri, 22 Apr 2022 10:16:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8601710E319;
 Fri, 22 Apr 2022 10:16:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8396DA7DFC;
 Fri, 22 Apr 2022 10:16:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0598784274126842916=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Fri, 22 Apr 2022 10:16:22 -0000
Message-ID: <165062258250.14005.7474426297061059425@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220422075536.2792833-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20220422075536.2792833-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQXR0?=
 =?utf-8?q?ach_and_Set_vrr=5Fenabled_property?=
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

--===============0598784274126842916==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Attach and Set vrr_enabled property
URL   : https://patchwork.freedesktop.org/series/102978/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11540 -> Patchwork_102978v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102978v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102978v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/index.html

Participating hosts (44 -> 44)
------------------------------

  Additional (2): bat-adls-5 fi-kbl-guc 
  Missing    (2): bat-adlm-1 fi-bsw-cyan 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102978v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-7567u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
    - bat-dg1-5:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-guc:         NOTRUN -> [DMESG-WARN][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  * {igt@kms_vrr@negative-basic} (NEW):
    - {bat-dg2-9}:        NOTRUN -> [SKIP][6] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-dg2-9/igt@kms_vrr@negative-basic.html

  * {igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1} (NEW):
    - {fi-tgl-dsi}:       NOTRUN -> [SKIP][7] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-tgl-dsi/igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-rkl-11600/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-bdw-5557u/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-hsw-g3258/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-rkl-guc/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-adl-ddr5/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_suspend@basic-s0@smem:
    - {fi-ehl-2}:         [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
    - {fi-jsl-1}:         [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/fi-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-dg2-8}:        [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html
    - {bat-rpls-1}:       NOTRUN -> [DMESG-WARN][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html

  * igt@runner@aborted:
    - {bat-adls-5}:       NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-adls-5/igt@runner@aborted.html
    - {bat-adlp-6}:       NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-adlp-6/igt@runner@aborted.html
    - {bat-jsl-2}:        NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-jsl-2/igt@runner@aborted.html
    - {bat-jsl-1}:        NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-jsl-1/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11540 and Patchwork_102978v1:

### New IGT tests (9) ###

  * igt@kms_vrr@negative-basic:
    - Statuses : 15 skip(s)
    - Exec time: [0.0] s

  * igt@kms_vrr@parse-vrr-range:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1:
    - Statuses : 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.45] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-lvds-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-vga-1:
    - Statuses : 4 skip(s)
    - Exec time: [0.0] s

  * igt@kms_vrr@parse-vrr-range@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  

Known issues
------------

  Here are the changes found in Patchwork_102978v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-guc:         NOTRUN -> [SKIP][24] ([fdo#109271]) +18 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-guc/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_ringfill@basic-all:
    - bat-dg1-5:          [PASS][25] -> [TIMEOUT][26] ([i915#5709])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/bat-dg1-5/igt@gem_ringfill@basic-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-dg1-5/igt@gem_ringfill@basic-all.html

  * igt@kms_busy@basic:
    - fi-kbl-guc:         NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#1845])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-guc/igt@kms_busy@basic.html

  * igt@kms_chamelium@vga-hpd-fast:
    - fi-kbl-guc:         NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html

  * {igt@kms_vrr@negative-basic} (NEW):
    - fi-bsw-nick:        NOTRUN -> [SKIP][29] ([fdo#109271]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-bsw-nick/igt@kms_vrr@negative-basic.html
    - fi-bwr-2160:        NOTRUN -> [SKIP][30] ([fdo#109271]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-bwr-2160/igt@kms_vrr@negative-basic.html
    - fi-snb-2600:        NOTRUN -> [SKIP][31] ([fdo#109271]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-snb-2600/igt@kms_vrr@negative-basic.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][32] ([fdo#109271]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-hsw-4770/igt@kms_vrr@negative-basic.html
    - fi-bxt-dsi:         NOTRUN -> [SKIP][33] ([fdo#109271]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-bxt-dsi/igt@kms_vrr@negative-basic.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][34] ([fdo#109271]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-elk-e7500/igt@kms_vrr@negative-basic.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][35] ([fdo#109271]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-ivb-3770/igt@kms_vrr@negative-basic.html
    - fi-ilk-650:         NOTRUN -> [SKIP][36] ([fdo#109271]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-ilk-650/igt@kms_vrr@negative-basic.html
    - fi-bsw-n3050:       NOTRUN -> [SKIP][37] ([fdo#109271])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-bsw-n3050/igt@kms_vrr@negative-basic.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][38] ([fdo#109271]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-pnv-d510/igt@kms_vrr@negative-basic.html
    - fi-bsw-kefka:       NOTRUN -> [SKIP][39] ([fdo#109271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-bsw-kefka/igt@kms_vrr@negative-basic.html

  * {igt@kms_vrr@parse-vrr-range} (NEW):
    - fi-blb-e6850:       NOTRUN -> [SKIP][40] ([fdo#109271]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-blb-e6850/igt@kms_vrr@parse-vrr-range.html

  * {igt@kms_vrr@parse-vrr-range@pipe-a-lvds-1} (NEW):
    - fi-snb-2520m:       NOTRUN -> [SKIP][41] ([fdo#109271]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-snb-2520m/igt@kms_vrr@parse-vrr-range@pipe-a-lvds-1.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       NOTRUN -> [FAIL][42] ([i915#5257])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][43] ([i915#5257])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-cfl-8109u/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][44] ([i915#4312] / [i915#5257])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-dg1-5/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][45] ([i915#5257])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][46] ([i915#4312] / [i915#5257])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-guc/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][47] ([i915#5257])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-tgl-1115g4/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][48] ([i915#5257])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-dg1-6/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][49] ([i915#5257])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-cfl-guc/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][50] ([i915#5257])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-glk-j4005/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][51] ([i915#4312] / [i915#5257])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][52] ([i915#5257])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][53] ([i915#5257])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-skl-6700k2/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-apl-guc:         [FAIL][54] ([i915#4312]) -> [FAIL][55] ([i915#5257])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/fi-apl-guc/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5709]: https://gitlab.freedesktop.org/drm/intel/issues/5709


Build changes
-------------

  * IGT: IGT_6445 -> IGTPW_6978
  * Linux: CI_DRM_11540 -> Patchwork_102978v1

  CI-20190529: 20190529
  CI_DRM_11540: fd3e6ac4b9117c9a7c8e30e5c9cf874c27eaf09c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6978: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6978/index.html
  IGT_6445: 8c2ac78f0d80a2af3c7b47dd2df064cdd07f24b6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102978v1: fd3e6ac4b9117c9a7c8e30e5c9cf874c27eaf09c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

acad3e185c52 drm/i915/vrr: Attach and set drm crtc vrr_enabled property
a0b85cf47f2f drm/vrr: Attach vrr_enabled property to the drm crtc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/index.html

--===============0598784274126842916==
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
<tr><td><b>Series:</b></td><td>Attach and Set vrr_enabled property</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102978/">https://patchwork.freedesktop.org/series/102978/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11540 -&gt; Patchwork_102978v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102978v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102978v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/index.html</p>
<h2>Participating hosts (44 -&gt; 44)</h2>
<p>Additional (2): bat-adls-5 fi-kbl-guc <br />
  Missing    (2): bat-adlm-1 fi-bsw-cyan </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102978v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_vrr@negative-basic} (NEW):</p>
<ul>
<li>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-dg2-9/igt@kms_vrr@negative-basic.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1} (NEW):</p>
<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-tgl-dsi/igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/fi-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{bat-adls-5}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-adls-5/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-adlp-6/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-jsl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11540 and Patchwork_102978v1:</p>
<h3>New IGT tests (9)</h3>
<ul>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>Statuses : 15 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-lvds-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102978v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-guc/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/bat-dg1-5/igt@gem_ringfill@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-dg1-5/igt@gem_ringfill@basic-all.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5709">i915#5709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-guc/igt@kms_busy@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_vrr@negative-basic} (NEW):</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-bsw-nick/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-bwr-2160/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-snb-2600/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-hsw-4770/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-bxt-dsi/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-elk-e7500/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-ivb-3770/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-ilk-650/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-bsw-n3050/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-pnv-d510/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-bsw-kefka/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_vrr@parse-vrr-range} (NEW):</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-blb-e6850/igt@kms_vrr@parse-vrr-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_vrr@parse-vrr-range@pipe-a-lvds-1} (NEW):</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-snb-2520m/igt@kms_vrr@parse-vrr-range@pipe-a-lvds-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11540/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v1/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6445 -&gt; IGTPW_6978</li>
<li>Linux: CI_DRM_11540 -&gt; Patchwork_102978v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11540: fd3e6ac4b9117c9a7c8e30e5c9cf874c27eaf09c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6978: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6978/index.html<br />
  IGT_6445: 8c2ac78f0d80a2af3c7b47dd2df064cdd07f24b6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102978v1: fd3e6ac4b9117c9a7c8e30e5c9cf874c27eaf09c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>acad3e185c52 drm/i915/vrr: Attach and set drm crtc vrr_enabled property<br />
a0b85cf47f2f drm/vrr: Attach vrr_enabled property to the drm crtc</p>

</body>
</html>

--===============0598784274126842916==--
