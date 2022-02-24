Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BB54C2E82
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 15:35:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD9510EA42;
	Thu, 24 Feb 2022 14:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7F70610EA1B;
 Thu, 24 Feb 2022 14:35:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79C7DA00E8;
 Thu, 24 Feb 2022 14:35:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6088767953648309436=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Thu, 24 Feb 2022 14:35:21 -0000
Message-ID: <164571332146.32676.17177466734512863112@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222181937.592346-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220222181937.592346-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg1=3A_Remove_require=5Fforce=5Fprobe_protection_=28rev2?=
 =?utf-8?q?=29?=
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

--===============6088767953648309436==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg1: Remove require_force_probe protection (rev2)
URL   : https://patchwork.freedesktop.org/series/100601/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11276_full -> Patchwork_22377_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22377_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_scaling@downscale-with-rotation-factor-2@pipe-d-downscale-with-rotation}:
    - {shard-dg1}:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-dg1-12/igt@kms_plane_scaling@downscale-with-rotation-factor-2@pipe-d-downscale-with-rotation.html

  
Known issues
------------

  Here are the changes found in Patchwork_22377_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][2] ([i915#4991]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl4/igt@gem_create@create-massive.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#232])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][5] ([i915#5076])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl7/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][6] ([i915#3371])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb5/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][7] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-skl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl3/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-glk:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#4613])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk5/igt@gem_lmem_swapping@parallel-random-verify.html
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-apl3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][18] ([i915#4991])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-apl3/igt@gem_userptr_blits@input-checking.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl2/igt@i915_suspend@sysfs-reader.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-apl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [PASS][23] -> [DMESG-WARN][24] ([i915#118])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3777])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777]) +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3777]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-apl4/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +7 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][30] ([fdo#109271]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk5/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl5/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109278] / [i915#3886]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb5/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +86 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-apl3/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@hdmi-cmp-planar-formats:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb5/igt@kms_chamelium@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl1/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-frame-dump:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-apl3/igt@kms_chamelium@vga-frame-dump.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-75:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl10/igt@kms_color_chamelium@pipe-d-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271]) +111 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-256x256-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#2346])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#533]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][44] ([i915#636])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#2122]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-glk:          [PASS][47] -> [FAIL][48] ([i915#1888] / [i915#2546])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_frontbuffer_tracking@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk1/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#2546])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109280]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-glk:          [PASS][52] -> [FAIL][53] ([i915#1888])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][55] ([fdo#108145] / [i915#265]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][56] ([fdo#108145] / [i915#265])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][57] ([i915#265])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][58] -> [FAIL][59] ([fdo#108145] / [i915#265]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#658])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl7/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-apl4/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl3/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109441])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#1722])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl10/igt@perf@polling-small-buf.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl2/igt@perf@polling-small-buf.html

  * igt@prime_nv_pcopy@test2:
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +92 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl7/igt@prime_nv_pcopy@test2.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][68] ([i915#5098])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb4/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-kbl:          NOTRUN -> [DMESG-FAIL][69] ([i915#5098])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl1/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2994]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl3/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2994]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl4/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@split-25:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2994])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-apl4/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-1us:
    - shard-tglb:         [TIMEOUT][73] ([i915#3063]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb1/igt@gem_eio@in-flight-1us.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-tglb1/igt@gem_eio@in-flight-1us.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][75] ([i915#4525]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][77] ([i915#2842]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          [FAIL][79] ([i915#2842]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-apl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - {shard-dg1}:        [SKIP][83] ([i915#1397]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [INCOMPLETE][85] ([i915#4939]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl10/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - {shard-tglu}:       [DMESG-WARN][87] ([i915#402]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglu-5/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-tglu-5/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][89] ([i915#118]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk8/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][91] ([i915#2346]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [FAIL][93] ([i915#4911]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
    - shard-glk:          [FAIL][95] ([i915#2546]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-iclb:         [FAIL][97] ([i915#1888] / [i915#2546]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-iclb:         [FAIL][99] ([i915#1888]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][101] ([i915#180]) -> [PASS][102] +8 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][105] ([i915#31]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@kms_setmode@basic.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-glk:          [FAIL][107] ([i915#43]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk1/igt@kms_vblank@pipe-c-accuracy-idle.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk9/igt@kms_vblank@pipe-c-accuracy-idle.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [DMESG-WARN][109] ([i915#5076]) -> [SKIP][110] ([i915#4525])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][111] ([i915#4525]) -> [DMESG-WARN][112] ([i915#5076]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][113] ([i915#2849]) -> [FAIL][114] ([i915#2842])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding:
    - shard-skl:          [SKIP][115] ([fdo#109271]) -> [SKIP][116] ([fdo#109271] / [i915#1888])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][117] ([i915#180]) -> [INCOMPLETE][118] ([i915#636])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][119] ([i915#2920]) -> [SKIP][120] ([fdo#111068] / [i915#658])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-iclb:         [SKIP][121] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][122] ([i915#4148]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb4/igt@kms_psr2_su@page_flip-nv12.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#4312] / [i915#602]) -> ([FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#4312])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl6/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl4/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl6/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl6/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl4/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl7/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl4/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl7/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl4/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl7/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl4/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl4/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl1/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl7/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl7/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl4/igt@runner@aborted.html
   [152

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/index.html

--===============6088767953648309436==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg1: Remove require_force_probe pro=
tection (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100601/">https://patchwork.freedesktop.org/series/100601/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22377/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22377/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11276_full -&gt; Patchwork_22377_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22377_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane_scaling@downscale-with-rotation-factor-2@pipe-d-downscal=
e-with-rotation}:<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-dg1-12/igt@kms_plane_scaling@downscale-=
with-rotation-factor-2@pipe-d-downscale-with-rotation.html">INCOMPLETE</a><=
/li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22377_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-kbl4/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-tg=
lb5/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-kbl7/igt@gem_exec_balancer@parallel.htm=
l">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-iclb5/igt@gem_exec_capture@pi@vecs0.htm=
l">INCOMPLETE</a> ([i915#3371])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22377/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.=
html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11276/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/sha=
rd-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-apl1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
377/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2237=
7/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#28=
42]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-skl3/igt@gem_lmem_swapping@parallel-ran=
dom.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22377/shard-glk5/igt@gem_lmem_swapping@parallel-rand=
om-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22377/shard-apl3/igt@gem_lmem_swapping@parallel-rand=
om-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-kbl6/igt@gem_lmem_swapping@verify-rando=
m.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-apl3/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2237=
7/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html">DMESG-WARN</a> ([i=
915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-apl2/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-=
apl1/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
377/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-WARN</a>=
 ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3=
777]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-kbl6/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#37=
77]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-apl4/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-kbl1/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-glk5/igt@kms_ccs@pipe-c-bad-aux-stride-=
y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-skl5/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-iclb5/igt@kms_ccs@pipe-c-ccs-on-another=
-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-apl3/igt@kms_cdclk@mode-transition.html=
">SKIP</a> ([fdo#109271]) +86 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-iclb5/igt@kms_chamelium@hdmi-cmp-planar=
-formats.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-kbl1/igt@kms_chamelium@hdmi-hpd-for-eac=
h-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-frame-dump:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-apl3/igt@kms_chamelium@vga-frame-dump.h=
tml">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-75:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-skl10/igt@kms_color_chamelium@pipe-d-ct=
m-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-3=
2x32-onscreen.html">SKIP</a> ([fdo#109271]) +111 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-=
256x256-offscreen.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22377/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic=
-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-skl3/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-kbl3/igt@kms_flip@flip-vs-suspend-inter=
ruptible@c-dp1.html">INCOMPLETE</a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22377/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-glk7/igt@kms_frontbuffer_tracking@basic.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/s=
hard-glk1/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> ([i915#1888] / =
[i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-s=
hrfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22377/shard-glk1/igt@kms_frontbuffer_tracking@fb=
c-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-iclb5/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-glk7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22377/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">=
FAIL</a> ([i915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22377/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-kbl7/igt@kms_psr2_sf@cursor-plane-updat=
e-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-apl4/igt@kms_psr2_su@page_flip-nv12.htm=
l">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-skl3/igt@kms_psr2_su@page_flip-xrgb8888=
.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/=
shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]=
)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-skl10/igt@perf@polling-small-buf.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-sk=
l2/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-kbl7/igt@prime_nv_pcopy@test2.html">SKI=
P</a> ([fdo#109271]) +92 similar issues</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-iclb4/igt@syncobj_timeline@invalid-tran=
sfer-non-existent-point.html">DMESG-WARN</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-kbl1/igt@syncobj_timeline@transfer-time=
line-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-skl3/igt@sysfs_clients@busy.html">SKIP<=
/a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-kbl4/igt@sysfs_clients@recycle.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-apl4/igt@sysfs_clients@split-25.html">S=
KIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-tglb1/igt@gem_eio@in-flight-1us.html">TIMEOUT</a> ([i91=
5#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22377/shard-tglb1/igt@gem_eio@in-flight-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22377/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22377/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-glk8/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22377/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-apl8/igt@gem_workarounds@suspend-resume-context.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22377/shard-apl3/igt@gem_workarounds@suspend-resume-con=
text.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SK=
IP</a> ([i915#1397]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22377/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>INCOMPLETE</a> ([i915#4939]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22377/shard-skl10/igt@i915_suspend@fence-restore-til=
ed2untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-tglu-5/igt@kms_big_fb@linear-16bpp-rotate-0.html">DMESG=
-WARN</a> ([i915#402]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22377/shard-tglu-5/igt@kms_big_fb@linear-16bpp-rotate-0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-glk2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">DMESG=
-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22377/shard-glk8/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atom=
ic.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22377/shard-skl7/igt@kms_cursor_legacy@flip-vs-cur=
sor-busy-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytileccs-upscaling.html">FAIL</a> ([i915#4911]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-glk7/igt@kms_flip_scal=
ed_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-glk2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-=
wc.html">FAIL</a> ([i915#2546]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22377/shard-glk8/igt@kms_frontbuffer_tracking@fbc-=
rgb565-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-iclb4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrf=
b-msflip-blt.html">FAIL</a> ([i915#1888] / [i915#2546]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb2/igt@kms_=
frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-iclb4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.ht=
ml">FAIL</a> ([i915#1888]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22377/shard-iclb2/igt@kms_pipe_crc_basic@suspend-read-c=
rc-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl3/igt@kms_plane@plan=
e-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a> +8 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a>=
 ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22377/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-glk8/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/sh=
ard-glk7/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-accuracy-idle:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-glk1/igt@kms_vblank@pipe-c-accuracy-idle.html">FAIL</a>=
 ([i915#43]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22377/shard-glk9/igt@kms_vblank@pipe-c-accuracy-idle.html">PASS</a></=
li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html">DME=
SG-WARN</a> ([i915#5076]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22377/shard-iclb5/igt@gem_exec_balancer@parallel-bb-firs=
t.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22377/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.ht=
ml">DMESG-WARN</a> ([i915#5076]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22377/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FA=
IL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding.ht=
ml">SKIP</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22377/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-32x1=
0-sliding.html">SKIP</a> ([fdo#109271] / [i915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WAR=
N</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22377/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">INCOM=
PLETE</a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22377/shard-iclb6/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-iclb4/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([f=
do#109642] / [fdo#111068] / [i915#658]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22377/shard-iclb2/igt@kms_psr2_su@page_fli=
p-nv12.html">FAIL</a> ([i915#4148]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11276/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11276/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11276/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl4/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11276/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl3/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_112=
76/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl6/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/=
shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl4/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/sha=
rd-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_11276/shard-kbl4/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-=
kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@runner@aborted.html">FAIL</a>)=
 ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#4312] / [i91=
5#602]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22377/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl4/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22377/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22377/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl4/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22377/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl4/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22377/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl1/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22377/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22377/shard-kbl7/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22377/shard-kbl4/igt@runner@aborted.html">FAIL</a>, [=
FAIL][152], [FAIL][153]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#24=
26] / [i915#3002] / [i915#4312])</li>
</ul>
</li>
</ul>
<p>[152</p>

</body>
</html>

--===============6088767953648309436==--
