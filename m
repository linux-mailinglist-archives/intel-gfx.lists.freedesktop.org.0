Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B52F719132F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 15:28:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF79F6E2B0;
	Tue, 24 Mar 2020 14:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 519926E2B0;
 Tue, 24 Mar 2020 14:28:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B1E9A00E6;
 Tue, 24 Mar 2020 14:28:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 24 Mar 2020 14:28:19 -0000
Message-ID: <158506009927.5747.4052585316737158190@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=5Fdevice_managed_resources_=28rev6=29?=
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

Series: drm_device managed resources (rev6)
URL   : https://patchwork.freedesktop.org/series/73633/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8182 -> Patchwork_17067
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17067 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17067, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17067:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-kbl-8809g:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-kbl-8809g/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-kbl-8809g/igt@core_auth@basic-auth.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-icl-y:           [PASS][3] -> [SKIP][4] +82 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-cml-u2:          [PASS][5] -> [SKIP][6] +86 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - fi-icl-guc:         [PASS][7] -> [SKIP][8] +82 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-icl-guc/igt@kms_addfb_basic@clobberred-modifier.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-icl-guc/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][9] +91 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-cml-s:           [PASS][10] -> [SKIP][11] +82 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-s/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cml-s/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@prime_vgem@basic-wait-default:
    - fi-icl-dsi:         [PASS][12] -> [SKIP][13] +82 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-icl-dsi/igt@prime_vgem@basic-wait-default.html

  
