Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DED5880E3
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 19:18:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C15992ADC;
	Tue,  2 Aug 2022 17:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D5DF592A98;
 Tue,  2 Aug 2022 17:18:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8DC2A9932;
 Tue,  2 Aug 2022 17:18:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3025178157180980280=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Tue, 02 Aug 2022 17:18:28 -0000
Message-ID: <165946070879.13190.2300398175808274983@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220802153103.26653-1-shawn.c.lee@intel.com>
In-Reply-To: <20220802153103.26653-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_avoid_abnormal_pixel_output_when_turn_eDP_disp?=
 =?utf-8?q?lay_off?=
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

--===============3025178157180980280==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: avoid abnormal pixel output when turn eDP display off
URL   : https://patchwork.freedesktop.org/series/106910/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11963 -> Patchwork_106910v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_106910v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_106910v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/index.html

Participating hosts (47 -> 43)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-icl-u2 bat-jsl-1 fi-hsw-4200u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106910v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:
    - fi-adl-ddr5:        [PASS][1] -> [DMESG-WARN][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
    - fi-kbl-x1275:       [PASS][3] -> [DMESG-WARN][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-WARN][6] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
    - fi-apl-guc:         [PASS][7] -> [DMESG-WARN][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
    - fi-rkl-guc:         [PASS][9] -> [DMESG-WARN][10] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
    - fi-cfl-8700k:       [PASS][11] -> [DMESG-WARN][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:
    - fi-rkl-11600:       [PASS][13] -> [DMESG-WARN][14] +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
    - fi-cfl-guc:         [PASS][15] -> [DMESG-WARN][16] +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html

  * igt@kms_flip@basic-plain-flip@c-hdmi-a2:
    - bat-dg1-6:          [PASS][17] -> [DMESG-WARN][18] +55 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-dg1-6/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-dg1-6/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@module-reload:
    - {bat-dg2-9}:        [WARN][19] ([i915#6498]) -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-dg2-9/igt@i915_pm_rpm@module-reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-dg2-9/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:
    - {fi-ehl-2}:         [PASS][21] -> [DMESG-WARN][22] +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-ehl-2/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-ehl-2/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:
    - {bat-rplp-1}:       [PASS][23] -> [DMESG-WARN][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
    - {bat-rpls-2}:       [PASS][25] -> [DMESG-WARN][26] +8 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-rpls-2/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-rpls-2/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:
    - {fi-jsl-1}:         [PASS][27] -> [DMESG-WARN][28] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - {bat-jsl-3}:        [PASS][29] -> [DMESG-WARN][30] +35 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - {bat-dg2-9}:        [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1:
    - {bat-jsl-3}:        [PASS][33] -> [DMESG-FAIL][34] +13 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-jsl-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-jsl-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3:
    - {bat-dg2-9}:        [PASS][35] -> [DMESG-WARN][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html

  
Known issues
------------

  Here are the changes found in Patchwork_106910v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][37] -> [INCOMPLETE][38] ([i915#5847])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [PASS][39] -> [INCOMPLETE][40] ([i915#5982])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:
    - fi-skl-6600u:       [PASS][41] -> [DMESG-WARN][42] ([i915#118]) +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
    - fi-skl-guc:         [PASS][43] -> [DMESG-WARN][44] ([i915#118]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-skl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-skl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:
    - fi-glk-j4005:       [PASS][45] -> [DMESG-WARN][46] ([i915#118]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-skl-6700k2:      [PASS][47] -> [DMESG-WARN][48] ([i915#118]) +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-skl-6700k2/igt@kms_frontbuffer_tracking@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-skl-6700k2/igt@kms_frontbuffer_tracking@basic.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][49] ([i915#4312])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][50] ([fdo#109271] / [i915#4312])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][51] ([i915#4494] / [i915#4957]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-6:          [DMESG-FAIL][53] ([i915#4494] / [i915#4957]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - fi-rkl-guc:         [DMESG-WARN][55] -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-rkl-guc/igt@i915_selftest@live@hugepages.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-rkl-guc/igt@i915_selftest@live@hugepages.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       [INCOMPLETE][57] ([i915#146]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [FAIL][59] ([i915#6298]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5847]: https://gitlab.freedesktop.org/drm/intel/issues/5847
  [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6498]: https://gitlab.freedesktop.org/drm/intel/issues/6498


Build changes
-------------

  * Linux: CI_DRM_11963 -> Patchwork_106910v1

  CI-20190529: 20190529
  CI_DRM_11963: d0b86a71849272bc47e5434cd0b0c428c1c6b2f5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6609: 541d11665dc829f60c84061422adce6b44fa2aef @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106910v1: d0b86a71849272bc47e5434cd0b0c428c1c6b2f5 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

26c4a04326e1 drm/i915/display: avoid abnormal pixel output when turn eDP display off

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/index.html

--===============3025178157180980280==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: avoid abnormal pixel output when turn eDP display off</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106910/">https://patchwork.freedesktop.org/series/106910/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11963 -&gt; Patchwork_106910v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_106910v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_106910v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/index.html</p>
<h2>Participating hosts (47 -&gt; 43)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-icl-u2 bat-jsl-1 fi-hsw-4200u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_106910v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +4 similar issues</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">DMESG-WARN</a> +4 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-hdmi-a2:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-dg1-6/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-dg1-6/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html">DMESG-WARN</a> +55 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-dg2-9/igt@i915_pm_rpm@module-reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6498">i915#6498</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-dg2-9/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-ehl-2/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-ehl-2/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-rpls-2/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-rpls-2/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">DMESG-WARN</a> +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">DMESG-WARN</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">DMESG-WARN</a> +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1:</p>
<ul>
<li>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-jsl-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-jsl-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html">DMESG-FAIL</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html">DMESG-WARN</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106910v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5847">i915#5847</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>) +4 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-skl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-skl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-skl-6700k2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-skl-6700k2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-rkl-guc/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-rkl-guc/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11963/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11963 -&gt; Patchwork_106910v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11963: d0b86a71849272bc47e5434cd0b0c428c1c6b2f5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6609: 541d11665dc829f60c84061422adce6b44fa2aef @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106910v1: d0b86a71849272bc47e5434cd0b0c428c1c6b2f5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>26c4a04326e1 drm/i915/display: avoid abnormal pixel output when turn eDP display off</p>

</body>
</html>

--===============3025178157180980280==--
