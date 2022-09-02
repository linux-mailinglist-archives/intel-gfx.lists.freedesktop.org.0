Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A508C5AAC64
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 12:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D2510E57E;
	Fri,  2 Sep 2022 10:30:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E77B10E57E;
 Fri,  2 Sep 2022 10:30:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 206F3A00A0;
 Fri,  2 Sep 2022 10:30:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8469126629123137477=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Fri, 02 Sep 2022 10:30:46 -0000
Message-ID: <166211464609.22602.12536021916311308370@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220901113011.12080-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220901113011.12080-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Start_using_REG=5FBIT*_macros?=
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

--===============8469126629123137477==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Start using REG_BIT* macros
URL   : https://patchwork.freedesktop.org/series/108021/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12061_full -> Patchwork_108021v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 12)
------------------------------

  Missing    (1): shard-rkl 

New tests
---------

  New tests have been introduced between CI_DRM_12061_full and Patchwork_108021v1_full:

### New IGT tests (6) ###

  * igt@gem_softpin@allocator-evict:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_softpin@allocator-evict@bcs0:
    - Statuses : 6 pass(s)
    - Exec time: [23.16, 43.36] s

  * igt@gem_softpin@allocator-evict@rcs0:
    - Statuses : 6 pass(s)
    - Exec time: [23.31, 36.17] s

  * igt@gem_softpin@allocator-evict@vcs0:
    - Statuses : 6 pass(s)
    - Exec time: [23.64, 37.74] s

  * igt@gem_softpin@allocator-evict@vcs1:
    - Statuses : 3 pass(s)
    - Exec time: [23.24, 28.34] s

  * igt@gem_softpin@allocator-evict@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [23.51, 38.21] s

  

