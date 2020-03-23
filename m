Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 092C818FBAC
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 18:40:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B7A96E39E;
	Mon, 23 Mar 2020 17:40:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 717436E39C;
 Mon, 23 Mar 2020 17:40:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68F6BA0094;
 Mon, 23 Mar 2020 17:40:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 23 Mar 2020 17:40:44 -0000
Message-ID: <158498524439.9808.13597101796722677001@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=5Fdevice_managed_resources_=28rev5=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm_device managed resources (rev5)
URL   : https://patchwork.freedesktop.org/series/73633/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8180 -> Patchwork_17057
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17057 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17057, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17057:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-kbl-8809g:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-8809g/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-kbl-8809g/igt@core_auth@basic-auth.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-icl-y:           [PASS][3] -> [SKIP][4] +82 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-cml-u2:          [PASS][5] -> [SKIP][6] +86 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - fi-icl-guc:         [PASS][7] -> [SKIP][8] +82 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-guc/igt@kms_addfb_basic@clobberred-modifier.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-guc/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][9] -> [SKIP][10] +89 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-cml-s:           [PASS][11] -> [SKIP][12] +82 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-s/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cml-s/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@prime_vgem@basic-wait-default:
    - fi-icl-dsi:         [PASS][13] -> [SKIP][14] +82 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html

  
