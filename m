Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 666963B005B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 11:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7FCA6E461;
	Tue, 22 Jun 2021 09:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB2E76E461;
 Tue, 22 Jun 2021 09:34:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 820C4A73C9;
 Tue, 22 Jun 2021 09:34:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 22 Jun 2021 09:34:03 -0000
Message-ID: <162435444352.30778.11160202977359335146@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210622075409.2673805-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210622075409.2673805-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm=3A_add_a_locked_version_of_drm=5Fis=5Fcurrent=5Fmast?=
 =?utf-8?b?ZXIi?=
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
Content-Type: multipart/mixed; boundary="===============1208303613=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1208303613==
Content-Type: multipart/alternative;
 boundary="===============7048631127766826301=="

--===============7048631127766826301==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "drm: add a locked version of drm_is_current_master"
URL   : https://patchwork.freedesktop.org/series/91758/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10259 -> Patchwork_20424
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20424:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_suspend@basic-s3:
    - {fi-dg1-1}:         NOTRUN -> [FAIL][1] +65 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-dg1-1/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gt_lrc:
    - {fi-dg1-1}:         NOTRUN -> [DMESG-FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-dg1-1/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_addfb_basic@invalid-get-prop:
    - {fi-dg1-1}:         NOTRUN -> [WARN][3] +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-dg1-1/igt@kms_addfb_basic@invalid-get-prop.html

  * igt@prime_vgem@basic-fence-flip:
    - {fi-dg1-1}:         NOTRUN -> [SKIP][4] +41 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-dg1-1/igt@prime_vgem@basic-fence-flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_20424 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-compute:
    - fi-elk-e7500:       NOTRUN -> [SKIP][5] ([fdo#109271]) +49 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-elk-e7500/igt@amdgpu/amd_basic@cs-compute.html

  * igt@amdgpu/amd_basic@query-info:
    - fi-glk-dsi:         NOTRUN -> [SKIP][6] ([fdo#109271]) +28 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-glk-dsi/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-kbl-guc:         NOTRUN -> [SKIP][7] ([fdo#109271]) +59 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-guc/igt@amdgpu/amd_basic@semaphore.html
    - fi-bdw-5557u:       NOTRUN -> [SKIP][8] ([fdo#109271]) +27 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html
    - fi-kbl-7500u:       NOTRUN -> [SKIP][9] ([fdo#109271]) +28 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7500u/igt@amdgpu/amd_basic@semaphore.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_basic@userptr:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][11] ([fdo#109271]) +26 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8700k/igt@amdgpu/amd_basic@userptr.html

  * igt@amdgpu/amd_cs_nop@fork-compute0:
    - fi-icl-y:           NOTRUN -> [SKIP][12] ([fdo#109315]) +17 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@amdgpu/amd_cs_nop@fork-compute0.html

  * igt@amdgpu/amd_cs_nop@nop-compute0:
    - fi-ilk-650:         NOTRUN -> [SKIP][13] ([fdo#109271]) +35 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-r:           NOTRUN -> [SKIP][14] ([fdo#109271]) +21 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html
    - fi-cml-u2:          NOTRUN -> [SKIP][15] ([fdo#109315]) +17 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@amdgpu/amd_cs_nop@sync-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-cfl-guc:         NOTRUN -> [SKIP][16] ([fdo#109271]) +26 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-guc/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][17] ([fdo#109271]) +26 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][18] ([fdo#109271]) +31 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ivb-3770/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-snb-2520m:       NOTRUN -> [SKIP][19] ([fdo#109271]) +37 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html
    - fi-cml-s:           NOTRUN -> [SKIP][20] ([fdo#109315]) +17 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-hsw-4770:        NOTRUN -> [WARN][21] ([i915#2283])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html
    - fi-bdw-5557u:       NOTRUN -> [WARN][22] ([i915#2283])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@nullptr:
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][23] ([fdo#109271]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bdw-gvtdvm/igt@fbdev@nullptr.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][24] ([fdo#109271]) +6 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html
    - fi-apl-guc:         NOTRUN -> [SKIP][25] ([fdo#109271]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html
    - fi-cml-s:           NOTRUN -> [SKIP][26] ([i915#1208]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@gem_exec_fence@basic-busy@bcs0.html
    - fi-cml-u2:          NOTRUN -> [SKIP][27] ([i915#1208]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][28] ([fdo#109271])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-bdw-gvtdvm:      NOTRUN -> [INCOMPLETE][29] ([i915#146])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bwr-2160:        NOTRUN -> [SKIP][30] ([fdo#109271]) +60 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bwr-2160/igt@gem_exec_suspend@basic-s3.html
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][31] ([i915#3159])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#2190])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][33] ([fdo#109271]) +53 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#2190])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#2190])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#2190])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-r:           NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#2190])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-r/igt@gem_huc_copy@huc-copy.html
    - fi-skl-guc:         NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#2190])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-guc/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#2190])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
    - fi-bxt-dsi:         NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#2190])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#2190])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html
    - fi-cml-u2:          NOTRUN -> [SKIP][42] ([i915#2190])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#2190])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html
    - fi-cml-s:           NOTRUN -> [SKIP][44] ([i915#2190])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@gem_huc_copy@huc-copy.html
    - fi-glk-dsi:         NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#2190])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-7500u:       NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#2190])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2190])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2190])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
    - fi-icl-y:           NOTRUN -> [SKIP][49] ([i915#2190])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#2190])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_softpin@allocator-basic-reserve:
    - fi-hsw-4770:        NOTRUN -> [SKIP][51] ([fdo#109271]) +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html

  * igt@i915_hangman@error-state-basic:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][52] ([i915#1610])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-apl-guc/igt@i915_hangman@error-state-basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#3012])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][54] ([fdo#109271]) +37 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-8809g/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-guc:         NOTRUN -> [DMESG-FAIL][55] ([i915#2291] / [i915#541])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][56] ([i915#1886] / [i915#2291])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-snb-2600:        NOTRUN -> [SKIP][57] ([fdo#109271]) +37 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-skl-guc:         NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-guc/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][59] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html
    - fi-icl-y:           NOTRUN -> [SKIP][60] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html
    - fi-ilk-650:         NOTRUN -> [SKIP][61] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ilk-650/igt@kms_chamelium@dp-crc-fast.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][62] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8700k/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cfl-guc:         NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][64] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-soraka/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-cml-s:           NOTRUN -> [SKIP][65] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@kms_chamelium@dp-hpd-fast.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][66] ([fdo#109271]) +31 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][67] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html
    - fi-cml-u2:          NOTRUN -> [SKIP][68] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html
    - fi-bxt-dsi:         NOTRUN -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bxt-dsi/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][70] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-snb-2600:        NOTRUN -> [SKIP][71] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][72] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html
    - fi-kbl-r:           NOTRUN -> [SKIP][73] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][74] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7567u/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-glk-dsi:         NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-snb-2520m:       NOTRUN -> [SKIP][76] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-guc/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-skl-6600u:       NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html
    - fi-bdw-5557u:       NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bdw-5557u/igt@kms_chamelium@vga-edid-read.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][80] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bsw-nick/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-fast:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8109u/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][82] ([fdo#109271]) +28 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bxt-dsi/igt@kms_force_connector_basic@force-load-detect.html
    - fi-cml-u2:          NOTRUN -> [SKIP][83] ([fdo#109285])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@kms_force_connector_basic@force-load-detect.html
    - fi-cml-s:           NOTRUN -> [SKIP][84] ([fdo#109285])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@kms_force_connector_basic@force-load-detect.html
    - fi-icl-y:           NOTRUN -> [SKIP][85] ([fdo#109285])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-hsw-4770:        NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#533])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-7500u:       NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#533])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#533])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cml-u2:          NOTRUN -> [SKIP][89] ([fdo#109278] / [i915#533])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#533])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-bxt-dsi:         NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#533])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bxt-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cml-s:           NOTRUN -> [SKIP][92] ([fdo#109278] / [i915#533])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#533])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#533])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-r:           NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#533])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-r/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#533])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-skl-guc:         NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#533])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#533])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#533])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#533])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#533])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-glk-dsi:         NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#533])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-icl-y:           NOTRUN -> [SKIP][103] ([fdo#109278])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#533])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][105] ([fdo#109271]) +59 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7567u/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-skl-guc:         NOTRUN -> [SKIP][106] ([fdo#109271]) +26 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-guc/igt@kms_psr@primary_mmap_gtt.html
    - fi-icl-y:           NOTRUN -> [SKIP][107] ([fdo#110189]) +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@kms_psr@primary_mmap_gtt.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][108] ([fdo#109271]) +26 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8109u/igt@kms_psr@primary_mmap_gtt.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#1072]) +3 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@primary_page_flip:
    - fi-bsw-nick:        NOTRUN -> [SKIP][110] ([fdo#109271]) +63 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bsw-nick/igt@kms_psr@primary_page_flip.html

  * igt@prime_vgem@basic-userptr:
    - fi-skl-6600u:       NOTRUN -> [SKIP][111] ([fdo#109271]) +21 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
    - fi-cml-s:           NOTRUN -> [SKIP][112] ([i915#3301])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           NOTRUN -> [SKIP][113] ([i915#3301])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          NOTRUN -> [SKIP][114] ([i915#3301])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-cml-s:           [DMESG-WARN][115] ([i915#3660]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-cml-s/igt@debugfs_test@read_all_entries.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@debugfs_test@read_all_entries.html
    - {fi-dg1-1}:         [DMESG-WARN][117] ([i915#3660]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-dg1-1/igt@debugfs_test@read_all_entries.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-dg1-1/igt@debugfs_test@read_all_entries.html
    - fi-glk-dsi:         [DMESG-WARN][119] ([i915#3660]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-glk-dsi/igt@debugfs_test@read_all_entries.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-glk-dsi/igt@debugfs_test@read_all_entries.html
    - fi-ivb-3770:        [DMESG-WARN][121] ([i915#3660]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
    - fi-bdw-gvtdvm:      [DMESG-WARN][123] ([i915#3660]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-bdw-gvtdvm/igt@debugfs_test@read_all_entries.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bdw-gvtdvm/igt@debugfs_test@read_all_entries.html
    - fi-kbl-7500u:       [DMESG-WARN][125] ([i915#262] / [i915#3660]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html
    - {fi-ehl-2}:         [DMESG-WARN][127] ([i915#3660]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-ehl-2/igt@debugfs_test@read_all_entries.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ehl-2/igt@debugfs_test@read_all_entries.html
    - fi-snb-2520m:       [DMESG-WARN][129] ([i915#3660]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8109u:       [DMESG-WARN][131] ([i915#262] / [i915#3660]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
    - {fi-hsw-gt1}:       [DMESG-WARN][133] ([i915#3660]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-hsw-gt1/igt@debugfs_test@read_all_entries.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-gt1/igt@debugfs_test@read_all_entries.html
    - {fi-jsl-1}:         [DMESG-WARN][135] ([i915#3660]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-jsl-1/igt@debugfs_test@read_all_entries.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-jsl-1/igt@debugfs_test@read_all_entries.html
    - fi-pnv-d510:        [DMESG-WARN][137] ([i915#3660]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
    - fi-ilk-650:         [DMESG-WARN][139] ([i915#3660]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-ilk-650/igt@debugfs_test@read_all_entries.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ilk-650/igt@debugfs_test@read_all_entries.html
    - {fi-ehl-1}:         [DMESG-WARN][141] ([i915#3660]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-ehl-1/igt@debugfs_test@read_all_entries.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ehl-1/igt@debugfs_test@read_all_entries.html
    - fi-elk-e7500:       [DMESG-WARN][143] ([i915#3660]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
    - fi-snb-2600:        [DMESG-WARN][145] ([i915#3660]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-snb-2600/igt@debugfs_test@read_all_entries.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-snb-2600/igt@debugfs_test@read_all_entries.html
    - fi-kbl-guc:         [DMESG-WARN][147] ([i915#262] / [i915#3660]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-kbl-guc/igt@debugfs_test@read_all_entries.htm

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/index.html

--===============7048631127766826301==
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
<tr><td><b>Series:</b></td><td>Revert &quot;drm: add a locked version of drm_is_current_master&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91758/">https://patchwork.freedesktop.org/series/91758/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10259 -&gt; Patchwork_20424</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20424:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-dg1-1/igt@gem_exec_suspend@basic-s3.html">FAIL</a> +65 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-dg1-1/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-get-prop:</p>
<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-dg1-1/igt@kms_addfb_basic@invalid-get-prop.html">WARN</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-dg1-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> +41 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20424 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-compute:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-elk-e7500/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> ([fdo#109271]) +49 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-glk-dsi/igt@amdgpu/amd_basic@query-info.html">SKIP</a> ([fdo#109271]) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-guc/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> ([fdo#109271]) +59 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> ([fdo#109271]) +27 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7500u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> ([fdo#109271]) +28 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> ([fdo#109271] / [fdo#109315]) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8700k/igt@amdgpu/amd_basic@userptr.html">SKIP</a> ([fdo#109271]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-compute0:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@amdgpu/amd_cs_nop@fork-compute0.html">SKIP</a> ([fdo#109315]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-compute0:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html">SKIP</a> ([fdo#109271]) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> ([fdo#109271]) +21 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> ([fdo#109315]) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-guc/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> ([fdo#109271]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> ([fdo#109271]) +26 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ivb-3770/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> ([fdo#109271]) +31 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> ([fdo#109271]) +37 similar issues</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> ([fdo#109315]) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html">WARN</a> ([i915#2283])</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> ([i915#2283])</p>
</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bdw-gvtdvm/igt@fbdev@nullptr.html">SKIP</a> ([fdo#109271]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> ([fdo#109271]) +6 similar issues</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> ([i915#1208]) +1 similar issue</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> ([i915#1208]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> ([i915#146])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bwr-2160/igt@gem_exec_suspend@basic-s3.html">SKIP</a> ([fdo#109271]) +60 similar issues</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> ([i915#3159])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271]) +53 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-r/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html">SKIP</a> ([fdo#109271]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-apl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> ([i915#1610])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([fdo#109271] / [i915#3012])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-8809g/igt@i915_pm_rpm@basic-rte.html">SKIP</a> ([fdo#109271]) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> ([i915#2291] / [i915#541])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([fdo#109271]) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-guc/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ilk-650/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8700k/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-soraka/igt@kms_chamelium@dp-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> ([fdo#109271]) +31 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bxt-dsi/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7567u/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-guc/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bdw-5557u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bsw-nick/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8109u/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bxt-dsi/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109271]) +28 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109278] / [i915#533])</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bxt-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109278] / [i915#533])</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-r/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109278])</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7567u/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">SKIP</a> ([fdo#109271]) +59 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-guc/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> ([fdo#109271]) +26 similar issues</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> ([fdo#110189]) +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8109u/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> ([fdo#109271]) +26 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-4770/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> ([fdo#109271] / [i915#1072]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bsw-nick/igt@kms_psr@primary_page_flip.html">SKIP</a> ([fdo#109271]) +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) +21 similar issues</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301])</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301])</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-cml-s/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cml-s/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>{fi-dg1-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-dg1-1/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-dg1-1/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-glk-dsi/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-glk-dsi/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-ivb-3770/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ivb-3770/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-bdw-gvtdvm/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-bdw-gvtdvm/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#262] / [i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-ehl-2/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ehl-2/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-snb-2520m/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-snb-2520m/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#262] / [i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-hsw-gt1/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-hsw-gt1/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-jsl-1/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-jsl-1/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-ilk-650/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ilk-650/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-ehl-1/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-ehl-1/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-snb-2600/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#3660]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/fi-snb-2600/igt@debugfs_test@read_all_entries.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10259/fi-kbl-guc/igt@debugfs_test@read_all_entries.htm">DMESG-WARN</a> ([i915#262] / [i915#3660]) -&gt; [PASS][148]</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7048631127766826301==--

--===============1208303613==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1208303613==--
