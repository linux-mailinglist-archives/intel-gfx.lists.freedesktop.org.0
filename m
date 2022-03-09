Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6644D28B2
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 07:06:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC0910E1CF;
	Wed,  9 Mar 2022 06:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F1CF110E44A;
 Wed,  9 Mar 2022 06:06:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB494AADD1;
 Wed,  9 Mar 2022 06:06:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5703580702797185608=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Wed, 09 Mar 2022 06:06:19 -0000
Message-ID: <164680597991.14947.11720058628021373796@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220309051708.22644-1-ramalingam.c@intel.com>
In-Reply-To: <20220309051708.22644-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUGF0?=
 =?utf-8?q?ches_for_selftest=5Flrc?=
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

--===============5703580702797185608==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Patches for selftest_lrc
URL   : https://patchwork.freedesktop.org/series/101188/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11338 -> Patchwork_22520
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22520 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22520, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/index.html

Participating hosts (48 -> 42)
------------------------------

  Additional (1): bat-dg1-6 
  Missing    (7): fi-kbl-soraka shard-tglu fi-tgl-1115g4 fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22520:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-cfl-guc/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-cfl-guc/igt@i915_selftest@live@gt_lrc.html
    - fi-rkl-guc:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
    - fi-bsw-nick:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-cfl-8109u/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-cfl-8109u/igt@i915_selftest@live@gt_lrc.html
    - fi-bdw-5557u:       NOTRUN -> [DMESG-FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bdw-5557u/igt@i915_selftest@live@gt_lrc.html
    - fi-skl-6700k2:      [PASS][10] -> [DMESG-FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-skl-6700k2/igt@i915_selftest@live@gt_lrc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6700k2/igt@i915_selftest@live@gt_lrc.html
    - fi-bxt-dsi:         [PASS][12] -> [DMESG-FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-bxt-dsi/igt@i915_selftest@live@gt_lrc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bxt-dsi/igt@i915_selftest@live@gt_lrc.html
    - bat-dg1-5:          [PASS][14] -> [DMESG-FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/bat-dg1-5/igt@i915_selftest@live@gt_lrc.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-5/igt@i915_selftest@live@gt_lrc.html
    - fi-bsw-n3050:       [PASS][16] -> [DMESG-FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
    - fi-bsw-kefka:       [PASS][18] -> [DMESG-FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-bsw-kefka/igt@i915_selftest@live@gt_lrc.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bsw-kefka/igt@i915_selftest@live@gt_lrc.html
    - fi-kbl-x1275:       [PASS][20] -> [DMESG-FAIL][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-kbl-x1275/igt@i915_selftest@live@gt_lrc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-x1275/igt@i915_selftest@live@gt_lrc.html
    - fi-glk-dsi:         [PASS][22] -> [DMESG-FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-glk-dsi/igt@i915_selftest@live@gt_lrc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-glk-dsi/igt@i915_selftest@live@gt_lrc.html
    - bat-dg1-6:          NOTRUN -> [DMESG-FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@i915_selftest@live@gt_lrc.html
    - fi-glk-j4005:       [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-glk-j4005/igt@i915_selftest@live@gt_lrc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-glk-j4005/igt@i915_selftest@live@gt_lrc.html
    - fi-kbl-8809g:       [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-kbl-8809g/igt@i915_selftest@live@gt_lrc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-8809g/igt@i915_selftest@live@gt_lrc.html
    - fi-kbl-7500u:       [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-kbl-7500u/igt@i915_selftest@live@gt_lrc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-7500u/igt@i915_selftest@live@gt_lrc.html
    - fi-skl-guc:         [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-skl-guc/igt@i915_selftest@live@gt_lrc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-guc/igt@i915_selftest@live@gt_lrc.html
    - fi-kbl-7567u:       [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-kbl-7567u/igt@i915_selftest@live@gt_lrc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-7567u/igt@i915_selftest@live@gt_lrc.html
    - fi-icl-u2:          [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html
    - fi-cfl-8700k:       [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-cfl-8700k/igt@i915_selftest@live@gt_lrc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-cfl-8700k/igt@i915_selftest@live@gt_lrc.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {bat-jsl-2}:        NOTRUN -> [DMESG-FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-jsl-2/igt@i915_selftest@live@gt_lrc.html
    - {bat-rpls-2}:       [PASS][40] -> [DMESG-FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html
    - {fi-ehl-2}:         [PASS][42] -> [DMESG-FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-ehl-2/igt@i915_selftest@live@gt_lrc.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-ehl-2/igt@i915_selftest@live@gt_lrc.html
    - {fi-jsl-1}:         [PASS][44] -> [DMESG-FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html
    - {bat-jsl-1}:        [PASS][46] -> [DMESG-FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/bat-jsl-1/igt@i915_selftest@live@gt_lrc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-jsl-1/igt@i915_selftest@live@gt_lrc.html
    - {bat-dg2-9}:        [INCOMPLETE][48] ([i915#5270]) -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html
    - {bat-adlp-6}:       [PASS][50] -> [DMESG-FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_22520 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][52] ([i915#4086])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@gem_exec_gttfill@basic.html

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2190])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-skl-6600u:       NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#4613]) +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][55] ([i915#4083])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@gem_mmap@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][56] ([i915#4077]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][57] ([i915#4079]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - bat-dg1-6:          NOTRUN -> [SKIP][58] ([i915#1155])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-6:          NOTRUN -> [FAIL][59] ([i915#4032])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][60] ([i915#3921])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - bat-dg1-6:          NOTRUN -> [SKIP][61] ([i915#4212]) +7 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-6:          NOTRUN -> [SKIP][62] ([i915#4215])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_chamelium@hdmi-edid-read:
    - bat-dg1-6:          NOTRUN -> [SKIP][63] ([fdo#111827]) +8 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-skl-6600u:       NOTRUN -> [SKIP][64] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-dg1-6:          NOTRUN -> [SKIP][65] ([i915#4103] / [i915#4213]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][66] ([fdo#109271]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg1-6:          NOTRUN -> [SKIP][67] ([fdo#109285])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-6600u:       NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#533])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@cursor_plane_move:
    - bat-dg1-6:          NOTRUN -> [SKIP][69] ([i915#1072] / [i915#4078]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       NOTRUN -> [FAIL][70] ([i915#4547])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg1-6:          NOTRUN -> [SKIP][71] ([i915#3708]) +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-gtt:
    - bat-dg1-6:          NOTRUN -> [SKIP][72] ([i915#3708] / [i915#4077]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-userptr:
    - bat-dg1-6:          NOTRUN -> [SKIP][73] ([i915#3708] / [i915#4873])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][74] ([i915#4312] / [i915#5257])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][75] ([i915#4312])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][76] ([i915#4312] / [i915#5257] / [k.org#202321])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][77] ([i915#1436] / [i915#4312] / [i915#5257])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-7500u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][78] ([i915#4312] / [i915#5257])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bxt-dsi/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][79] ([i915#4312] / [i915#5257])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][80] ([i915#4312] / [i915#5257])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-cfl-guc/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][81] ([i915#4312] / [i915#5257] / [k.org#202321])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-glk-j4005/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][82] ([i915#1436] / [i915#4312] / [i915#5257])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][83] ([i915#1436] / [i915#4312] / [i915#5257])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][84] ([i915#1436] / [i915#4312] / [i915#5257])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6700k2/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][85] ([i915#1436] / [i915#4312] / [i915#5257])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][86] ([i915#4312] / [i915#5257])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-cfl-8700k/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][87] ([i915#4312] / [i915#5257])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-5/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][88] ([i915#1436] / [i915#4312] / [i915#5257])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-8809g/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][89] ([i915#4312])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - fi-bdw-5557u:       [INCOMPLETE][90] ([i915#5170]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-bdw-5557u/igt@i915_selftest@live@workarounds.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bdw-5557u/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][92] ([i915#3576]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][94] ([i915#2722] / [i915#4312]) -> [FAIL][95] ([i915#4312] / [i915#5257])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-skl-6600u/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4086]: https://gitlab.freedesktop.org/drm/intel/issues/4086
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5170]: https://gitlab.freedesktop.org/drm/intel/issues/5170
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Build changes
-------------

  * Linux: CI_DRM_11338 -> Patchwork_22520

  CI-20190529: 20190529
  CI_DRM_11338: 10d23ef3d24468332f37689a99d707e57c4d9a3f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6368: 60e5ffca027b38398c279fba0f5a1b7517aa6061 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22520: f1c7cca293ae0eae52bb60911d478b358b64f0ff @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f1c7cca293ae drm/i915/xehpsdv/dg1/tgl: Fix issue with LRI relative addressing
0bea204989fd drm/i915/selftest: Always cancel semaphore on error
9471cfa10d10 drm/i915/selftest: Clear the output buffers before GPU writes
f1e142a333b9 drm/i915/selftests: Check for incomplete LRI from the context image
51273c7f1609 drm/i915/gt: Explicitly clear BB_OFFSET for new contexts
77f682a3ce02 drm/i915/selftests: Flush the submission for lrc_isolation
ecc4a703ba82 drm/i915/selftests: Exercise cross-process context isolation
4b27420f08b0 drm/i915/selftests: Exercise relative mmio paths to non-privileged registers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/index.html

--===============5703580702797185608==
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
<tr><td><b>Series:</b></td><td>Patches for selftest_lrc</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101188/">https://patchwork.freedesktop.org/series/101188/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11338 -&gt; Patchwork_22520</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22520 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22520, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/index.html</p>
<h2>Participating hosts (48 -&gt; 42)</h2>
<p>Additional (1): bat-dg1-6 <br />
  Missing    (7): fi-kbl-soraka shard-tglu fi-tgl-1115g4 fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22520:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-cfl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-cfl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-cfl-8109u/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-cfl-8109u/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bdw-5557u/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-skl-6700k2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6700k2/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-bxt-dsi/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bxt-dsi/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/bat-dg1-5/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-5/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-bsw-kefka/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bsw-kefka/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-kbl-x1275/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-x1275/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-glk-dsi/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-glk-dsi/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-glk-j4005/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-glk-j4005/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-kbl-8809g/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-8809g/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-kbl-7500u/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-7500u/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-skl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-kbl-7567u/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-7567u/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-cfl-8700k/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-cfl-8700k/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>
<p>{bat-jsl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-jsl-2/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-ehl-2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-ehl-2/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/bat-jsl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-jsl-1/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5270">i915#5270</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22520 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4086">i915#4086</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4032">i915#4032</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-bdw-5557u/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5170">i915#5170</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-bdw-5557u/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11338/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22520/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11338 -&gt; Patchwork_22520</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11338: 10d23ef3d24468332f37689a99d707e57c4d9a3f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6368: 60e5ffca027b38398c279fba0f5a1b7517aa6061 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22520: f1c7cca293ae0eae52bb60911d478b358b64f0ff @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f1c7cca293ae drm/i915/xehpsdv/dg1/tgl: Fix issue with LRI relative addressing<br />
0bea204989fd drm/i915/selftest: Always cancel semaphore on error<br />
9471cfa10d10 drm/i915/selftest: Clear the output buffers before GPU writes<br />
f1e142a333b9 drm/i915/selftests: Check for incomplete LRI from the context image<br />
51273c7f1609 drm/i915/gt: Explicitly clear BB_OFFSET for new contexts<br />
77f682a3ce02 drm/i915/selftests: Flush the submission for lrc_isolation<br />
ecc4a703ba82 drm/i915/selftests: Exercise cross-process context isolation<br />
4b27420f08b0 drm/i915/selftests: Exercise relative mmio paths to non-privileged registers</p>

</body>
</html>

--===============5703580702797185608==--