#### Warnings ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-dsi:         [SKIP][15] ([fdo#109284] / [fdo#111827]) -> [SKIP][16] +8 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-dsi/igt@kms_chamelium@dp-crc-fast.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-dsi/igt@kms_chamelium@dp-crc-fast.html
    - fi-icl-y:           [SKIP][17] ([fdo#109284] / [fdo#111827]) -> [SKIP][18] +8 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-guc:         [SKIP][19] ([fdo#109284] / [fdo#111827]) -> [SKIP][20] +8 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-guc/igt@kms_chamelium@dp-edid-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-guc/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-cml-s:           [SKIP][21] ([fdo#109284] / [fdo#111827]) -> [SKIP][22] +8 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-s/igt@kms_chamelium@dp-hpd-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cml-s/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-cml-u2:          [SKIP][23] ([i915#1004]) -> [SKIP][24] +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cml-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-icl-u2:          [SKIP][25] ([fdo#109309]) -> [SKIP][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html
    - fi-cml-u2:          [SKIP][27] ([fdo#109309]) -> [SKIP][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-u2/igt@kms_chamelium@vga-edid-read.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cml-u2/igt@kms_chamelium@vga-edid-read.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][29] ([i915#1209]) -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-8809g/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-kbl-8809g/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_addfb_basic@invalid-set-prop:
    - {fi-tgl-u}:         [PASS][31] -> [SKIP][32] +82 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-tgl-u/igt@kms_addfb_basic@invalid-set-prop.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-tgl-u/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_chamelium@dp-edid-read:
    - {fi-ehl-1}:         [SKIP][33] ([fdo#109284] / [fdo#111827]) -> [SKIP][34] +8 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-ehl-1/igt@kms_chamelium@dp-edid-read.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-ehl-1/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@vga-edid-read:
    - {fi-tgl-u}:         [SKIP][35] ([fdo#109284] / [fdo#111827]) -> [SKIP][36] +8 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-tgl-u/igt@kms_chamelium@vga-edid-read.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-tgl-u/igt@kms_chamelium@vga-edid-read.html

  * igt@prime_vgem@basic-write:
    - {fi-ehl-1}:         [PASS][37] -> [SKIP][38] +82 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-ehl-1/igt@prime_vgem@basic-write.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-ehl-1/igt@prime_vgem@basic-write.html

  
Known issues
------------

  Here are the changes found in Patchwork_17057 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - fi-kbl-r:           [PASS][39] -> [SKIP][40] ([fdo#109271]) +146 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-r/igt@core_auth@basic-auth.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-kbl-r/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - fi-cml-s:           [PASS][41] -> [SKIP][42] ([fdo#109315]) +63 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-s/igt@debugfs_test@read_all_entries.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cml-s/igt@debugfs_test@read_all_entries.html
    - fi-byt-n2820:       [PASS][43] -> [SKIP][44] ([fdo#109271]) +139 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-byt-n2820/igt@debugfs_test@read_all_entries.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-byt-n2820/igt@debugfs_test@read_all_entries.html

  * igt@gem_ctx_param@basic:
    - fi-icl-u2:          [PASS][45] -> [SKIP][46] ([fdo#109315]) +63 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-u2/igt@gem_ctx_param@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-u2/igt@gem_ctx_param@basic.html

  * igt@gem_mmap@basic:
    - fi-icl-dsi:         [PASS][47] -> [SKIP][48] ([fdo#109315]) +56 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-dsi/igt@gem_mmap@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-dsi/igt@gem_mmap@basic.html

  * igt@gem_render_linear_blits@basic:
    - fi-cfl-8700k:       [PASS][49] -> [SKIP][50] ([fdo#109271]) +141 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html

  * igt@gem_sync@basic-all:
    - fi-icl-guc:         [PASS][51] -> [SKIP][52] ([fdo#109315]) +63 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-guc/igt@gem_sync@basic-all.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-guc/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-each:
    - fi-cml-u2:          [PASS][53] -> [SKIP][54] ([fdo#109315]) +63 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-u2/igt@gem_sync@basic-each.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cml-u2/igt@gem_sync@basic-each.html

  * igt@gem_wait@basic-busy-all:
    - fi-hsw-4770r:       [PASS][55] -> [SKIP][56] ([fdo#109271]) +140 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-hsw-4770r/igt@gem_wait@basic-busy-all.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-hsw-4770r/igt@gem_wait@basic-busy-all.html

  * igt@i915_module_load@reload:
    - fi-cml-u2:          [PASS][57] -> [INCOMPLETE][58] ([i915#283] / [k.org#204565])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-u2/igt@i915_module_load@reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cml-u2/igt@i915_module_load@reload.html
    - fi-byt-j1900:       [PASS][59] -> [INCOMPLETE][60] ([i915#45] / [k.org#204565])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-byt-j1900/igt@i915_module_load@reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][61] -> [INCOMPLETE][62] ([k.org#204565])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cfl-8700k/igt@i915_module_load@reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-kbl-r:           [PASS][63] -> [INCOMPLETE][64] ([k.org#204565])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-r/igt@i915_module_load@reload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-kbl-r/igt@i915_module_load@reload.html
    - fi-apl-guc:         [PASS][65] -> [INCOMPLETE][66] ([fdo#103927] / [k.org#204565])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-apl-guc/igt@i915_module_load@reload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-apl-guc/igt@i915_module_load@reload.html
    - fi-icl-dsi:         [PASS][67] -> [INCOMPLETE][68] ([i915#140] / [k.org#204565])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-dsi/igt@i915_module_load@reload.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-dsi/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [PASS][69] -> [INCOMPLETE][70] ([k.org#204565])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-snb-2520m/igt@i915_module_load@reload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-bxt-dsi:         [PASS][71] -> [INCOMPLETE][72] ([fdo#103927] / [k.org#204565])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bxt-dsi/igt@i915_module_load@reload.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-hsw-4770:        [PASS][73] -> [INCOMPLETE][74] ([k.org#204565])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-hsw-4770/igt@i915_module_load@reload.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-hsw-4770/igt@i915_module_load@reload.html
    - fi-kbl-soraka:      [PASS][75] -> [INCOMPLETE][76] ([k.org#204565])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-soraka/igt@i915_module_load@reload.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-kbl-soraka/igt@i915_module_load@reload.html
    - fi-cml-s:           [PASS][77] -> [INCOMPLETE][78] ([i915#283] / [k.org#204565])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-s/igt@i915_module_load@reload.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cml-s/igt@i915_module_load@reload.html
    - fi-pnv-d510:        [PASS][79] -> [INCOMPLETE][80] ([i915#299] / [k.org#204565])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-pnv-d510/igt@i915_module_load@reload.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-pnv-d510/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][81] -> [INCOMPLETE][82] ([k.org#204565])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cfl-guc/igt@i915_module_load@reload.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cfl-guc/igt@i915_module_load@reload.html
    - fi-ilk-650:         [PASS][83] -> [INCOMPLETE][84] ([k.org#204565])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-ilk-650/igt@i915_module_load@reload.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-ilk-650/igt@i915_module_load@reload.html
    - fi-hsw-4770r:       [PASS][85] -> [INCOMPLETE][86] ([k.org#204565])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-hsw-4770r/igt@i915_module_load@reload.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-hsw-4770r/igt@i915_module_load@reload.html
    - fi-skl-6700k2:      [PASS][87] -> [INCOMPLETE][88] ([k.org#204565])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-skl-6700k2/igt@i915_module_load@reload.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-skl-6700k2/igt@i915_module_load@reload.html
    - fi-icl-guc:         [PASS][89] -> [INCOMPLETE][90] ([i915#140] / [k.org#204565])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-guc/igt@i915_module_load@reload.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-guc/igt@i915_module_load@reload.html
    - fi-byt-n2820:       [PASS][91] -> [INCOMPLETE][92] ([i915#45] / [k.org#204565])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-byt-n2820/igt@i915_module_load@reload.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-byt-n2820/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][93] -> [INCOMPLETE][94] ([k.org#204565])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bsw-kefka/igt@i915_module_load@reload.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [PASS][95] -> [INCOMPLETE][96] ([i915#58] / [k.org#198133] / [k.org#204565])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-glk-dsi/igt@i915_module_load@reload.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-glk-dsi/igt@i915_module_load@reload.html
    - fi-bwr-2160:        [PASS][97] -> [INCOMPLETE][98] ([k.org#204565])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bwr-2160/igt@i915_module_load@reload.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-bwr-2160/igt@i915_module_load@reload.html
    - fi-skl-guc:         [PASS][99] -> [INCOMPLETE][100] ([k.org#204565])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-skl-guc/igt@i915_module_load@reload.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-skl-guc/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][101] -> [INCOMPLETE][102] ([k.org#204565])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-guc/igt@i915_module_load@reload.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-kbl-guc/igt@i915_module_load@reload.html
    - fi-icl-y:           [PASS][103] -> [INCOMPLETE][104] ([i915#140] / [k.org#204565])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-y/igt@i915_module_load@reload.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-y/igt@i915_module_load@reload.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-cfl-guc:         [PASS][105] -> [SKIP][106] ([fdo#109271]) +141 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-hsw-4770:        [PASS][107] -> [SKIP][108] ([fdo#109271]) +141 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - fi-glk-dsi:         [PASS][109] -> [SKIP][110] ([fdo#109271]) +139 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_addfb_basic@size-max:
    - fi-apl-guc:         [PASS][111] -> [SKIP][112] ([fdo#109271]) +138 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-apl-guc/igt@kms_addfb_basic@size-max.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-apl-guc/igt@kms_addfb_basic@size-max.html

  * igt@kms_addfb_basic@too-high:
    - fi-bwr-2160:        [PASS][113] -> [SKIP][114] ([fdo#109271]) +114 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bwr-2160/igt@kms_addfb_basic@too-high.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-bwr-2160/igt@kms_addfb_basic@too-high.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-byt-j1900:       [PASS][115] -> [SKIP][116] ([fdo#109271]) +140 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-byt-j1900/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-byt-j1900/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-kbl-soraka:      [PASS][117] -> [SKIP][118] ([fdo#109271]) +143 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html
    - fi-ilk-650:         [PASS][119] -> [SKIP][120] ([fdo#109271]) +136 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-icl-y:           [PASS][121] -> [SKIP][122] ([fdo#109315]) +59 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-y/igt@kms_force_connector_basic@force-edid.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-y/igt@kms_force_connector_basic@force-edid.html

  * igt@prime_busy@basic-wait-after-default:
    - fi-pnv-d510:        [PASS][123] -> [SKIP][124] ([fdo#109271]) +126 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-pnv-d510/igt@prime_busy@basic-wait-after-default.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-pnv-d510/igt@prime_busy@basic-wait-after-default.html
    - fi-snb-2520m:       [PASS][125] -> [SKIP][126] ([fdo#109271]) +138 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-snb-2520m/igt@prime_busy@basic-wait-after-default.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-snb-2520m/igt@prime_busy@basic-wait-after-default.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-skl-guc:         [PASS][127] -> [SKIP][128] ([fdo#109271]) +141 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-skl-guc/igt@prime_self_import@basic-llseek-bad.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-skl-guc/igt@prime_self_import@basic-llseek-bad.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-bxt-dsi:         [PASS][129] -> [SKIP][130] ([fdo#109271]) +139 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bxt-dsi/igt@prime_self_import@basic-with_two_bos.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-bxt-dsi/igt@prime_self_import@basic-with_two_bos.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][131] -> [SKIP][132] ([fdo#109271]) +139 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - fi-kbl-guc:         [PASS][133] -> [SKIP][134] ([fdo#109271]) +117 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-guc/igt@prime_vgem@basic-read.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-kbl-guc/igt@prime_vgem@basic-read.html

  * igt@vgem_basic@mmap:
    - fi-skl-6700k2:      [PASS][135] -> [SKIP][136] ([fdo#109271]) +145 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-skl-6700k2/igt@vgem_basic@mmap.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-skl-6700k2/igt@vgem_basic@mmap.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [DMESG-WARN][137] ([i915#289]) -> [INCOMPLETE][138] ([i915#140] / [k.org#204565])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-u2/igt@i915_module_load@reload.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-icl-u2/igt@i915_module_load@reload.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bxt-dsi:         [SKIP][139] ([fdo#109271] / [fdo#111827]) -> [SKIP][140] ([fdo#109271]) +8 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-hsw-4770:        [SKIP][141] ([fdo#109271] / [fdo#111827]) -> [SKIP][142] ([fdo#109271]) +8 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-kbl-soraka:      [SKIP][143] ([fdo#109271] / [fdo#111827]) -> [SKIP][144] ([fdo#109271]) +8 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-skl-guc:         [SKIP][145] ([fdo#109271] / [fdo#111827]) -> [SKIP][146] ([fdo#109271]) +8 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cfl-guc:         [SKIP][147] ([fdo#109271] / [fdo#111827]) -> [SKIP][148] ([fdo#109271]) +8 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
    - fi-byt-n2820:       [SKIP][149] ([fdo#109271] / [fdo#111827]) -> [SKIP][150] ([fdo#109271]) +8 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-byt-n2820/igt@kms_chamelium@dp-edid-read.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-byt-n2820/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-ilk-650:         [SKIP][151] ([fdo#109271] / [fdo#111827]) -> [SKIP][152] ([fdo#109271]) +8 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       [SKIP][153] ([fdo#109271] / [fdo#111827]) -> [SKIP][154] ([fdo#109271]) +8 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-r:           [SKIP][155] ([fdo#109271] / [fdo#111827]) -> [SKIP][156] ([fdo#109271]) +8 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html
    - fi-bsw-kefka:       [SKIP][157] ([fdo#109271] / [fdo#111827]) -> [SKIP][158] ([fdo#109271]) +8 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-glk-dsi:         [SKIP][159] ([fdo#109271] / [fdo#111827]) -> [SKIP][160] ([fdo#109271]) +8 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-apl-guc:         [SKIP][161] ([fdo#109271] / [fdo#111827]) -> [SKIP][162] ([fdo#109271]) +8 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-apl-guc/igt@kms_chamelium@hdmi-hpd-fast.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-apl-guc/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-snb-2520m:       [SKIP][163] ([fdo#109271] / [fdo#111827]) -> [SKIP][164] ([fdo#109271]) +8 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-cfl-8700k:       [SKIP][165] ([fdo#109271] / [fdo#111827]) -> [SKIP][166] ([fdo#109271]) +8 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cfl-8700k/igt@kms_chamelium@vga-edid-read.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-cfl-8700k/igt@kms_chamelium@vga-edid-read.html
    - fi-hsw-4770r:       [SKIP][167] ([fdo#109271] / [fdo#111827]) -> [SKIP][168] ([fdo#109271]) +8 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-hsw-4770r/igt@kms_chamelium@vga-edid-read.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-hsw-4770r/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-fast:
    - fi-kbl-guc:         [SKIP][169] ([fdo#109271] / [fdo#111827]) -> [SKIP][170] ([fdo#109271]) +8 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-icl-dsi:         [SKIP][171] ([fdo#109285]) -> [SKIP][172] ([fdo#109315]) +3 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-dsi/igt@kms_force_connector_basic@force-connector-state.html
   [172]: https://intel-gfx-ci.01.org/tree/drm

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17057/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