Known issues
------------

  Here are the changes found in Patchwork_108021v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20]) -> ([PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [FAIL][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41]) ([i915#5032])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl10/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl10/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl10/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl10/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl4/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl4/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl4/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl4/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl5/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl9/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl9/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl9/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl9/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl9/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl9/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl7/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl6/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl6/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl10/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl10/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl10/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][42] -> [FAIL][43] ([i915#5784])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-tglb7/igt@gem_eio@kms.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-tglb1/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([i915#4525]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][46] -> [FAIL][47] ([i915#2842]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#2842])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-glk3/igt@gem_exec_fair@basic-none@vecs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
    - shard-snb:          NOTRUN -> [SKIP][50] ([fdo#109271]) +75 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-snb5/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#4613])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][52] -> [INCOMPLETE][53] ([i915#3921])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-snb6/igt@i915_selftest@live@hangcheck.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:
    - shard-glk:          [PASS][54] -> [FAIL][55] ([i915#2521])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +40 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#3886]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl6/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-snb:          NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-snb5/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium@vga-hpd-fast:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl6/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#2672]) +10 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#3555])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#2672] / [i915#3555])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-iclb:         [PASS][65] -> [SKIP][66] ([i915#5176]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][67] -> [SKIP][68] ([fdo#109441]) +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [FAIL][69] ([i915#6268]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-tglb6/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@legacy-engines-hostile@vebox:
    - {shard-dg1}:        [FAIL][71] ([i915#4883]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-dg1-19/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-dg1-19/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][73] ([i915#4525]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][75] ([i915#2842]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-tglb:         [FAIL][77] ([i915#2842]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [FAIL][79] ([i915#2842]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][81] ([i915#2190]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-tglb3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [INCOMPLETE][83] ([i915#3297]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [DMESG-FAIL][85] ([i915#5334]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-apl8/igt@i915_selftest@live@gt_heartbeat.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1:
    - shard-glk:          [FAIL][87] ([i915#2521]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@perf_pmu@busy-double-start@vcs0:
    - {shard-dg1}:        [FAIL][93] ([i915#4349]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-dg1-15/igt@perf_pmu@busy-double-start@vcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-dg1-19/igt@perf_pmu@busy-double-start@vcs0.html

  
#### Warnings ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [FAIL][95] ([i915#5784]) -> [TIMEOUT][96] ([i915#3063])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][97] ([i915#658]) -> [SKIP][98] ([i915#588])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][99] ([i915#658]) -> [SKIP][100] ([i915#2920]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][101] ([i915#2920]) -> [SKIP][102] ([fdo#111068] / [i915#658])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-apl3/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-apl7/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-apl7/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-apl2/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-apl2/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl6/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl1/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl1/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl7/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599


Build changes
-------------

  * Linux: CI_DRM_12061 -> Patchwork_108021v1

  CI-20190529: 20190529
  CI_DRM_12061: d25f068998ce803ef0a05883616344c0afcbc55a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6639: ba61c48dba71d5597d7297a07dc3e307665f961b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108021v1: d25f068998ce803ef0a05883616344c0afcbc55a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/index.html

--===============8469126629123137477==
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
<tr><td><b>Series:</b></td><td>drm/i915: Start using REG_BIT* macros</td></=
tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/108021/">https://patchwork.freedesktop.org/series/108021/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108021v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108021v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12061_full -&gt; Patchwork_108021v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 12)</h2>
<p>Missing    (1): shard-rkl </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12061_full and Patchwork_1=
08021v1_full:</p>
<h3>New IGT tests (6)</h3>
<ul>
<li>
<p>igt@gem_softpin@allocator-evict:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict@bcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [23.16, 43.36] s</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict@rcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [23.31, 36.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict@vcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [23.64, 37.74] s</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict@vcs1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [23.24, 28.34] s</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [23.51, 38.21] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108021v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12061/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl10/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl10/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12061/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12061/shard-skl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12061/shard-skl4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-sk=
l5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2061/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12061/shard-skl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shar=
d-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12061/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl9/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl9/bo=
ot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_108021v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021=
v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_108021v1/shard-skl7/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108021v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-s=
kl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_108021v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl5/boot.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v=
1/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_108021v1/shard-skl5/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_108021v1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_108021v1/shard-skl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-sk=
l4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_108021v1/shard-skl3/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl10/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v=
1/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_108021v1/shard-skl10/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-skl10/boo=
t.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/5032">i915#5032</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-tglb7/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-tglb1/igt@=
gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
08021v1/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v=
1/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-glk3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v=
1/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108021v1/shard-snb5/igt@gem_exec_fence@syncobj-back=
ward-timeline-chain-engines.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +75 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108021v1/shard-apl6/igt@gem_lmem_swapping@parallel-=
random-verify-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-snb6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/=
shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-b-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108021v1/shard-glk3/igt@kms_async_flips@alternate-sync-=
async-flip@pipe-b-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108021v1/shard-apl6/igt@kms_big_fb@4-tiled-max-hw-s=
tride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +40 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108021v1/shard-apl6/igt@kms_ccs@pipe-c-bad-aux-stri=
de-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108021v1/shard-snb5/igt@kms_chamelium@hdmi-crc-nonp=
lanar-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108021v1/shard-apl6/igt@kms_chamelium@vga-hpd-fast.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_108021v1/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108021v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108021v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108021v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-iclb7/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-pixel-formats@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-iclb3/igt@kms_pl=
ane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5176">i915#5176</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shar=
d-iclb7/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 similar issue=
s</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
108021v1/shard-tglb6/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile@vebox:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-dg1-19/igt@gem_ctx_persistence@legacy-engines-hostile@v=
ebox.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4883">i915#4883</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_108021v1/shard-dg1-19/igt@gem_ctx_persistence@legacy-eng=
ines-hostile@vebox.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_108021v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12061/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_108021v1/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html">PA=
SS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12061/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108021v1/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8021v1/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/=
shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3297=
">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_108021v1/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-apl8/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i9=
15#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_108021v1/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108021v1/shard-glk3/igt@kms_async_flips@alternate=
-sync-async-flip@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108021v1/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
108021v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-dg1-15/igt@perf_pmu@busy-double-start@vcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_108021v1/shard-dg1-19/igt@perf_pmu@busy-double-start@vcs0.html">PASS</a> =
+1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-tglb3/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1=
/shard-tglb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
08021v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_108021v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-co=
ntinuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12061/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108021v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12061/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-apl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12061/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-apl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12061/shard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#=
6599</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108021v1/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl1/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_108021v1/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108021v1/shard-apl7/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_108021v1/shard-apl8/igt@runner@aborted.html">FAIL</a>=
) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10=
9271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/6599">i915#6599</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12061 -&gt; Patchwork_108021v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12061: d25f068998ce803ef0a05883616344c0afcbc55a @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6639: ba61c48dba71d5597d7297a07dc3e307665f961b @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108021v1: d25f068998ce803ef0a05883616344c0afcbc55a @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8469126629123137477==--
