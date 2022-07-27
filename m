Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E57582284
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 10:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24567C3213;
	Wed, 27 Jul 2022 08:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C777EC320D;
 Wed, 27 Jul 2022 08:54:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0D84AA0EA;
 Wed, 27 Jul 2022 08:54:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5784087867677090046=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Wed, 27 Jul 2022 08:54:15 -0000
Message-ID: <165891205578.21595.10760198971921533771@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220713092702.28946-1-shawn.c.lee@intel.com>
In-Reply-To: <20220713092702.28946-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_clear_plane_color_ctl_setting_when_turn_full_plane_off?=
 =?utf-8?q?_=28rev3=29?=
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

--===============5784087867677090046==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: clear plane color ctl setting when turn full plane off (rev3)
URL   : https://patchwork.freedesktop.org/series/106292/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11946 -> Patchwork_106292v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_106292v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_106292v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/index.html

Participating hosts (38 -> 37)
------------------------------

  Additional (2): fi-hsw-4770 bat-jsl-1 
  Missing    (3): fi-rkl-11600 fi-bdw-samus bat-dg1-5 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106292v3:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:
    - fi-adl-ddr5:        [PASS][1] -> [DMESG-WARN][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:
    - fi-rkl-guc:         [PASS][3] -> [DMESG-WARN][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:
    - {bat-rplp-1}:       [PASS][5] -> [DMESG-WARN][6] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:
    - {bat-rpls-2}:       NOTRUN -> [DMESG-WARN][7] +15 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-rpls-2/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
    - {fi-jsl-1}:         [PASS][8] -> [DMESG-WARN][9] +4 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
    - {bat-rpls-1}:       [PASS][10] -> [DMESG-WARN][11] +5 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-rpls-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
    - {fi-ehl-2}:         [PASS][12] -> [DMESG-WARN][13] +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-ehl-2/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-ehl-2/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - {bat-jsl-3}:        [PASS][14] -> [DMESG-WARN][15] +36 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-jsl-1}:        NOTRUN -> [DMESG-WARN][16] +36 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-jsl-1/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_frontbuffer_tracking@basic:
    - {bat-dg2-9}:        [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1:
    - {bat-jsl-3}:        [PASS][19] -> [DMESG-FAIL][20] +12 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-jsl-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-jsl-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:
    - {bat-jsl-1}:        NOTRUN -> [DMESG-FAIL][21] +13 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_106292v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3012])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bdw-gvtdvm:      [PASS][23] -> [DMESG-FAIL][24] ([i915#6217])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-bdw-gvtdvm/igt@i915_selftest@live@late_gt_pm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-bdw-gvtdvm/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][25] -> [DMESG-FAIL][26] ([i915#4528])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       [PASS][27] -> [INCOMPLETE][28] ([i915#146])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][29] ([fdo#109271]) +9 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#1072]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@runner@aborted:
    - fi-blb-e6850:       NOTRUN -> [FAIL][32] ([fdo#109271] / [i915#2403] / [i915#4312])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-blb-e6850/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][33] ([i915#4312])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-bdw-gvtdvm/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-guc:         [FAIL][34] ([i915#6253]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-kbl-guc/igt@debugfs_test@read_all_entries.html

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][36] ([i915#2582]) -> [PASS][37] +4 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@fbdev@read.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-adlm-1}:       [DMESG-WARN][38] ([i915#2867]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gtt:
    - {bat-dg2-9}:        [DMESG-WARN][40] ([i915#5763]) -> [PASS][41] +4 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-dg2-9/igt@i915_selftest@live@gtt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-dg2-9/igt@i915_selftest@live@gtt.html

  * igt@kms_frontbuffer_tracking@basic:
    - {bat-rpls-2}:       [SKIP][42] ([i915#1849]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - {bat-rpls-2}:       [SKIP][44] ([fdo#109295] / [i915#1845] / [i915#3708]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#5950]: https://gitlab.freedesktop.org/drm/intel/issues/5950
  [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
  [i915#6217]: https://gitlab.freedesktop.org/drm/intel/issues/6217
  [i915#6253]: https://gitlab.freedesktop.org/drm/intel/issues/6253


Build changes
-------------

  * Linux: CI_DRM_11946 -> Patchwork_106292v3

  CI-20190529: 20190529
  CI_DRM_11946: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106292v3: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

681b5d5049df drm/i915/display: clear plane color ctl setting when turn full plane off

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/index.html

--===============5784087867677090046==
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
<tr><td><b>Series:</b></td><td>drm/i915: clear plane color ctl setting when turn full plane off (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106292/">https://patchwork.freedesktop.org/series/106292/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11946 -&gt; Patchwork_106292v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_106292v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_106292v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Additional (2): fi-hsw-4770 bat-jsl-1 <br />
  Missing    (3): fi-rkl-11600 fi-bdw-samus bat-dg1-5 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_106292v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">DMESG-WARN</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>
<p>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-rpls-2/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">DMESG-WARN</a> +15 similar issues</p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">DMESG-WARN</a> +4 similar issues</p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-rpls-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">DMESG-WARN</a> +5 similar issues</p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-ehl-2/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-ehl-2/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">DMESG-WARN</a> +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-jsl-1/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1:</p>
<ul>
<li>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-jsl-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-jsl-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html">DMESG-FAIL</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:</p>
<ul>
<li>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html">DMESG-FAIL</a> +13 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106292v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-bdw-gvtdvm/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-bdw-gvtdvm/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6217">i915#6217</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6253">i915#6253</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-dg2-9/igt@i915_selftest@live@gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5763">i915#5763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-dg2-9/igt@i915_selftest@live@gtt.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106292v3/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11946 -&gt; Patchwork_106292v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11946: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106292v3: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>681b5d5049df drm/i915/display: clear plane color ctl setting when turn full plane off</p>

</body>
</html>

--===============5784087867677090046==--
