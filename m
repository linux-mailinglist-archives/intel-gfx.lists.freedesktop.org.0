Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D7D532916
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 13:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBFD310EE9B;
	Tue, 24 May 2022 11:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 700BB10EE6A;
 Tue, 24 May 2022 11:34:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67AA1AADD1;
 Tue, 24 May 2022 11:34:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1924539288149037954=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 24 May 2022 11:34:05 -0000
Message-ID: <165339204539.14320.1829873293726340711@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1653381821.git.jani.nikula@intel.com>
In-Reply-To: <cover.1653381821.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_expand_on_struct_drm=5Fedid_usage?=
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

--===============1924539288149037954==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: expand on struct drm_edid usage
URL   : https://patchwork.freedesktop.org/series/104309/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11693 -> Patchwork_104309v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_104309v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_104309v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/index.html

Participating hosts (44 -> 45)
------------------------------

  Additional (2): fi-icl-u2 bat-dg1-5 
  Missing    (1): fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104309v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-guc:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-skl-guc/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_104309v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@write:
    - bat-dg1-5:          NOTRUN -> [SKIP][3] ([i915#2582]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@fbdev@write.html

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-u2:          NOTRUN -> [SKIP][4] ([i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][5] ([i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_mmap@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][6] ([i915#4083])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@gem_mmap@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][7] ([i915#4077]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][8] ([i915#4079]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - bat-dg1-5:          NOTRUN -> [SKIP][9] ([i915#1155])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [PASS][10] -> [DMESG-WARN][11] ([i915#62]) +16 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          NOTRUN -> [DMESG-FAIL][12] ([i915#4494] / [i915#4957])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-6:          [PASS][13] -> [DMESG-FAIL][14] ([i915#4494] / [i915#4957])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [PASS][15] -> [INCOMPLETE][16] ([i915#3921])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [PASS][17] -> [DMESG-FAIL][18] ([i915#3428])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-dg1-5:          NOTRUN -> [INCOMPLETE][19] ([i915#6011])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-icl-u2:          NOTRUN -> [SKIP][20] ([i915#5903])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-5:          NOTRUN -> [SKIP][21] ([i915#4215])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - bat-dg1-5:          NOTRUN -> [SKIP][22] ([i915#4212]) +7 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_busy@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][23] ([i915#4303])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_busy@basic.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-blb-e6850:       NOTRUN -> [SKIP][24] ([fdo#109271])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][25] ([fdo#111827]) +8 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
    - bat-dg1-5:          NOTRUN -> [SKIP][26] ([fdo#111827]) +7 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          NOTRUN -> [SKIP][27] ([fdo#109278]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg1-5:          NOTRUN -> [SKIP][28] ([i915#4103] / [i915#4213]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-dg1-5:          NOTRUN -> [SKIP][29] ([i915#4078]) +21 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
    - bat-adlp-4:         [PASS][30] -> [DMESG-WARN][31] ([i915#3576])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg1-5:          NOTRUN -> [SKIP][32] ([fdo#109285])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html
    - fi-icl-u2:          NOTRUN -> [SKIP][33] ([fdo#109285])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_page_flip:
    - bat-dg1-5:          NOTRUN -> [SKIP][34] ([i915#1072] / [i915#4078]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_psr@primary_page_flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-icl-u2:          NOTRUN -> [SKIP][35] ([i915#3555])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-5:          NOTRUN -> [SKIP][36] ([i915#3555])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg1-5:          NOTRUN -> [SKIP][37] ([i915#3708] / [i915#4077]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][38] ([i915#3301])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - bat-dg1-5:          NOTRUN -> [SKIP][39] ([i915#3708] / [i915#4873])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - bat-dg1-5:          NOTRUN -> [SKIP][40] ([i915#3708]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@prime_vgem@basic-write.html

  * igt@runner@aborted:
    - bat-dg1-5:          NOTRUN -> [FAIL][41] ([i915#4312] / [i915#5257])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][42] ([fdo#109271] / [i915#3428] / [i915#4312])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][43] ([i915#4528]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - bat-adlp-4:         [DMESG-WARN][45] ([i915#3576]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/bat-adlp-4/igt@kms_flip@basic-plain-flip@a-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-adlp-4/igt@kms_flip@basic-plain-flip@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4303]: https://gitlab.freedesktop.org/drm/intel/issues/4303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5356]: https://gitlab.freedesktop.org/drm/intel/issues/5356
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Build changes
-------------

  * Linux: CI_DRM_11693 -> Patchwork_104309v1

  CI-20190529: 20190529
  CI_DRM_11693: 14289bc81309b2126f4ba9f339837dacf34ddf9c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6485: 51663917b40d36086cc1c555ce4f67b22937694d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104309v1: 14289bc81309b2126f4ba9f339837dacf34ddf9c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

405f61faeeda drm/todo: add entry for converting the subsystem to struct drm_edid
c681cc2aaf5a drm/edid: take HF-EEODB extension count into account
f055cb8a1ecd drm/edid: add HF-EEODB support to EDID read and allocation
af8177c60fa9 drm/edid: do invalid block filtering in-place
4ff3b4c602da drm/i915/edid: convert DP, HDMI and LVDS to drm_edid
67286814782f drm/edid: add drm_edid_raw() to access the raw EDID data
cc62659b9175 drm/probe-helper: add .get_edid() callback
093174764385 drm/probe-helper: make .get_modes() optional, add default action
42fe37d2b754 drm/probe-helper: abstract .get_modes() connector helper call
86541a011dae drm/edid: add drm_edid_connector_update()
336362b1c7de drm/edid: add new interfaces around struct drm_edid
fc34398be5a0 drm/edid: keep track of alloc size in drm_do_get_edid()
239e9dcf8e3a drm/edid: add block count and data helper functions for drm_edid

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/index.html

--===============1924539288149037954==
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
<tr><td><b>Series:</b></td><td>drm/edid: expand on struct drm_edid usage</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104309/">https://patchwork.freedesktop.org/series/104309/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11693 -&gt; Patchwork_104309v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_104309v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_104309v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/index.html</p>
<h2>Participating hosts (44 -&gt; 45)</h2>
<p>Additional (2): fi-icl-u2 bat-dg1-5 <br />
  Missing    (1): fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_104309v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104309v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@i915_suspend@basic-s2idle-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6011">i915#6011</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5903">i915#5903</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4303">i915#4303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +2 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-edp1:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/bat-adlp-4/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v1/bat-adlp-4/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11693 -&gt; Patchwork_104309v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11693: 14289bc81309b2126f4ba9f339837dacf34ddf9c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6485: 51663917b40d36086cc1c555ce4f67b22937694d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104309v1: 14289bc81309b2126f4ba9f339837dacf34ddf9c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>405f61faeeda drm/todo: add entry for converting the subsystem to struct drm_edid<br />
c681cc2aaf5a drm/edid: take HF-EEODB extension count into account<br />
f055cb8a1ecd drm/edid: add HF-EEODB support to EDID read and allocation<br />
af8177c60fa9 drm/edid: do invalid block filtering in-place<br />
4ff3b4c602da drm/i915/edid: convert DP, HDMI and LVDS to drm_edid<br />
67286814782f drm/edid: add drm_edid_raw() to access the raw EDID data<br />
cc62659b9175 drm/probe-helper: add .get_edid() callback<br />
093174764385 drm/probe-helper: make .get_modes() optional, add default action<br />
42fe37d2b754 drm/probe-helper: abstract .get_modes() connector helper call<br />
86541a011dae drm/edid: add drm_edid_connector_update()<br />
336362b1c7de drm/edid: add new interfaces around struct drm_edid<br />
fc34398be5a0 drm/edid: keep track of alloc size in drm_do_get_edid()<br />
239e9dcf8e3a drm/edid: add block count and data helper functions for drm_edid</p>

</body>
</html>

--===============1924539288149037954==--
