Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B98538D99
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 11:22:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CDB910F693;
	Tue, 31 May 2022 09:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D716910F698;
 Tue, 31 May 2022 09:22:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD71DA0096;
 Tue, 31 May 2022 09:22:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8446652228727968520=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Tue, 31 May 2022 09:22:04 -0000
Message-ID: <165398892482.17347.12844789243662517569@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220517072636.3516381-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20220517072636.3516381-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQXR0?=
 =?utf-8?q?ach_and_Set_vrr=5Fenabled_property_=28rev4=29?=
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

--===============8446652228727968520==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Attach and Set vrr_enabled property (rev4)
URL   : https://patchwork.freedesktop.org/series/102978/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11710 -> Patchwork_102978v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102978v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102978v4, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/index.html

Participating hosts (46 -> 45)
------------------------------

  Additional (2): bat-dg2-9 bat-adls-5 
  Missing    (3): bat-dg2-8 bat-adln-1 bat-adlm-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102978v4:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-dg1-5:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html

  * {igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1} (NEW):
    - {fi-tgl-dsi}:       NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-tgl-dsi/igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-rkl-11600/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-adl-ddr5/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-rkl-guc/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic@flip:
    - {fi-jsl-1}:         [PASS][7] -> [DMESG-WARN][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/fi-jsl-1/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-jsl-1/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - {fi-ehl-2}:         [PASS][9] -> [DMESG-WARN][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/fi-ehl-2/igt@kms_busy@basic@modeset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-ehl-2/igt@kms_busy@basic@modeset.html

  * igt@runner@aborted:
    - {bat-jsl-2}:        NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-jsl-2/igt@runner@aborted.html
    - {bat-jsl-1}:        NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-jsl-1/igt@runner@aborted.html
    - {bat-adls-5}:       NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-adls-5/igt@runner@aborted.html
    - {bat-adlp-6}:       NOTRUN -> [FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-adlp-6/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11710 and Patchwork_102978v4:

### New IGT tests (9) ###

  * igt@kms_vrr@parse-vrr-range@pipe-a-dp-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.05, 0.17] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-dp-2:
    - Statuses : 1 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.14] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1:
    - Statuses : 3 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-edp-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.33, 0.48] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-hdmi-a-1:
    - Statuses : 5 pass(s)
    - Exec time: [0.03, 0.19] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-hdmi-a-2:
    - Statuses : 3 pass(s)
    - Exec time: [0.05, 0.30] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-lvds-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-vga-1:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_vrr@parse-vrr-range@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  

