Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDB3174656
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 12:01:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE2846E2E4;
	Sat, 29 Feb 2020 11:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D1846E225;
 Sat, 29 Feb 2020 11:01:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9626EA7525;
 Sat, 29 Feb 2020 11:01:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 29 Feb 2020 11:01:26 -0000
Message-ID: <158297408659.19635.989260321138097953@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227204727.2009346-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200227204727.2009346-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Check_engine-is-awake_on_reset_later?=
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

Series: drm/i915/gt: Check engine-is-awake on reset later
URL   : https://patchwork.freedesktop.org/series/74041/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8023_full -> Patchwork_16746_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16746_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl8/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#1197] / [i915#1239])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb2/igt@gem_exec_schedule@preempt-bsd.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#72])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#1188]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([IGT#6])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl6/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-skl7/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#112080]) +17 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb5/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109276]) +22 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][29] ([fdo#112080]) -> [PASS][30] +5 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * {igt@gem_ctx_ringsize@active@bcs0}:
    - shard-iclb:         [INCOMPLETE][31] ([i915#1333]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb1/igt@gem_ctx_ringsize@active@bcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb5/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][33] ([fdo#109276] / [i915#677]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][35] ([i915#677]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +5 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-apl:          [INCOMPLETE][39] ([fdo#103927]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl2/igt@gem_exec_whisper@basic-contexts-forked.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-apl1/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-glk:          [DMESG-WARN][41] ([fdo#111870] / [i915#836]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-glk1/igt@gem_userptr_blits@sync-unmap-after-close.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-glk2/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
    - shard-skl:          [INCOMPLETE][45] ([i915#69]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl7/igt@gem_workarounds@suspend-resume-context.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-skl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [INCOMPLETE][47] -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][49] ([i915#454]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][51] ([i915#54]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-apl:          [FAIL][53] ([i915#54]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][55] ([IGT#5]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][57] ([i915#46]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [FAIL][61] ([i915#49]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][63] ([fdo#108145]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][65] ([i915#899]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb8/igt@kms_psr@psr2_sprite_plane_onoff.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][69] ([fdo#109276]) -> [PASS][70] +19 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][71] ([fdo#112080]) -> [FAIL][72] ([IGT#28])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][73] ([i915#468]) -> [FAIL][74] ([i915#454])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         [DMESG-FAIL][75] ([i915#1233]) -> [INCOMPLETE][76] ([i915#1233])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-tglb1/igt@i915_selftest@live@gt_lrc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-tglb1/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [DMESG-WARN][78] ([i915#180] / [i915#56])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-kbl6/igt@kms_flip@flip-vs-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-kbl6/igt@kms_flip@flip-vs-suspend.html

  * igt@runner@aborted:
    - shard-glk:          [FAIL][79] ([fdo#111870] / [k.org#202321]) -> [FAIL][80] ([k.org#202321])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-glk1/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/shard-glk6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1333]: https://gitlab.freedesktop.org/drm/intel/issues/1333
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8023 -> Patchwork_16746

  CI-20190529: 20190529
  CI_DRM_8023: fa9a02bbdfd6553ee633171f23183a115d0da577 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5474: 1be610f852de155cd915e7cda65cb2737adf04d4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16746: 80652fd6bc925a26ae98f3dcebd545a302a3589b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
