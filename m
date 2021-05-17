Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2A6383B52
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 19:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FC2D6EA1B;
	Mon, 17 May 2021 17:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6553E6EA19;
 Mon, 17 May 2021 17:31:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D430A0169;
 Mon, 17 May 2021 17:31:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Mon, 17 May 2021 17:31:49 -0000
Message-ID: <162127270937.27268.12252898718369936934@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210514181504.565252-1-lyude@redhat.com>
In-Reply-To: <20210514181504.565252-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Extract_DPCD_backlight_helpers_from_i915=2C_add_support_in_?=
 =?utf-8?q?nouveau_=28rev9=29?=
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
Content-Type: multipart/mixed; boundary="===============0659934825=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0659934825==
Content-Type: multipart/alternative;
 boundary="===============2937245243854716997=="

--===============2937245243854716997==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Extract DPCD backlight helpers from i915, add support in nouveau (rev9)
URL   : https://patchwork.freedesktop.org/series/84754/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10092 -> Patchwork_20137
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20137 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20137, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20137:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bdw-5557u/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-rkl-11500t}:    NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-rkl-11500t/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20137 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-snb-2520m:       NOTRUN -> [SKIP][4] ([fdo#109271]) +37 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][5] ([i915#2283])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_fence@basic-await@bcs0:
    - fi-bsw-n3050:       [PASS][6] -> [FAIL][7] ([i915#3457]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-bsw-n3050/igt@gem_exec_fence@basic-await@bcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bsw-n3050/igt@gem_exec_fence@basic-await@bcs0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-r:           NOTRUN -> [SKIP][8] ([fdo#109271]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@gem_exec_fence@basic-busy@bcs0.html
    - fi-apl-guc:         NOTRUN -> [SKIP][9] ([fdo#109271]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_fence@nb-await@bcs0:
    - fi-bsw-nick:        [PASS][10] -> [FAIL][11] ([i915#3457]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-glk-dsi:         NOTRUN -> [FAIL][12] ([i915#3457]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-guc:         NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#2190])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html
    - fi-glk-dsi:         NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#2190])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2190])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-r:           NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#2190])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#2190])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#2190])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html

  * igt@gem_wait@wait@all:
    - fi-bwr-2160:        [PASS][20] -> [FAIL][21] ([i915#3457])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-bwr-2160/igt@gem_wait@wait@all.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bwr-2160/igt@gem_wait@wait@all.html

  * igt@i915_hangman@error-state-basic:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][22] ([i915#1610])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-apl-guc/igt@i915_hangman@error-state-basic.html

  * igt@i915_module_load@reload:
    - fi-cfl-8700k:       NOTRUN -> [DMESG-WARN][23] ([i915#3457]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-snb-2520m:       NOTRUN -> [DMESG-WARN][24] ([i915#3457]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-cfl-guc:         NOTRUN -> [DMESG-WARN][25] ([i915#3457]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@i915_module_load@reload.html
    - fi-skl-6700k2:      NOTRUN -> [DMESG-WARN][26] ([i915#3457]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6700k2/igt@i915_module_load@reload.html
    - fi-glk-dsi:         NOTRUN -> [DMESG-FAIL][27] ([i915#3457])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@i915_module_load@reload.html
    - fi-kbl-x1275:       NOTRUN -> [DMESG-WARN][28] ([i915#3457]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           NOTRUN -> [DMESG-FAIL][29] ([i915#3462])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@i915_selftest@live@execlists.html
    - fi-cfl-8109u:       NOTRUN -> [INCOMPLETE][30] ([i915#3462])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-glk-dsi:         NOTRUN -> [DMESG-FAIL][31] ([i915#3462])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       NOTRUN -> [DMESG-FAIL][32] ([i915#3462])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-cfl-8700k:       NOTRUN -> [DMESG-FAIL][33] ([i915#3462])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
    - fi-skl-6700k2:      NOTRUN -> [DMESG-FAIL][34] ([i915#3462])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         NOTRUN -> [DMESG-FAIL][35] ([i915#3462])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@i915_selftest@live@execlists.html
    - fi-bdw-5557u:       NOTRUN -> [DMESG-FAIL][36] ([i915#3462])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bdw-5557u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@mman:
    - fi-kbl-r:           NOTRUN -> [DMESG-WARN][37] ([i915#3457]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@i915_selftest@live@mman.html
    - fi-bdw-5557u:       NOTRUN -> [DMESG-WARN][38] ([i915#3457]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bdw-5557u/igt@i915_selftest@live@mman.html
    - fi-cfl-8109u:       NOTRUN -> [DMESG-WARN][39] ([i915#3457]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@i915_selftest@live@mman.html
    - fi-glk-dsi:         NOTRUN -> [DMESG-WARN][40] ([i915#3457])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@i915_selftest@live@mman.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cfl-guc:         NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][43] ([fdo#109271]) +13 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-r:           NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-glk-dsi:         NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-snb-2520m:       NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-ilk-650:         [PASS][50] -> [FAIL][51] ([i915#53])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
    - fi-elk-e7500:       [PASS][52] -> [FAIL][53] ([i915#53])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#533])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#533])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#533])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#533])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-glk-dsi:         NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#533])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-r:           NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#533])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@cursor_plane_move:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][61] ([fdo#109271]) +9 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][62] ([fdo#109271]) +8 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@primary_page_flip:
    - fi-glk-dsi:         NOTRUN -> [SKIP][63] ([fdo#109271]) +10 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@kms_psr@primary_page_flip.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][64] ([fdo#109271]) +8 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-cfl-guc:         NOTRUN -> [SKIP][65] ([fdo#109271]) +8 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@kms_psr@sprite_plane_onoff.html

  * igt@prime_vgem@basic-userptr:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][66] ([fdo#109271]) +8 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-kbl-x1275:       NOTRUN -> [FAIL][67] ([i915#1436] / [i915#3363])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][68] ([i915#3363])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][69] ([i915#3363])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][70] ([i915#2426] / [i915#3363] / [k.org#202321])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][71] ([i915#2426] / [i915#3363])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][72] ([i915#1436] / [i915#3363])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][73] ([i915#3363])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][74] ([i915#1436] / [i915#2426] / [i915#3363])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6700k2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_busy@busy@all:
    - fi-bsw-n3050:       [FAIL][75] ([i915#3457]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-bsw-n3050/igt@gem_busy@busy@all.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bsw-n3050/igt@gem_busy@busy@all.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-bsw-nick:        [FAIL][77] ([i915#3457]) -> [PASS][78] +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_wait@busy@all:
    - fi-pnv-d510:        [FAIL][79] ([i915#3457]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-pnv-d510/igt@gem_wait@busy@all.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-pnv-d510/igt@gem_wait@busy@all.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][81] ([i915#2782]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - fi-elk-e7500:       [FAIL][83] ([i915#53]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-ilk-650:         [FAIL][85] ([i915#3457] / [i915#3472]) -> [FAIL][86] ([i915#3472])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload:
    - fi-skl-6600u:       [DMESG-WARN][87] ([i915#1982] / [i915#3457]) -> [DMESG-WARN][88] ([i915#3457])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-skl-6600u/igt@i915_module_load@reload.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6600u/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - fi-elk-e7500:       [DMESG-WARN][89] ([i915#3457]) -> [DMESG-FAIL][90] ([i915#3457])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-elk-e7500/igt@i915_selftest@live@mman.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-elk-e7500/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-kbl-guc:         [FAIL][91] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][92] ([i915#1436] / [i915#3363])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-kbl-guc/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3276]: https://gitlab.freedesktop.org/drm/intel/issues/3276
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3457]: https://gitlab.freedesktop.org/drm/intel/issues/3457
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#3468]: https://gitlab.freedesktop.org/drm/intel/issues/3468
  [i915#3472]: https://gitlab.freedesktop.org/drm/intel/issues/3472
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (21 -> 30)
------------------------------

  Additional (11): fi-rkl-11500t fi-bdw-5557u fi-glk-dsi fi-cfl-8700k fi-apl-guc fi-snb-2520m fi-cfl-guc fi-kbl-x1275 fi-cfl-8109u fi-skl-6700k2 fi-kbl-r 
  Missing    (2): fi-jsl-1 fi-ilk-m540 


Build changes
-------------

  * Linux: CI_DRM_10092 -> Patchwork_20137

  CI-20190529: 20190529
  CI_DRM_10092: 3fe31283a0eede655eff70823b5bb79441ff54c3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6084: 5c5734d8ee1afac871b69c4554ff14e9b56100e4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20137: f8abfe7849198d8aa9af7a00fd7f3f7b24d06128 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f8abfe784919 drm/nouveau/kms/nv50-: Add basic DPCD backlight support for nouveau
358a5c9c2820 drm/dp: Extract i915's eDP backlight code into DRM helpers
ae8b9f4c3c14 drm/i915/dpcd_bl: Print return codes for VESA backlight failures
951e57b8ef02 drm/i915/dpcd_bl: Return early in vesa_calc_max_backlight if we can't read PWMGEN_BIT_COUNT
1734428bc4f6 drm/i915/dpcd_bl: Move VESA backlight enabling code closer together
e0af14b198b5 drm/i915/dpcd_bl: Cache some backlight capabilities in intel_panel.backlight
30191a9431c2 drm/i915/dpcd_bl: Cleanup intel_dp_aux_vesa_enable_backlight() a bit
5f4e95c11492 drm/i915/dpcd_bl: Handle drm_dpcd_read/write() return values correctly
3ef024f74b90 drm/i915/dpcd_bl: Remove redundant AUX backlight frequency calculations

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/index.html

--===============2937245243854716997==
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
<tr><td><b>Series:</b></td><td>drm: Extract DPCD backlight helpers from i915, add support in nouveau (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84754/">https://patchwork.freedesktop.org/series/84754/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10092 -&gt; Patchwork_20137</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20137 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20137, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20137:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@runner@aborted:<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-rkl-11500t/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20137 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@bcs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-bsw-n3050/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bsw-n3050/igt@gem_exec_fence@basic-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@bcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-bwr-2160/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bwr-2160/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-apl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-snb-2520m/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6700k2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6700k2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bdw-5557u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bdw-5557u/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-bsw-n3050/igt@gem_busy@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bsw-n3050/igt@gem_busy@busy@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-pnv-d510/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-pnv-d510/igt@gem_wait@busy@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-skl-6600u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-skl-6600u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-elk-e7500/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-elk-e7500/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10092/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20137/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (21 -&gt; 30)</h2>
<p>Additional (11): fi-rkl-11500t fi-bdw-5557u fi-glk-dsi fi-cfl-8700k fi-apl-guc fi-snb-2520m fi-cfl-guc fi-kbl-x1275 fi-cfl-8109u fi-skl-6700k2 fi-kbl-r <br />
  Missing    (2): fi-jsl-1 fi-ilk-m540 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10092 -&gt; Patchwork_20137</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10092: 3fe31283a0eede655eff70823b5bb79441ff54c3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6084: 5c5734d8ee1afac871b69c4554ff14e9b56100e4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20137: f8abfe7849198d8aa9af7a00fd7f3f7b24d06128 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f8abfe784919 drm/nouveau/kms/nv50-: Add basic DPCD backlight support for nouveau<br />
358a5c9c2820 drm/dp: Extract i915's eDP backlight code into DRM helpers<br />
ae8b9f4c3c14 drm/i915/dpcd_bl: Print return codes for VESA backlight failures<br />
951e57b8ef02 drm/i915/dpcd_bl: Return early in vesa_calc_max_backlight if we can't read PWMGEN_BIT_COUNT<br />
1734428bc4f6 drm/i915/dpcd_bl: Move VESA backlight enabling code closer together<br />
e0af14b198b5 drm/i915/dpcd_bl: Cache some backlight capabilities in intel_panel.backlight<br />
30191a9431c2 drm/i915/dpcd_bl: Cleanup intel_dp_aux_vesa_enable_backlight() a bit<br />
5f4e95c11492 drm/i915/dpcd_bl: Handle drm_dpcd_read/write() return values correctly<br />
3ef024f74b90 drm/i915/dpcd_bl: Remove redundant AUX backlight frequency calculations</p>

</body>
</html>

--===============2937245243854716997==--

--===============0659934825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0659934825==--
