Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B547B6475E2
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 20:03:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD0E10E4C0;
	Thu,  8 Dec 2022 19:03:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7609B10E4C0;
 Thu,  8 Dec 2022 19:03:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E88AAADDD;
 Thu,  8 Dec 2022 19:03:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9198198524015604655=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Thu, 08 Dec 2022 19:03:08 -0000
Message-ID: <167052618841.27413.17693493348122945341@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221208111217.3734461-1-andrzej.hajda@intel.com>
In-Reply-To: <20221208111217.3734461-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/display=3A_use_fetch=5Fand?=
 =?utf-8?q?=5Fzero_if_applicable?=
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

--===============9198198524015604655==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/display: use fetch_and_zero if applicable
URL   : https://patchwork.freedesktop.org/series/111772/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12480_full -> Patchwork_111772v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (14 -> 14)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111772v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_create@hog-create@smem0:
    - {shard-rkl}:        [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-5/igt@gem_create@hog-create@smem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@gem_create@hog-create@smem0.html
    - {shard-dg1}:        NOTRUN -> [CRASH][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-dg1-17/igt@gem_create@hog-create@smem0.html

  * igt@gem_ctx_isolation@preservation@vcs1:
    - {shard-dg1}:        NOTRUN -> [FAIL][4] +4 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-dg1-15/igt@gem_ctx_isolation@preservation@vcs1.html

  * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:
    - {shard-tglu-9}:     NOTRUN -> [SKIP][5] +18 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-tglu-9/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - {shard-rkl}:        [SKIP][6] ([i915#1845] / [i915#4098]) -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  
Known issues
------------

  Here are the changes found in Patchwork_111772v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all@dma_fence_chain:
    - shard-skl:          NOTRUN -> [INCOMPLETE][8] ([i915#6949])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl2/igt@dmabuf@all@dma_fence_chain.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#4525])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-glk7/igt@gem_exec_fair@basic-none@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-skl:          NOTRUN -> [SKIP][15] ([fdo#109271]) +186 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-iclb:         [PASS][16] -> [INCOMPLETE][17] ([i915#6453])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][18] -> [SKIP][19] ([i915#2190])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-tglb3/igt@gem_huc_copy@huc-copy.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613]) +4 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl1/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_spin_batch@user-each:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#2898])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-skl2/igt@gem_spin_batch@user-each.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl5/igt@gem_spin_batch@user-each.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][23] ([i915#3318])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl4/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][24] -> [DMESG-WARN][25] ([i915#5566] / [i915#716])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-glk8/igt@gen9_exec_parse@allowed-single.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-glk1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [PASS][26] -> [DMESG-WARN][27] ([i915#5591])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-tglb7/igt@i915_selftest@live@hangcheck.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-tglb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +9 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl2/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl2/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-apl:          [PASS][30] -> [FAIL][31] ([i915#2346])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#79])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [PASS][34] -> [INCOMPLETE][35] ([i915#1982] / [i915#4839])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#407])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-glk3/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-glk8/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#2122])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][42] ([i915#2122])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl4/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#2587] / [i915#2672]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#2672]) +4 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#2672] / [i915#3555])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1:
    - shard-skl:          [PASS][46] -> [INCOMPLETE][47] ([i915#7266])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#658])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [FAIL][49] ([i915#5939]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb2/igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109441]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb1/igt@kms_psr@psr2_no_drrs.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#1731])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl2/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Possible fixes ####

  * igt@fbdev@info:
    - {shard-rkl}:        [SKIP][54] ([i915#2582]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-5/igt@fbdev@info.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@fbdev@info.html

  * igt@feature_discovery@psr2:
    - {shard-rkl}:        [SKIP][56] ([i915#658]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-1/igt@feature_discovery@psr2.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@nonpriv-switch@bcs0:
    - {shard-rkl}:        [FAIL][58] -> [PASS][59] +3 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-3/igt@gem_ctx_isolation@nonpriv-switch@bcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-5/igt@gem_ctx_isolation@nonpriv-switch@bcs0.html

  * igt@gem_ctx_persistence@hang:
    - {shard-rkl}:        [SKIP][60] ([i915#6252]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-1/igt@gem_ctx_persistence@hang.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][62] ([i915#7112]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-skl4/igt@gem_eio@in-flight-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@suspend:
    - {shard-rkl}:        [FAIL][64] ([i915#7052]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-3/igt@gem_eio@suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-5/igt@gem_eio@suspend.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [SKIP][66] ([i915#4525]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][68] ([i915#2842]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-rkl}:        [FAIL][70] ([i915#2842]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - {shard-rkl}:        [SKIP][72] ([i915#3281]) -> [PASS][73] +6 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_readwrite@new-obj:
    - {shard-rkl}:        [SKIP][74] ([i915#3282]) -> [PASS][75] +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-3/igt@gem_readwrite@new-obj.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-5/igt@gem_readwrite@new-obj.html

  * igt@gen9_exec_parse@allowed-all:
    - {shard-rkl}:        [SKIP][76] ([i915#2527]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-1/igt@gen9_exec_parse@allowed-all.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_hangman@gt-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][78] ([i915#6258]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@i915_hangman@gt-engine-error@bcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - {shard-dg1}:        [FAIL][80] ([i915#3591]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-rkl}:        [SKIP][82] ([i915#1397]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [DMESG-FAIL][84] ([i915#5334]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_atomic@atomic_plane_damage:
    - {shard-rkl}:        [SKIP][86] ([i915#4098]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-5/igt@kms_atomic@atomic_plane_damage.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@kms_atomic@atomic_plane_damage.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - {shard-rkl}:        [SKIP][88] ([i915#1845] / [i915#4098]) -> [PASS][89] +24 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:
    - shard-skl:          [FAIL][90] -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-skl3/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl1/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [FAIL][92] ([i915#2346]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor@legacy:
    - shard-skl:          [FAIL][94] ([i915#2346]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html

  * igt@kms_dp_aux_dev:
    - shard-iclb:         [DMESG-WARN][96] ([i915#4391]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-iclb7/igt@kms_dp_aux_dev.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb2/igt@kms_dp_aux_dev.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [INCOMPLETE][98] -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-iclb:         [DMESG-WARN][100] ([i915#2867]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-iclb1/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb1/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][102] ([i915#2122]) -> [PASS][103] +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         [SKIP][104] ([i915#3555]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - {shard-rkl}:        [SKIP][106] ([i915#1849] / [i915#4098]) -> [PASS][107] +16 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_properties@crtc-properties-atomic:
    - {shard-rkl}:        [SKIP][108] ([i915#1849]) -> [PASS][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-5/igt@kms_properties@crtc-properties-atomic.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr@primary_render:
    - {shard-rkl}:        [SKIP][110] ([i915#1072]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-5/igt@kms_psr@primary_render.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@kms_psr@primary_render.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][112] ([fdo#109441]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:
    - {shard-rkl}:        [SKIP][114] ([i915#4070] / [i915#4098]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-1/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html

  * igt@perf@polling-small-buf:
    - {shard-rkl}:        [FAIL][116] ([i915#1722]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-1/igt@perf@polling-small-buf.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@perf@polling-small-buf.html

  * igt@prime_vgem@basic-fence-read:
    - {shard-rkl}:        [SKIP][118] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-rkl-1/igt@prime_vgem@basic-fence-read.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html

  
#### Warnings ####

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-skl:          [INCOMPLETE][120] ([i915#2295]) -> [SKIP][121] ([fdo#109271])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-skl1/igt@gem_pxp@protected-raw-src-copy-not-readible.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl2/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-iclb:         [WARN][122] ([i915#2684]) -> [FAIL][123] ([i915#2684] / [i915#3591])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
    - shard-apl:          [FAIL][124] ([i915#4573]) -> [DMESG-FAIL][125] ([IGT#6]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-apl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-apl8/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][126] ([i915#2920]) -> [SKIP][127] ([i915#658])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][128] ([i915#658]) -> [SKIP][129] ([i915#2920]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][130] ([i915#3002] / [i915#4312]) -> ([FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([i915#3002] / [i915#4312] / [i915#6949])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12480/shard-skl1/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl5/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl2/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl2/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2898]: https://gitlab.freedesktop.org/drm/intel/issues/2898
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6453]: https://gitlab.freedesktop.org/drm/intel/issues/6453
  [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7112]: https://gitlab.freedesktop.org/drm/intel/issues/7112
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7266]: https://gitlab.freedesktop.org/drm/intel/issues/7266
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12480 -> Patchwork_111772v1

  CI-20190529: 20190529
  CI_DRM_12480: a9aea5052a02b1be7eea4899eb0faf62bccdf351 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7085: 11af20de3877b23a244b816453bfc41d83591a15 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111772v1: a9aea5052a02b1be7eea4899eb0faf62bccdf351 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/index.html

--===============9198198524015604655==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/display:=
 use fetch_and_zero if applicable</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/111772/">https://patchwork.freedesktop.org/series/111772/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111772v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111772v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12480_full -&gt; Patchwork_111772v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (14 -&gt; 14)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
111772v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_create@hog-create@smem0:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12480/shard-rkl-5/igt@gem_create@hog-create@smem0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/s=
hard-rkl-6/igt@gem_create@hog-create@smem0.html">FAIL</a> +1 similar issue<=
/p>
</li>
<li>
<p>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111772v1/shard-dg1-17/igt@gem_create@hog-create@smem=
0.html">CRASH</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation@vcs1:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-dg1-15/igt@gem_ctx_isolation@preserv=
ation@vcs1.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>{shard-tglu-9}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-tglu-9/igt@kms_ccs@pipe-b-random-ccs=
-data-4_tiled_dg2_rc_ccs.html">SKIP</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-leg=
acy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-=
cursor-busy-crc-legacy.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111772v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence_chain:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-skl2/igt@dmabuf@all@dma_fence_chain.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6949">i915#6949</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11772v1/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-glk7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1=
/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11772v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-skl4/igt@gem_exec_fair@basic-pace@ve=
cs0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +186 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111772v1/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/645=
3">i915#6453</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-=
tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-skl1/igt@gem_lmem_swapping@heavy-ran=
dom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@user-each:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-skl2/igt@gem_spin_batch@user-each.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shar=
d-skl5/igt@gem_spin_batch@user-each.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2898">i915#2898</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-skl4/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-glk8/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v=
1/shard-glk1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-tglb7/igt@i915_selftest@live@hangcheck.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1=
/shard-tglb5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-skl2/igt@kms_ccs@pipe-a-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +9 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-skl2/igt@kms_chamelium@dp-hpd-enable=
-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111772v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor@atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111772v1/shard-glk8/igt@kms_flip@2x-flip-vs-e=
xpired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111772v1/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@a-ed=
p1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1982">i915#1982</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111772v1/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-glk3/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111772v1/shard-glk8/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407">=
i915#407</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111772v1/shard-skl5/igt@kms_flip@plain-flip-ts-check-interrupti=
ble@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-skl4/igt@kms_flip@plain-flip-ts-chec=
k@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp=
-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111772v1/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe=
-b-edp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7266">i915#7266</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-skl4/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111772v1/shard-iclb2/igt@kms_psr2_su@page_flip-p010=
@pipe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5939">i915#5939</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-i=
clb1/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1772v1/shard-skl2/igt@sysfs_heartbeat_interval@mixed@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</=
a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-5/igt@fbdev@info.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6=
/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-1/igt@feature_discovery@psr2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/s=
hard-rkl-6/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv-switch@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-3/igt@gem_ctx_isolation@nonpriv-switch@bcs0.html">F=
AIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111772v1/shard-rkl-5/igt@gem_ctx_isolation@nonpriv-switch@bcs0.html">PASS<=
/a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772=
v1/shard-rkl-1/igt@gem_ctx_persistence@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-skl4/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7112">i915#711=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111772v1/shard-skl5/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-3/igt@gem_eio@suspend.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/7052">i915#7052</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-=
rkl-5/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111772v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-subm=
it-fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111772v1/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111772v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i=
915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111772v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html"=
>PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-3/igt@gem_readwrite@new-obj.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/=
shard-rkl-5/igt@gem_readwrite@new-obj.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-1/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
772v1/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6258">i915#=
6258</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111772v1/shard-rkl-6/igt@i915_hangman@gt-engine-error@bcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i9=
15#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111772v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772=
v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i9=
15#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111772v1/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic_plane_damage:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-5/igt@kms_atomic@atomic_plane_damage.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#409=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111772v1/shard-rkl-6/igt@kms_atomic@atomic_plane_damage.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@kms_big_fb@y-tiled-=
max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying=
-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-skl3/igt@kms_cursor_legacy@basic-flip-after-cursor@atom=
ic-transitions-varying-size.html">FAIL</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl1/igt@kms_cursor_lega=
cy@basic-flip-after-cursor@atomic-transitions-varying-size.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111772v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-curso=
r@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">=
i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111772v1/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@legacy.htm=
l">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-iclb7/igt@kms_dp_aux_dev.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/=
shard-iclb2/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111772v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblan=
k-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-iclb1/igt@kms_flip@flip-vs-suspend@c-edp1.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2867">i=
915#2867</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111772v1/shard-iclb1/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i=
915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111772v1/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html"=
>PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-iclb3=
/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a=
-default-mode.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-=
indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@kms_frontbuf=
fer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> +16 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-5/igt@kms_properties@crtc-properties-atomic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i=
915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111772v1/shard-rkl-6/igt@kms_properties@crtc-properties-atomic.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-5/igt@kms_psr@primary_render.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1=
/shard-rkl-6/igt@kms_psr@primary_render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111772v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-1/igt@kms_universal_plane@universal-plane-pageflip-=
windowed-pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-rkl-6/igt@kms_universal_=
plane@universal-plane-pageflip-windowed-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-1/igt@perf@polling-small-buf.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1=
/shard-rkl-6/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-rkl-1/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i91=
5#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/370=
8">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111772v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS<=
/a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-skl1/igt@gem_pxp@protected-raw-src-copy-not-readible.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_111772v1/shard-skl2/igt@gem_pxp@protected-raw-src-copy-no=
t-readible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111772v1/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/359=
1">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-apl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4573">i915#4573</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111772v1/shard-apl8/igt@kms_plane_alpha_blend@alpha-basic@pip=
e-c-dp-1.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/igt-gpu-tools/issues/6">IGT#6</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111772v1/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_111772v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12480/shard-skl1/igt@runner@aborted.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1=
/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl5/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111772v1/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111772v1/shard-skl2/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111772v1/shard-skl1/igt@runner@aborted.html">FAIL</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#=
6949</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12480 -&gt; Patchwork_111772v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12480: a9aea5052a02b1be7eea4899eb0faf62bccdf351 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7085: 11af20de3877b23a244b816453bfc41d83591a15 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111772v1: a9aea5052a02b1be7eea4899eb0faf62bccdf351 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============9198198524015604655==--
