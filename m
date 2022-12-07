Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0A76457A3
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 11:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23A8010E38D;
	Wed,  7 Dec 2022 10:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5CF4B10E38D;
 Wed,  7 Dec 2022 10:23:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A330A010C;
 Wed,  7 Dec 2022 10:23:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6550496425504113193=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 07 Dec 2022 10:23:17 -0000
Message-ID: <167040859736.14513.17034736892071624720@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1670405587.git.jani.nikula@intel.com>
In-Reply-To: <cover.1670405587.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/backlight=3A_drop_implict_dev=5Fpriv_etc=2E_=28rev2=29?=
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

--===============6550496425504113193==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/backlight: drop implict dev_priv etc. (rev2)
URL   : https://patchwork.freedesktop.org/series/111628/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12476 -> Patchwork_111628v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/index.html

Participating hosts (30 -> 43)
------------------------------

  Additional (14): fi-kbl-soraka bat-kbl-2 bat-adls-5 bat-adlp-9 fi-bsw-n3050 bat-dg1-5 bat-dg2-8 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-kbl-8809g bat-jsl-3 bat-dg2-11 fi-bsw-nick 
  Missing    (1): fi-tgl-dsi 

Known issues
------------

  Here are the changes found in Patchwork_111628v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-4:         NOTRUN -> [SKIP][1] ([i915#7456])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@debugfs_test@basic-hwmon.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271]) +7 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html
    - fi-pnv-d510:        [PASS][3] -> [FAIL][4] ([i915#7229])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12476/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][8] ([fdo#109271]) +39 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-adlp-4:         NOTRUN -> [SKIP][9] ([i915#4613]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_mmap@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][10] ([i915#4083])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@gem_mmap@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][11] ([i915#4077]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][12] ([i915#4079]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@gem_tiled_pread_basic.html
    - bat-adlp-4:         NOTRUN -> [SKIP][13] ([i915#3282])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@load:
    - fi-bsw-n3050:       NOTRUN -> [DMESG-WARN][14] ([i915#7430])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-bsw-n3050/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][15] ([i915#6899])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-8809g/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][16] ([fdo#109271]) +24 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-8809g/igt@i915_pm_backlight@basic-brightness.html
    - bat-dg1-5:          NOTRUN -> [SKIP][17] ([i915#7561])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rps@basic-api:
    - bat-adlp-4:         NOTRUN -> [SKIP][18] ([i915#6621])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@i915_pm_rps@basic-api.html
    - bat-dg1-5:          NOTRUN -> [SKIP][19] ([i915#6621])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][20] ([i915#5334])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][21] ([i915#1886])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-4:         NOTRUN -> [INCOMPLETE][22] ([i915#7308] / [i915#7348])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@i915_selftest@live@migrate.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-dg1-5:          NOTRUN -> [SKIP][23] ([i915#4212]) +7 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-5:          NOTRUN -> [SKIP][24] ([i915#4215])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_chamelium@dp-crc-fast:
    - bat-adlp-4:         NOTRUN -> [SKIP][25] ([fdo#111827]) +7 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html
    - bat-dg1-5:          NOTRUN -> [SKIP][26] ([fdo#111827]) +8 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-8809g/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-bsw-nick:        NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-bsw-nick/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - bat-adlp-4:         NOTRUN -> [SKIP][30] ([i915#4103])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - bat-dg1-5:          NOTRUN -> [SKIP][31] ([i915#4103] / [i915#4213])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adlp-4:         NOTRUN -> [SKIP][32] ([i915#4093]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg1-5:          NOTRUN -> [SKIP][33] ([fdo#109285])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_page_flip:
    - bat-dg1-5:          NOTRUN -> [SKIP][34] ([i915#1072] / [i915#4078]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_psr@primary_page_flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg1-5:          NOTRUN -> [SKIP][35] ([i915#3555])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlp-4:         NOTRUN -> [SKIP][36] ([i915#3555] / [i915#4579])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-dg1-5:          NOTRUN -> [SKIP][37] ([i915#3708]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - bat-dg1-5:          NOTRUN -> [SKIP][38] ([i915#3708] / [i915#4077]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-userptr:
    - bat-adlp-4:         NOTRUN -> [SKIP][39] ([fdo#109295] / [i915#3301] / [i915#3708])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@prime_vgem@basic-userptr.html
    - bat-dg1-5:          NOTRUN -> [SKIP][40] ([i915#3708] / [i915#4873])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - bat-adlp-4:         NOTRUN -> [SKIP][41] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@prime_vgem@basic-write.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][42] ([i915#4312])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][43] ([i915#4312])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-bsw-n3050/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][44] ([i915#4312] / [i915#4991])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-8809g/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][45] ([i915#2582]) -> [PASS][46] +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12476/bat-rpls-2/igt@fbdev@read.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][47] ([i915#2867]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12476/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_module_load@reload:
    - {bat-rpls-2}:       [INCOMPLETE][49] ([i915#6434]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12476/bat-rpls-2/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-rpls-2/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {bat-jsl-1}:        [DMESG-FAIL][51] ([i915#5334]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12476/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6899]: https://gitlab.freedesktop.org/drm/intel/issues/6899
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7308]: https://gitlab.freedesktop.org/drm/intel/issues/7308
  [i915#7348]: https://gitlab.freedesktop.org/drm/intel/issues/7348
  [i915#7430]: https://gitlab.freedesktop.org/drm/intel/issues/7430
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7498]: https://gitlab.freedesktop.org/drm/intel/issues/7498
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561


Build changes
-------------

  * Linux: CI_DRM_12476 -> Patchwork_111628v2

  CI-20190529: 20190529
  CI_DRM_12476: e76e37e7dff49e6cb61ca9b8ccf913153aaccca7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7084: ec81855d36887dfe81d5ff513ed6d512773da37e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111628v2: e76e37e7dff49e6cb61ca9b8ccf913153aaccca7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

acbdcc39806a drm/i915/backlight: convert DRM_DEBUG_KMS() to drm_dbg_kms()
48963e19c7b3 drm/i915/backlight: drop drm_device local variables in favor of i915
c4d9b846234f drm/i915/backlight: mass rename dev_priv to i915
f0646bf8f0d4 drm/i915/backlight: drop DISPLAY_MMIO_BASE() use from backlight registers
f212301b4a5a drm/i915/backlight: use VLV_DISPLAY_BASE for VLV/CHV backlight registers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/index.html

--===============6550496425504113193==
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
<tr><td><b>Series:</b></td><td>drm/i915/backlight: drop implict dev_priv etc. (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111628/">https://patchwork.freedesktop.org/series/111628/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12476 -&gt; Patchwork_111628v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/index.html</p>
<h2>Participating hosts (30 -&gt; 43)</h2>
<p>Additional (14): fi-kbl-soraka bat-kbl-2 bat-adls-5 bat-adlp-9 fi-bsw-n3050 bat-dg1-5 bat-dg2-8 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-kbl-8809g bat-jsl-3 bat-dg2-11 fi-bsw-nick <br />
  Missing    (1): fi-tgl-dsi </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111628v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +7 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12476/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +39 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-bsw-n3050/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7430">i915#7430</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-8809g/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6899">i915#6899</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-8809g/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +24 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7308">i915#7308</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7348">i915#7348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-8809g/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-bsw-nick/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4093">i915#4093</a>) +3 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-dg1-5/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12476/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12476/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12476/bat-rpls-2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6434">i915#6434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-rpls-2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12476/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111628v2/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12476 -&gt; Patchwork_111628v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12476: e76e37e7dff49e6cb61ca9b8ccf913153aaccca7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7084: ec81855d36887dfe81d5ff513ed6d512773da37e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111628v2: e76e37e7dff49e6cb61ca9b8ccf913153aaccca7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>acbdcc39806a drm/i915/backlight: convert DRM_DEBUG_KMS() to drm_dbg_kms()<br />
48963e19c7b3 drm/i915/backlight: drop drm_device local variables in favor of i915<br />
c4d9b846234f drm/i915/backlight: mass rename dev_priv to i915<br />
f0646bf8f0d4 drm/i915/backlight: drop DISPLAY_MMIO_BASE() use from backlight registers<br />
f212301b4a5a drm/i915/backlight: use VLV_DISPLAY_BASE for VLV/CHV backlight registers</p>

</body>
</html>

--===============6550496425504113193==--
