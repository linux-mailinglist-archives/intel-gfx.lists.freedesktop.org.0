Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D7E160122
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2020 00:32:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10FC16E02B;
	Sat, 15 Feb 2020 23:32:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C37CF6E02B;
 Sat, 15 Feb 2020 23:32:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB2D4A0118;
 Sat, 15 Feb 2020 23:32:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Sat, 15 Feb 2020 23:32:18 -0000
Message-ID: <158180953873.4009.17670588396279233603@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200212102942.26568-1-ramalingam.c@intel.com>
In-Reply-To: <20200212102942.26568-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSERD?=
 =?utf-8?q?P_misc_=28rev2=29?=
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

Series: HDCP misc (rev2)
URL   : https://patchwork.freedesktop.org/series/73345/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7926_full -> Patchwork_16539_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7926_full and Patchwork_16539_full:

### New IGT tests (3) ###

  * igt@kms_content_protection@atomic-dpms:
    - Statuses : 2 fail(s) 5 skip(s)
    - Exec time: [0.0, 124.75] s

  * igt@kms_psr2_su@frontbuffer:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 0.31] s

  * igt@kms_psr2_su@page_flip:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 0.22] s

  

Known issues
------------

  Here are the changes found in Patchwork_16539_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_caching@read-writes:
    - shard-hsw:          [PASS][1] -> [FAIL][2] ([i915#694])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw7/igt@gem_caching@read-writes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-hsw1/igt@gem_caching@read-writes.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +12 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +15 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#454])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl8/igt@i915_suspend@forcewake.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-skl2/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#1149])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb7/igt@kms_color@pipe-a-gamma.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-tglb2/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#49])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl2/igt@kms_frontbuffer_tracking@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-skl4/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_properties@get_properties-sanity-atomic:
    - shard-hsw:          [PASS][27] -> [INCOMPLETE][28] ([i915#61])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw1/igt@kms_properties@get_properties-sanity-atomic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-hsw1/igt@kms_properties@get_properties-sanity-atomic.html

  * igt@kms_psr2_su@frontbuffer (NEW):
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-tglb:         [PASS][33] -> [SKIP][34] ([i915#668]) +7 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb7/igt@kms_psr@psr2_cursor_plane_onoff.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-tglb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@perf@oa-exponents:
    - shard-hsw:          [PASS][35] -> [FAIL][36] ([i915#84])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw1/igt@perf@oa-exponents.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-hsw5/igt@perf@oa-exponents.html

  
#### Possible fixes ####

  * igt@gem_caching@reads:
    - shard-hsw:          [FAIL][37] ([i915#694]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw6/igt@gem_caching@reads.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-hsw5/igt@gem_caching@reads.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#110841]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][41] ([fdo#110854]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][43] ([i915#677]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][47] ([i915#644]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [INCOMPLETE][49] ([i915#716]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [INCOMPLETE][51] ([fdo#103665] / [fdo#112219]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl4/igt@i915_suspend@forcewake.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - shard-glk:          [FAIL][55] ([i915#52] / [i915#54]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-glk5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][57] ([i915#79]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][59] ([i915#34]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [FAIL][61] ([i915#49]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * {igt@kms_hdr@bpc-switch-dpms}:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [FAIL][65] ([i915#53]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][69] ([fdo#108145]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][71] ([i915#899]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb1/igt@kms_psr@psr2_no_drrs.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][75] ([i915#31]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl7/igt@kms_setmode@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-apl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][77] ([fdo#112080]) -> [PASS][78] +9 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@perf_pmu@busy-vcs1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][79] ([fdo#109276]) -> [PASS][80] +21 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][81] ([IGT#28]) -> [SKIP][82] ([fdo#112080])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][83] ([i915#818]) -> [FAIL][84] ([i915#694]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw5/igt@gem_tiled_blits@normal.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-hsw6/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][85] ([i915#454]) -> [SKIP][86] ([i915#468])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-snb:          [SKIP][87] ([fdo#109271]) -> [INCOMPLETE][88] ([i915#82])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-snb6/igt@i915_pm_rpm@system-suspend-execbuf.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/shard-snb6/igt@i915_pm_rpm@system-suspend-execbuf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112219]: https://bugs.freedesktop.org/show_bug.cgi?id=112219
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7926 -> Patchwork_16539

  CI-20190529: 20190529
  CI_DRM_7926: 6b2fe829d300abf285e9db8b252ffacd216df3ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16539: 3e84cadbe86fb79e9872d92a1d850f08e47c3c29 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16539/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