#### Warnings ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-dsi:         [SKIP][14] ([fdo#109284] / [fdo#111827]) -> [SKIP][15] +8 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-icl-dsi/igt@kms_chamelium@dp-crc-fast.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-icl-dsi/igt@kms_chamelium@dp-crc-fast.html
    - fi-icl-y:           [SKIP][16] ([fdo#109284] / [fdo#111827]) -> [SKIP][17] +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-guc:         [SKIP][18] ([fdo#109284] / [fdo#111827]) -> [SKIP][19] +8 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-icl-guc/igt@kms_chamelium@dp-edid-read.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-icl-guc/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-cml-s:           [SKIP][20] ([fdo#109284] / [fdo#111827]) -> [SKIP][21] +8 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-s/igt@kms_chamelium@dp-hpd-fast.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cml-s/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-cml-u2:          [SKIP][22] ([i915#1004]) -> [SKIP][23] +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cml-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-cml-u2:          [SKIP][24] ([fdo#109309]) -> [SKIP][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-u2/igt@kms_chamelium@vga-edid-read.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cml-u2/igt@kms_chamelium@vga-edid-read.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][26] ([i915#1209]) -> [FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-kbl-8809g/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-kbl-8809g/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_addfb_basic@invalid-set-prop:
    - {fi-tgl-u}:         [PASS][28] -> [SKIP][29] +82 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-tgl-u/igt@kms_addfb_basic@invalid-set-prop.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-tgl-u/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_chamelium@dp-edid-read:
    - {fi-ehl-1}:         [SKIP][30] ([fdo#109284] / [fdo#111827]) -> [SKIP][31] +8 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-ehl-1/igt@kms_chamelium@dp-edid-read.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-ehl-1/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@vga-edid-read:
    - {fi-tgl-u}:         [SKIP][32] ([fdo#109284] / [fdo#111827]) -> [SKIP][33] +8 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-tgl-u/igt@kms_chamelium@vga-edid-read.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-tgl-u/igt@kms_chamelium@vga-edid-read.html

  * igt@prime_vgem@basic-write:
    - {fi-ehl-1}:         [PASS][34] -> [SKIP][35] +82 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-ehl-1/igt@prime_vgem@basic-write.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-ehl-1/igt@prime_vgem@basic-write.html

  
Known issues
------------

  Here are the changes found in Patchwork_17067 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - fi-kbl-r:           [PASS][36] -> [SKIP][37] ([fdo#109271]) +146 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-kbl-r/igt@core_auth@basic-auth.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-kbl-r/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - fi-cml-s:           [PASS][38] -> [SKIP][39] ([fdo#109315]) +63 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-s/igt@debugfs_test@read_all_entries.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cml-s/igt@debugfs_test@read_all_entries.html
    - fi-byt-n2820:       [PASS][40] -> [SKIP][41] ([fdo#109271]) +139 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-byt-n2820/igt@debugfs_test@read_all_entries.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-byt-n2820/igt@debugfs_test@read_all_entries.html

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][42] -> [SKIP][43] ([fdo#109271]) +139 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-ivb-3770/igt@gem_close_race@basic-process.html

  * igt@gem_flink_basic@bad-open:
    - fi-kbl-7500u:       [PASS][44] -> [SKIP][45] ([fdo#109271]) +148 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html

  * igt@gem_flink_basic@basic:
    - fi-gdg-551:         [PASS][46] -> [SKIP][47] ([fdo#109271]) +108 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-gdg-551/igt@gem_flink_basic@basic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-gdg-551/igt@gem_flink_basic@basic.html

  * igt@gem_flink_basic@double-flink:
    - fi-blb-e6850:       [PASS][48] -> [SKIP][49] ([fdo#109271]) +126 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-blb-e6850/igt@gem_flink_basic@double-flink.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-blb-e6850/igt@gem_flink_basic@double-flink.html

  * igt@gem_flink_basic@flink-lifetime:
    - fi-bsw-nick:        [PASS][50] -> [SKIP][51] ([fdo#109271]) +113 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-bsw-nick/igt@gem_flink_basic@flink-lifetime.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-bsw-nick/igt@gem_flink_basic@flink-lifetime.html

  * igt@gem_mmap@basic:
    - fi-icl-dsi:         [PASS][52] -> [SKIP][53] ([fdo#109315]) +56 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-icl-dsi/igt@gem_mmap@basic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-icl-dsi/igt@gem_mmap@basic.html

  * igt@gem_render_linear_blits@basic:
    - fi-hsw-peppy:       [PASS][54] -> [SKIP][55] ([fdo#109271]) +137 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-hsw-peppy/igt@gem_render_linear_blits@basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-hsw-peppy/igt@gem_render_linear_blits@basic.html
    - fi-cfl-8700k:       [PASS][56] -> [SKIP][57] ([fdo#109271]) +141 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html

  * igt@gem_sync@basic-all:
    - fi-icl-guc:         [PASS][58] -> [SKIP][59] ([fdo#109315]) +63 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-icl-guc/igt@gem_sync@basic-all.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-icl-guc/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-each:
    - fi-cml-u2:          [PASS][60] -> [SKIP][61] ([fdo#109315]) +63 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-u2/igt@gem_sync@basic-each.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cml-u2/igt@gem_sync@basic-each.html

  * igt@gem_wait@basic-busy-all:
    - fi-hsw-4770r:       [PASS][62] -> [SKIP][63] ([fdo#109271]) +140 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-hsw-4770r/igt@gem_wait@basic-busy-all.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-hsw-4770r/igt@gem_wait@basic-busy-all.html

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-snb-2600:        [PASS][64] -> [SKIP][65] ([fdo#109271]) +138 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-snb-2600/igt@i915_getparams_basic@basic-eu-total.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-snb-2600/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_module_load@reload:
    - fi-cml-u2:          [PASS][66] -> [INCOMPLETE][67] ([i915#283] / [k.org#204565])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-u2/igt@i915_module_load@reload.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cml-u2/igt@i915_module_load@reload.html
    - fi-blb-e6850:       [PASS][68] -> [INCOMPLETE][69] ([i915#141] / [k.org#204565])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-blb-e6850/igt@i915_module_load@reload.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-blb-e6850/igt@i915_module_load@reload.html
    - fi-byt-j1900:       [PASS][70] -> [INCOMPLETE][71] ([i915#45] / [k.org#204565])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-byt-j1900/igt@i915_module_load@reload.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][72] -> [INCOMPLETE][73] ([k.org#204565])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cfl-8700k/igt@i915_module_load@reload.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-kbl-r:           [PASS][74] -> [INCOMPLETE][75] ([k.org#204565])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-kbl-r/igt@i915_module_load@reload.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-kbl-r/igt@i915_module_load@reload.html
    - fi-apl-guc:         [PASS][76] -> [INCOMPLETE][77] ([fdo#103927] / [k.org#204565])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-apl-guc/igt@i915_module_load@reload.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-apl-guc/igt@i915_module_load@reload.html
    - fi-icl-dsi:         [PASS][78] -> [INCOMPLETE][79] ([i915#140] / [k.org#204565])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-icl-dsi/igt@i915_module_load@reload.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-icl-dsi/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [PASS][80] -> [INCOMPLETE][81] ([k.org#204565])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-snb-2520m/igt@i915_module_load@reload.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-bxt-dsi:         [PASS][82] -> [INCOMPLETE][83] ([fdo#103927] / [k.org#204565])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-bxt-dsi/igt@i915_module_load@reload.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-hsw-4770:        [PASS][84] -> [INCOMPLETE][85] ([k.org#204565])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-hsw-4770/igt@i915_module_load@reload.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-hsw-4770/igt@i915_module_load@reload.html
    - fi-kbl-soraka:      [PASS][86] -> [INCOMPLETE][87] ([k.org#204565])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-kbl-soraka/igt@i915_module_load@reload.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-kbl-soraka/igt@i915_module_load@reload.html
    - fi-cml-s:           [PASS][88] -> [INCOMPLETE][89] ([i915#283] / [k.org#204565])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-s/igt@i915_module_load@reload.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cml-s/igt@i915_module_load@reload.html
    - fi-pnv-d510:        [PASS][90] -> [INCOMPLETE][91] ([i915#299] / [k.org#204565])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-pnv-d510/igt@i915_module_load@reload.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-pnv-d510/igt@i915_module_load@reload.html
    - fi-skl-6600u:       [PASS][92] -> [INCOMPLETE][93] ([i915#69] / [k.org#204565])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-skl-6600u/igt@i915_module_load@reload.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][94] -> [INCOMPLETE][95] ([k.org#204565])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cfl-guc/igt@i915_module_load@reload.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cfl-guc/igt@i915_module_load@reload.html
    - fi-bsw-n3050:       [PASS][96] -> [INCOMPLETE][97] ([k.org#204565])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-bsw-n3050/igt@i915_module_load@reload.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-bsw-n3050/igt@i915_module_load@reload.html
    - fi-ilk-650:         [PASS][98] -> [INCOMPLETE][99] ([k.org#204565])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-ilk-650/igt@i915_module_load@reload.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-ilk-650/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][100] -> [INCOMPLETE][101] ([k.org#204565])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-ivb-3770/igt@i915_module_load@reload.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-ivb-3770/igt@i915_module_load@reload.html
    - fi-skl-lmem:        [PASS][102] -> [INCOMPLETE][103] ([k.org#204565])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-skl-lmem/igt@i915_module_load@reload.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-skl-lmem/igt@i915_module_load@reload.html
    - fi-hsw-4770r:       [PASS][104] -> [INCOMPLETE][105] ([k.org#204565])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-hsw-4770r/igt@i915_module_load@reload.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-hsw-4770r/igt@i915_module_load@reload.html
    - fi-elk-e7500:       [PASS][106] -> [INCOMPLETE][107] ([i915#66] / [k.org#204565])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-elk-e7500/igt@i915_module_load@reload.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-elk-e7500/igt@i915_module_load@reload.html
    - fi-skl-6700k2:      [PASS][108] -> [INCOMPLETE][109] ([k.org#204565])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-skl-6700k2/igt@i915_module_load@reload.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-skl-6700k2/igt@i915_module_load@reload.html
    - fi-hsw-peppy:       [PASS][110] -> [INCOMPLETE][111] ([k.org#204565])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-hsw-peppy/igt@i915_module_load@reload.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-hsw-peppy/igt@i915_module_load@reload.html
    - fi-icl-guc:         [PASS][112] -> [INCOMPLETE][113] ([i915#140] / [k.org#204565])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-icl-guc/igt@i915_module_load@reload.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-icl-guc/igt@i915_module_load@reload.html
    - fi-byt-n2820:       [PASS][114] -> [INCOMPLETE][115] ([i915#45] / [k.org#204565])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-byt-n2820/igt@i915_module_load@reload.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-byt-n2820/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][116] -> [INCOMPLETE][117] ([k.org#204565])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-bsw-kefka/igt@i915_module_load@reload.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-bdw-5557u:       [PASS][118] -> [INCOMPLETE][119] ([k.org#204565])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-bdw-5557u/igt@i915_module_load@reload.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-bdw-5557u/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [PASS][120] -> [INCOMPLETE][121] ([i915#58] / [k.org#198133] / [k.org#204565])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-glk-dsi/igt@i915_module_load@reload.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-glk-dsi/igt@i915_module_load@reload.html
    - fi-kbl-x1275:       [PASS][122] -> [INCOMPLETE][123] ([k.org#204565])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-kbl-x1275/igt@i915_module_load@reload.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-kbl-x1275/igt@i915_module_load@reload.html
    - fi-snb-2600:        [PASS][124] -> [INCOMPLETE][125] ([i915#82] / [k.org#204565])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-snb-2600/igt@i915_module_load@reload.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-snb-2600/igt@i915_module_load@reload.html
    - fi-bwr-2160:        [PASS][126] -> [INCOMPLETE][127] ([k.org#204565])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-bwr-2160/igt@i915_module_load@reload.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-bwr-2160/igt@i915_module_load@reload.html
    - fi-gdg-551:         [PASS][128] -> [INCOMPLETE][129] ([i915#172] / [k.org#204565])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-gdg-551/igt@i915_module_load@reload.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-gdg-551/igt@i915_module_load@reload.html
    - fi-skl-guc:         [PASS][130] -> [INCOMPLETE][131] ([k.org#204565])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-skl-guc/igt@i915_module_load@reload.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-skl-guc/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][132] -> [INCOMPLETE][133] ([k.org#204565])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-kbl-guc/igt@i915_module_load@reload.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-kbl-guc/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][134] -> [INCOMPLETE][135] ([k.org#204565])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cfl-8109u/igt@i915_module_load@reload.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cfl-8109u/igt@i915_module_load@reload.html
    - fi-icl-y:           [PASS][136] -> [INCOMPLETE][137] ([i915#140] / [k.org#204565])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-icl-y/igt@i915_module_load@reload.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-icl-y/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [PASS][138] -> [INCOMPLETE][139] ([k.org#204565])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-bsw-nick/igt@i915_module_load@reload.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-bsw-nick/igt@i915_module_load@reload.html
    - fi-kbl-7500u:       [PASS][140] -> [INCOMPLETE][141] ([k.org#204565])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-kbl-7500u/igt@i915_module_load@reload.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-kbl-7500u/igt@i915_module_load@reload.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-cfl-guc:         [PASS][142] -> [SKIP][143] ([fdo#109271]) +141 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_addfb_basic@basic-y-tiled:
    - fi-cfl-8109u:       [PASS][144] -> [SKIP][145] ([fdo#109271]) +141 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cfl-8109u/igt@kms_addfb_basic@basic-y-tiled.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-cfl-8109u/igt@kms_addfb_basic@basic-y-tiled.html

  * igt@kms_addfb_basic@invalid-get-prop:
    - fi-bsw-n3050:       [PASS][146] -> [SKIP][147] ([fdo#109271]) +132 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-bsw-n3050/igt@kms_addfb_basic@invalid-get-prop.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-bsw-n3050/igt@kms_addfb_basic@invalid-get-prop.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-hsw-4770:        [PASS][148] -> [SKIP][149] ([fdo#109271]) +141 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - fi-glk-dsi:         [PASS][150] -> [SKIP][151] ([fdo#109271]) +139 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_addfb_basic@size-max:
    - fi-apl-guc:         [PASS][152] -> [SKIP][153] ([fdo#109271]) +138 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-apl-guc/igt@kms_addfb_basic@size-max.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-apl-guc/igt@kms_addfb_basic@size-max.html

  * igt@kms_addfb_basic@too-high:
    - fi-bwr-2160:        [PASS][154] -> [SKIP][155] ([fdo#109271]) +114 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-bwr-2160/igt@kms_addfb_basic@too-high.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-bwr-2160/igt@kms_addfb_basic@too-high.html

  * igt@kms_addfb_basic@unused-modifier:
    - fi-bdw-5557u:       [PASS][156] -> [SKIP][157] ([fdo#109271]) +140 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-bdw-5557u/igt@kms_addfb_basic@unused-modifier.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-bdw-5557u/igt@kms_addfb_basic@unused-modifier.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-byt-j1900:       [PASS][158] -> [SKIP][159] ([fdo#109271]) +140 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-byt-j1900/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-byt-j1900/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-kbl-soraka:      [PASS][160] -> [SKIP][161] ([fdo#109271]) +143 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html
    - fi-ilk-650:         [PASS][162] -> [SKIP][163] ([fdo#109271]) +136 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-icl-y:           [PASS][164] -> [SKIP][165] ([fdo#109315]) +59 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-icl-y/igt@kms_force_connector_basic@force-edid.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-icl-y/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6600u:       [PASS][166] -> [SKIP][167] ([fdo#109271]) +146 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-lmem:        [PASS][168] -> [SKIP][169] ([fdo#109271]) +141 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-skl-lmem/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-skl-lmem/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@prime_busy@basic-wait-after-default:
    - fi-pnv-d510:        [PASS][170] -> [SKIP][171] ([fdo#109271]) +126 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-pnv-d510/igt@prime_busy@basic-wait-after-default.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-pnv-d510/igt@prime_busy@basic-wait-after-default.html
    - fi-snb-2520m:       [PASS][172] -> [SKIP][173] ([fdo#109271]) +138 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-snb-2520m/igt@prime_busy@basic-wait-after-default.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-snb-2520m/igt@prime_busy@basic-wait-after-default.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-skl-guc:         [PASS][174] -> [SKIP][175] ([fdo#109271]) +141 similar issues
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-skl-guc/igt@prime_self_import@basic-llseek-bad.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/fi-skl-guc/igt@prime_self_import@basic-llseek-bad.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-bxt-dsi:         [PASS][176] -> [SKIP][177] ([fdo#109271]) +139 similar issues
   [176]: https://inte

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17067/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