Known issues
------------

  Here are the changes found in Patchwork_102978v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][15] -> [INCOMPLETE][16] ([i915#4785])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][17] ([i915#3921])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][18] -> [DMESG-FAIL][19] ([i915#4528])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_vrr@negative-basic:
    - fi-skl-6600u:       NOTRUN -> [SKIP][20] ([fdo#109271])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-skl-6600u/igt@kms_vrr@negative-basic.html
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][21] ([fdo#109271]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bdw-gvtdvm/igt@kms_vrr@negative-basic.html
    - fi-snb-2520m:       NOTRUN -> [SKIP][22] ([fdo#109271]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-snb-2520m/igt@kms_vrr@negative-basic.html
    - fi-skl-guc:         NOTRUN -> [SKIP][23] ([fdo#109271]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-skl-guc/igt@kms_vrr@negative-basic.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][24] ([fdo#109271])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-kbl-soraka/igt@kms_vrr@negative-basic.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][25] ([fdo#109271]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-ivb-3770/igt@kms_vrr@negative-basic.html
    - fi-hsw-g3258:       NOTRUN -> [SKIP][26] ([fdo#109271]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-hsw-g3258/igt@kms_vrr@negative-basic.html
    - fi-bsw-n3050:       NOTRUN -> [SKIP][27] ([fdo#109271])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bsw-n3050/igt@kms_vrr@negative-basic.html
    - fi-bsw-kefka:       NOTRUN -> [SKIP][28] ([fdo#109271])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bsw-kefka/igt@kms_vrr@negative-basic.html
    - fi-glk-dsi:         NOTRUN -> [SKIP][29] ([fdo#109271]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-glk-dsi/igt@kms_vrr@negative-basic.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][30] ([fdo#109271]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-hsw-4770/igt@kms_vrr@negative-basic.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][31] ([fdo#109271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-glk-j4005/igt@kms_vrr@negative-basic.html
    - fi-snb-2600:        NOTRUN -> [SKIP][32] ([fdo#109271]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-snb-2600/igt@kms_vrr@negative-basic.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][33] ([fdo#109271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-cfl-8109u/igt@kms_vrr@negative-basic.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][34] ([fdo#109271])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-cfl-guc/igt@kms_vrr@negative-basic.html
    - fi-bdw-5557u:       NOTRUN -> [SKIP][35] ([fdo#109271])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bdw-5557u/igt@kms_vrr@negative-basic.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][36] ([fdo#109271])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-cfl-8700k/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@parse-vrr-range:
    - fi-elk-e7500:       NOTRUN -> [SKIP][37] ([fdo#109271]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-elk-e7500/igt@kms_vrr@parse-vrr-range.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][38] ([fdo#109271]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bsw-nick/igt@kms_vrr@parse-vrr-range.html
    - fi-bwr-2160:        NOTRUN -> [SKIP][39] ([fdo#109271]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bwr-2160/igt@kms_vrr@parse-vrr-range.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][40] ([fdo#109271]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-pnv-d510/igt@kms_vrr@parse-vrr-range.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][41] ([fdo#109271]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-kbl-7567u/igt@kms_vrr@parse-vrr-range.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][42] ([fdo#109271]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-kbl-8809g/igt@kms_vrr@parse-vrr-range.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][43] ([fdo#109271]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-blb-e6850/igt@kms_vrr@parse-vrr-range.html

  * {igt@kms_vrr@parse-vrr-range@pipe-a-dp-2} (NEW):
    - fi-skl-6700k2:      NOTRUN -> [SKIP][44] ([fdo#109271]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-skl-6700k2/igt@kms_vrr@parse-vrr-range@pipe-a-dp-2.html

  * {igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1} (NEW):
    - fi-bxt-dsi:         NOTRUN -> [SKIP][45] ([fdo#109271]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bxt-dsi/igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1.html

  * {igt@kms_vrr@parse-vrr-range@pipe-a-vga-1} (NEW):
    - fi-ilk-650:         NOTRUN -> [SKIP][46] ([fdo#109271]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-ilk-650/igt@kms_vrr@parse-vrr-range@pipe-a-vga-1.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][47] ([fdo#109271] / [i915#4312] / [i915#5594])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-hsw-4770/igt@runner@aborted.html
    - bat-adlp-4:         NOTRUN -> [FAIL][48] ([i915#5457])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-adlp-4/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][49] ([i915#5257])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-tgl-u2/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][50] ([fdo#109271] / [i915#2403] / [i915#4312])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-pnv-d510/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@mman:
    - fi-bdw-5557u:       [INCOMPLETE][51] ([i915#5704]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/fi-bdw-5557u/igt@i915_selftest@live@mman.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bdw-5557u/igt@i915_selftest@live@mman.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-tgl-1115g4:      [FAIL][53] ([i915#4312] / [i915#5257]) -> [FAIL][54] ([i915#5257])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/fi-tgl-1115g4/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-tgl-1115g4/igt@runner@aborted.html
    - bat-dg1-6:          [FAIL][55] ([i915#4312] / [i915#5257]) -> [FAIL][56] ([i915#5257])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/bat-dg1-6/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-dg1-6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5457]: https://gitlab.freedesktop.org/drm/intel/issues/5457
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5704]: https://gitlab.freedesktop.org/drm/intel/issues/5704
  [i915#6030]: https://gitlab.freedesktop.org/drm/intel/issues/6030


Build changes
-------------

  * IGT: IGT_6500 -> IGTPW_7196
  * Linux: CI_DRM_11710 -> Patchwork_102978v4

  CI-20190529: 20190529
  CI_DRM_11710: d2798c4b9213f0d14080bdeef58e692a2c01a0bf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_7196: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7196/index.html
  IGT_6500: de4c6076a0f38ad3522b08931748f59d59a925ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102978v4: d2798c4b9213f0d14080bdeef58e692a2c01a0bf @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b98718e3acc0 drm/i915/vrr: Set drm crtc vrr_enabled property
d9f4af35920d drm/vrr: Attach vrr_enabled property to the drm crtc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/index.html

--===============8446652228727968520==
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
<tr><td><b>Series:</b></td><td>Attach and Set vrr_enabled property (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102978/">https://patchwork.freedesktop.org/series/102978/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11710 -&gt; Patchwork_102978v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102978v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102978v4, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/index.html</p>
<h2>Participating hosts (46 -&gt; 45)</h2>
<p>Additional (2): bat-dg2-9 bat-adls-5 <br />
  Missing    (3): bat-dg2-8 bat-adln-1 bat-adlm-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102978v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>{igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1} (NEW):</p>
<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-tgl-dsi/igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/fi-jsl-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-jsl-1/igt@kms_busy@basic@flip.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/fi-ehl-2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-ehl-2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{bat-jsl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-jsl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-adls-5}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-adls-5/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-adlp-6/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11710 and Patchwork_102978v4:</p>
<h3>New IGT tests (9)</h3>
<ul>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-dp-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.05, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1:</p>
<ul>
<li>Statuses : 3 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.33, 0.48] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.03, 0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.05, 0.30] s</li>
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
<li>Statuses : 5 skip(s)</li>
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
<p>Here are the changes found in Patchwork_102978v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-skl-6600u/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bdw-gvtdvm/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-snb-2520m/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-skl-guc/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-kbl-soraka/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-ivb-3770/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-hsw-g3258/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bsw-n3050/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bsw-kefka/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-glk-dsi/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-hsw-4770/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-glk-j4005/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-snb-2600/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-cfl-8109u/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-cfl-guc/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bdw-5557u/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-cfl-8700k/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range:</p>
<ul>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-elk-e7500/igt@kms_vrr@parse-vrr-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bsw-nick/igt@kms_vrr@parse-vrr-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bwr-2160/igt@kms_vrr@parse-vrr-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-pnv-d510/igt@kms_vrr@parse-vrr-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-kbl-7567u/igt@kms_vrr@parse-vrr-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-kbl-8809g/igt@kms_vrr@parse-vrr-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-blb-e6850/igt@kms_vrr@parse-vrr-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_vrr@parse-vrr-range@pipe-a-dp-2} (NEW):</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-skl-6700k2/igt@kms_vrr@parse-vrr-range@pipe-a-dp-2.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1} (NEW):</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bxt-dsi/igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_vrr@parse-vrr-range@pipe-a-vga-1} (NEW):</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-ilk-650/igt@kms_vrr@parse-vrr-range@pipe-a-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5457">i915#5457</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@mman:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/fi-bdw-5557u/igt@i915_selftest@live@mman.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5704">i915#5704</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-bdw-5557u/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11710/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v4/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6500 -&gt; IGTPW_7196</li>
<li>Linux: CI_DRM_11710 -&gt; Patchwork_102978v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11710: d2798c4b9213f0d14080bdeef58e692a2c01a0bf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_7196: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7196/index.html<br />
  IGT_6500: de4c6076a0f38ad3522b08931748f59d59a925ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102978v4: d2798c4b9213f0d14080bdeef58e692a2c01a0bf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b98718e3acc0 drm/i915/vrr: Set drm crtc vrr_enabled property<br />
d9f4af35920d drm/vrr: Attach vrr_enabled property to the drm crtc</p>

</body>
</html>

--===============8446652228727968520==--
