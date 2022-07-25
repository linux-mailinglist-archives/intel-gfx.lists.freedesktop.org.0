Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A22BD580367
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jul 2022 19:14:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4628C117A;
	Mon, 25 Jul 2022 17:14:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2CA5EC116C;
 Mon, 25 Jul 2022 17:14:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1BCD9AA0EA;
 Mon, 25 Jul 2022 17:14:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6384432779557592261=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Mon, 25 Jul 2022 17:14:40 -0000
Message-ID: <165876928009.20161.2589540347612582616@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220725141833.1970029-1-bob.beckett@collabora.com>
In-Reply-To: <20220725141833.1970029-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_stop_using_swiotlb_=28rev4=29?=
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

--===============6384432779557592261==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: stop using swiotlb (rev4)
URL   : https://patchwork.freedesktop.org/series/106589/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11935_full -> Patchwork_106589v4_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 13)
------------------------------

  Additional (3): shard-rkl shard-dg1 shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106589v4_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-75:
    - {shard-rkl}:        NOTRUN -> [SKIP][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-75.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11935_full and Patchwork_106589v4_full:

### New IGT tests (3) ###

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@hdmi-a-4-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@hdmi-a-4-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip@plain-flip-interruptible@d-hdmi-a1:
    - Statuses : 2 pass(s)
    - Exec time: [0.59, 0.66] s

  

Known issues
------------

  Here are the changes found in Patchwork_106589v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-4x:
    - shard-tglb:         NOTRUN -> [SKIP][2] ([i915#1839])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@feature_discovery@display-4x.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][3] -> [TIMEOUT][4] ([i915#3070])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb3/igt@gem_eio@unwedge-stress.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2842]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk8/igt@gem_exec_fair@basic-pace@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][10] -> [SKIP][11] ([fdo#109271])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-tglb:         NOTRUN -> [SKIP][12] ([fdo#109313])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-skl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-tglb:         NOTRUN -> [SKIP][14] ([i915#4613])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-tglb:         NOTRUN -> [SKIP][15] ([i915#4270])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#3297])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-tglb:         NOTRUN -> [SKIP][17] ([fdo#109289])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@gen7_exec_parse@basic-allocation.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][18] ([fdo#111644] / [i915#1397] / [i915#2411])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] ([i915#3614] / [i915#4939])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl6/igt@i915_pm_rpm@system-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-glk:          [PASS][21] -> [DMESG-WARN][22] ([i915#118] / [i915#1888])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk2/igt@i915_pm_rpm@system-suspend-modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-glk3/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#2521])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +22 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#5286]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +79 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl10/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#1888] / [i915#5138])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
    - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#1888] / [i915#5138])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][32] ([i915#3743])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111615]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl10/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3689] / [i915#3886]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#3689] / [i915#6095])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3689]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#111615] / [i915#3689]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-hpd-after-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_chamelium@dp-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-snb:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-snb4/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-b-ctm-green-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl9/igt@kms_color_chamelium@pipe-d-ctm-negative.html

  * igt@kms_cursor_crc@cursor-onscreen@pipe-a-edp-1-512x170:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3359]) +7 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_cursor_crc@cursor-onscreen@pipe-a-edp-1-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen@pipe-c-edp-1-32x10:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#4462]) +7 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_cursor_crc@cursor-onscreen@pipe-c-edp-1-32x10.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1:
    - shard-glk:          [PASS][46] -> [DMESG-WARN][47] ([i915#118])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-glk3/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#5287])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html

  * igt@kms_dsc@basic-dsc:
    - shard-snb:          NOTRUN -> [SKIP][49] ([fdo#109271]) +68 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-snb6/igt@kms_dsc@basic-dsc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][50] -> [INCOMPLETE][51] ([i915#4939])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109274] / [fdo#111825] / [i915#3637]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180]) +12 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#2122])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([i915#2672])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([i915#3555])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#2672]) +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#109280] / [fdo#111825]) +5 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         NOTRUN -> [FAIL][61] ([i915#160]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-skl:          [PASS][62] -> [DMESG-WARN][63] ([i915#1982])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
    - shard-kbl:          [PASS][64] -> [FAIL][65] ([i915#1188])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-kbl:          [PASS][66] -> [DMESG-FAIL][67] ([i915#180])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][68] -> [FAIL][69] ([fdo#108145] / [i915#265])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][71] ([i915#265])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#2920])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-tglb:         NOTRUN -> [FAIL][74] ([i915#132] / [i915#3467])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][75] -> [SKIP][76] ([fdo#109441])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#111615] / [i915#5289])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#2530])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html

  * igt@perf_pmu@rc6-suspend:
    - shard-apl:          [PASS][79] -> [DMESG-WARN][80] ([i915#180]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl4/igt@perf_pmu@rc6-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-apl8/igt@perf_pmu@rc6-suspend.html

  * igt@prime_nv_pcopy@test3_1:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#109291])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@prime_nv_pcopy@test3_1.html

  * igt@sysfs_clients@recycle:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2994])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl10/igt@sysfs_clients@recycle.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-snb:          [TIMEOUT][83] ([i915#5748]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-snb4/igt@gem_busy@close-race.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-snb6/igt@gem_busy@close-race.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-iclb:         [TIMEOUT][85] ([i915#3070]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb3/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][87] ([i915#4525]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-kbl:          [SKIP][89] ([fdo#109271]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][91] ([i915#2842]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglb:         [FAIL][93] ([i915#2842]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][95] ([i915#5129]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl10/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@perf@engine_cs:
    - shard-snb:          [SKIP][97] ([fdo#109271]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-snb2/igt@i915_selftest@perf@engine_cs.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-snb4/igt@i915_selftest@perf@engine_cs.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [INCOMPLETE][99] ([i915#3614] / [i915#4817]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@i915_suspend@forcewake.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@i915_suspend@forcewake.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][101] ([i915#79]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@busy-flip@c-edp1:
    - shard-skl:          [FAIL][103] ([i915#5726]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl4/igt@kms_flip@busy-flip@c-edp1.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl4/igt@kms_flip@busy-flip@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:
    - shard-tglb:         [DMESG-WARN][105] ([i915#2411] / [i915#2867]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][107] ([i915#2122]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-iclb:         [SKIP][109] ([i915#5176]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][111] ([fdo#109441]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][113] ([i915#1542]) -> [PASS][114] +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl1/igt@perf@blocking.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl6/igt@perf@blocking.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][115] ([i915#5639]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl9/igt@perf@polling-parameterized.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl7/igt@perf@polling-parameterized.html

  * igt@prime_self_import@export-vs-gem_close-race:
    - shard-tglb:         [FAIL][117] ([i915#6481]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb1/igt@prime_self_import@export-vs-gem_close-race.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-tglb1/igt@prime_self_import@export-vs-gem_close-race.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][119] ([i915#2852]) -> [FAIL][120] ([i915#2842])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][121] ([i915#658]) -> [SKIP][122] ([i915#588])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [FAIL][123] ([i915#4767]) -> [INCOMPLETE][124] ([i915#180] / [i915#4939])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-skl:          [SKIP][125] ([fdo#109271] / [i915#1888]) -> [SKIP][126] ([fdo#109271]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][127] ([i915#2920]) -> [SKIP][128] ([i915#658]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [SKIP][129] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][130] ([i915#5939])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb4/igt@kms_psr2_su@page_flip-p010.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][131], [FAIL][132]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl8/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-apl8/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-apl8/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-apl8/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-apl3/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][137], [FAIL][138]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl7/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl7/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl4/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl4/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl4/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl1/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl4/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#160]: https://gitlab.freedesktop.org/drm/intel/issues/160
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
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
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4778]: https://gitlab.freedesktop.org/drm/intel/issues/4778
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5129]: https://gitlab.freedesktop.org/drm/intel/issues/5129
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5726]: https://gitlab.freedesktop.org/drm/intel/issues/5726
  [i915#5748]: https://gitlab.freedesktop.org/drm/intel/issues/5748
  [i915#5775]: https://gitlab.freedesktop.org/drm/intel/issues/5775
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6331]: https://gitlab.freedesktop.org/drm/intel/issues/6331
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
  [i915#6481]: https://gitlab.freedesktop.org/drm/intel/issues/6481
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Build changes
-------------

  * Linux: CI_DRM_11935 -> Patchwork_106589v4

  CI-20190529: 20190529
  CI_DRM_11935: 2df3752997eeeba0843b7b1b9a27204a4e831355 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6594: 326629f105459f9bd201456a0454759628e6a43d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106589v4: 2df3752997eeeba0843b7b1b9a27204a4e831355 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/index.html

--===============6384432779557592261==
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
<tr><td><b>Series:</b></td><td>drm/i915: stop using swiotlb (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/106589/">https://patchwork.freedesktop.org/series/106589/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_106589v4/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106589v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11935_full -&gt; Patchwork_106589v=
4_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 13)</h2>
<p>Additional (3): shard-rkl shard-dg1 shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
106589v4_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-75:<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-rkl-5/igt@kms_plane_scaling@plane-do=
wnscale-with-modifiers-factor-0-75.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11935_full and Patchwork_1=
06589v4_full:</p>
<h3>New IGT tests (3)</h3>
<ul>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@hdmi-a-4-pi=
pe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@hdmi-a-4-pi=
pe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-interruptible@d-hdmi-a1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.59, 0.66] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106589v4_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@feature_discovery@display-=
4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb3/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard=
-iclb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3070">i915#3070</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-iclb4/igt@gem_exec_fair@basic-none@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
589v4/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-glk8/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4=
/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v=
4/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109313">fdo#109313</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-skl6/igt@gem_lmem_swapping@heavy-ver=
ify-random-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@gem_lmem_swapping@verify-r=
andom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@gem_pxp@verify-pxp-key-cha=
nge-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@gen7_exec_parse@basic-allo=
cation.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@i915_pm_rpm@dpms-mode-unse=
t-non-lpsp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111644">fdo#111644</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1397">i915#1397</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl6/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/sh=
ard-kbl6/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3614">i915#3614</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-glk2/igt@i915_pm_rpm@system-suspend-modeset.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
589v4/shard-glk3/igt@i915_pm_rpm@system-suspend-modeset.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i91=
5#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-c-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106589v4/shard-skl6/igt@kms_async_flips@alternate-sync-asy=
nc-flip@pipe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@kms_big_fb@4-tiled-16bpp-ro=
tate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-skl10/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +79 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-iclb1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6589v4/shard-iclb1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i915=
#5138</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
589v4/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5=
138</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-=
stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_big_fb@yf-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-skl10/igt@kms_ccs@pipe-a-crc-primary=
-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_ccs@pipe-a-random-ccs-=
data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_ccs@pipe-b-crc-primary=
-rotation-180-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@kms_ccs@pipe-b-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_ccs@pipe-d-bad-pixel-f=
ormat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3689">i915#3689</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_ccs@pipe-d-random-ccs-=
data-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-after-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_chamelium@dp-hpd-after=
-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-snb4/igt@kms_color_chamelium@pipe-a-=
ctm-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-green-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@kms_color_chamelium@pipe-b-=
ctm-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-skl9/igt@kms_color_chamelium@pipe-d-=
ctm-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen@pipe-a-edp-1-512x170:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_cursor_crc@cursor-onsc=
reen@pipe-a-edp-1-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3359">i915#3359</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen@pipe-c-edp-1-32x10:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_cursor_crc@cursor-onsc=
reen@pipe-c-edp-1-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4462">i915#4462</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-glk2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a=
-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_106589v4/shard-glk3/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-=
hdmi-a-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_draw_crc@draw-method-x=
rgb2101010-mmap-cpu-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@basic-dsc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-snb6/igt@kms_dsc@basic-dsc.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a>) +68 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/sha=
rd-skl1/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
74">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3637">i915#3637</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v=
4/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1=
2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_106589v4/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-inte=
rruptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-iclb1/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +5 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:</=
p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-draw-render.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/160">i915#160</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-re=
nder.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_106589v4/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010=
-draw-render.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6589v4/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_106589v4/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">DMESG=
-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_106589v4/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alp=
ha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-skl10/igt@kms_plane_alpha_blend@pipe=
-b-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-kbl6/igt@kms_plane_alpha_blend@pipe-=
b-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_psr2_sf@overlay-plane-=
move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-skl10/igt@kms_psr2_sf@primary-plane-=
update-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_psr@psr2_primary_page_=
flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3467">i915#3467</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shar=
d-iclb7/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@nouveau_crc@pipe-c-ctx-fli=
p-skip-current-frame.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-apl4/igt@perf_pmu@rc6-suspend.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-ap=
l8/igt@perf_pmu@rc6-suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@prime_nv_pcopy@test3_1.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
91">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106589v4/shard-skl10/igt@sysfs_clients@recycle.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-snb4/igt@gem_busy@close-race.html">TIMEOUT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5748">i915#5748</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/=
shard-snb6/igt@gem_busy@close-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html">TI=
MEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3070"=
>i915#3070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_106589v4/shard-iclb3/igt@gem_eio@in-flight-contexts-immediate.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i9=
15#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_106589v4/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl6/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_106589v4/shard-kbl7/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106589v4/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11935/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_106589v4/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5129">=
i915#5129</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106589v4/shard-skl10/igt@gem_workarounds@suspend-resume-fd.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf@engine_cs:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-snb2/igt@i915_selftest@perf@engine_cs.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06589v4/shard-snb4/igt@i915_selftest@perf@engine_cs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl4/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3614">i915#3614</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#=
4817</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106589v4/shard-kbl6/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-=
hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_106589v4/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblan=
k@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@busy-flip@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl4/igt@kms_flip@busy-flip@c-edp1.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5726">i915#5726</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589=
v4/shard-skl4/igt@kms_flip@busy-flip@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2411">i915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2867">i915#2867</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106589v4/shard-tglb7/igt@kms_flip@flip-vs-suspen=
d-interruptible@d-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i=
915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_106589v4/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-pixel-formats@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-iclb6/igt@=
kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-=
edp-1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_106589v4/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl1/igt@perf@blocking.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl=
6/igt@perf@blocking.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl9/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10658=
9v4/shard-skl7/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@export-vs-gem_close-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-tglb1/igt@prime_self_import@export-vs-gem_close-race.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/64=
81">i915#6481</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_106589v4/shard-tglb1/igt@prime_self_import@export-vs-gem_close-=
race.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915=
#2852</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_106589v4/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06589v4/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589=
v4/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-skl7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-i=
ndfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-skl6/igt@kms_frontb=
uffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_106589v4/shard-iclb1/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-iclb4/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642<=
/a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_106589v4/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5939">i915#59=
39</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-apl8/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106589v4/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-apl8/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_106589v4/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915=
#5257</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11935/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl7/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106589v4/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_106589v4/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl4/igt@=
runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_106589v4/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-=
kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106589v4/shard-kbl4/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589=
v4/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_106589v4/shard-kbl1/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/92">i915#92</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11935 -&gt; Patchwork_106589v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11935: 2df3752997eeeba0843b7b1b9a27204a4e831355 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6594: 326629f105459f9bd201456a0454759628e6a43d @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106589v4: 2df3752997eeeba0843b7b1b9a27204a4e831355 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6384432779557592261==--
