Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4134E184396
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 10:21:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A226EBA2;
	Fri, 13 Mar 2020 09:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 36C906EBA1;
 Fri, 13 Mar 2020 09:20:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EE05A0094;
 Fri, 13 Mar 2020 09:20:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rajat Jain" <rajatja@google.com>
Date: Fri, 13 Mar 2020 09:20:58 -0000
Message-ID: <158409125818.30352.9823619154149699155@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312185629.141280-1-rajatja@google.com>
In-Reply-To: <20200312185629.141280-1-rajatja@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915_Support_for_integrated_privacy_screen?=
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

Series: drm/i915 Support for integrated privacy screen
URL   : https://patchwork.freedesktop.org/series/74650/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8127_full -> Patchwork_16957_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16957_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-tglb6/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-apl2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-apl2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb7/igt@gem_exec_schedule@wide-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112080]) +8 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb4/igt@i915_hangman@error-state-capture-vcs1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb7/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - shard-hsw:          [PASS][23] -> [INCOMPLETE][24] ([i915#61])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-hsw1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-hsw5/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_draw_crc@fill-fb:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#52])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-glk3/igt@kms_draw_crc@fill-fb.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-glk6/igt@kms_draw_crc@fill-fb.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#221])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#648] / [i915#69])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#899])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-apl1/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-apl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109276]) +27 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +14 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb7/igt@gem_exec_schedule@fifo-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [i915#677]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][53] ([i915#677]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-tglb:         [TIMEOUT][55] ([i915#1408]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-tglb6/igt@gem_exec_whisper@basic-fds-forked.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-tglb2/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [INCOMPLETE][57] ([i915#69]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl6/igt@gem_workarounds@suspend-resume.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-skl4/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +5 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][61] ([i915#454]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][63] ([i915#413]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-tglb6/igt@i915_pm_rps@reset.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-tglb6/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][65] ([i915#413]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb5/igt@i915_pm_rps@waitboost.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb5/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][67] ([i915#72]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][69] ([IGT#5] / [i915#697]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled:
    - shard-skl:          [FAIL][71] ([i915#52] / [i915#54]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][73] ([i915#123] / [i915#69]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][75] ([i915#1188]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +5 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][79] ([fdo#108145]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][81] ([fdo#108145] / [i915#265]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][83] ([fdo#109441]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][85] ([fdo#112080]) -> [PASS][86] +8 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/shard-iclb3/igt@perf_pmu@init-busy-vcs1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1408]: https://gitlab.freedesktop.org/drm/intel/issues/1408
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8127 -> Patchwork_16957

  CI-20190529: 20190529
  CI_DRM_8127: 6b843f994832ac95eafa8d380399c3aef2cab3e5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5506: 59fd8a0d01dac58dc6c7d86ef391ed4393ab5aae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16957: 6d59d9dc39bf79232460b974d3909abcf8682925 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
