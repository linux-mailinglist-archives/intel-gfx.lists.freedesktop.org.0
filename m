Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CC0127B74
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 14:02:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0AD96EC2E;
	Fri, 20 Dec 2019 13:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE3756EC2A;
 Fri, 20 Dec 2019 13:02:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4F64A0019;
 Fri, 20 Dec 2019 13:02:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 20 Dec 2019 13:02:17 -0000
Message-ID: <157684693793.9213.17103639049656240682@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218210545.3975426-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191218210545.3975426-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Use_non-forcewake_wr?=
 =?utf-8?q?ites_for_RPS?=
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

Series: series starting with [1/2] drm/i915/gt: Use non-forcewake writes for RPS
URL   : https://patchwork.freedesktop.org/series/71136/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7601_full -> Patchwork_15834_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15834_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([fdo#111736])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb5/igt@gem_exec_await@wide-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb7/igt@gem_exec_await@wide-all.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#472] / [i915#707])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb1/igt@gem_sync@basic-many-each.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb4/igt@gem_sync@basic-many-each.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#435] / [i915#472])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb2/igt@gem_sync@basic-store-each.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb3/igt@gem_sync@basic-store-each.html

  * igt@gem_workarounds@suspend-resume:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#456] / [i915#460]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb3/igt@gem_workarounds@suspend-resume.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb3/igt@gem_workarounds@suspend-resume.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#54]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-random:
    - shard-hsw:          [PASS][11] -> [DMESG-WARN][12] ([IGT#6])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-hsw5/igt@kms_cursor_crc@pipe-c-cursor-128x42-random.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#474] / [i915#667])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#49])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane@pixel-format-pipe-c-planes:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl1/igt@kms_plane@pixel-format-pipe-c-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-skl3/igt@kms_plane@pixel-format-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#460])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@perf@short-reads:
    - shard-apl:          [PASS][31] -> [TIMEOUT][32] ([i915#51])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-apl6/igt@perf@short-reads.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-apl4/igt@perf@short-reads.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][33] ([fdo#111735]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb9/igt@gem_ctx_shared@q-smoketest-vebox.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb9/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-hsw:          [INCOMPLETE][35] ([i915#61]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-hsw2/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-hsw4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][37] ([i915#456] / [i915#472]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb1/igt@gem_exec_suspend@basic-s0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [TIMEOUT][39] ([i915#530]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb2/igt@gem_persistent_relocs@forked-thrashing.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb9/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][41] ([i915#644]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-tglb:         [INCOMPLETE][43] ([i915#456] / [i915#460]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb4/igt@gem_workarounds@suspend-resume-fd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb9/igt@gem_workarounds@suspend-resume-fd.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-skl:          [DMESG-WARN][45] ([i915#716]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [INCOMPLETE][47] ([fdo#112057]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb5/igt@i915_selftest@live_requests.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb1/igt@i915_selftest@live_requests.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-skl:          [FAIL][53] ([i915#54]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][55] ([i915#435] / [i915#456] / [i915#460]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb2/igt@kms_fbcon_fbt@fbc-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb9/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-apl:          [FAIL][57] ([i915#79]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-apl8/igt@kms_flip@flip-vs-expired-vblank.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-apl4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         [INCOMPLETE][59] ([i915#474] / [i915#667]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [FAIL][61] ([i915#49]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [INCOMPLETE][63] ([i915#435] / [i915#667]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][65] ([i915#648] / [i915#667]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@perf@oa-exponents:
    - shard-kbl:          [INCOMPLETE][67] ([fdo#103665]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-kbl7/igt@perf@oa-exponents.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-kbl3/igt@perf@oa-exponents.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
    - shard-tglb:         [SKIP][69] ([fdo#111912] / [fdo#112080]) -> [SKIP][70] ([fdo#112080]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb4/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-snb:          [INCOMPLETE][71] ([i915#82]) -> [SKIP][72] ([fdo#109271])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-snb6/igt@i915_pm_rpm@modeset-non-lpsp.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-snb6/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][73] ([fdo#112016] / [fdo#112021]) -> [SKIP][74] ([fdo#112021])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb4/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [INCOMPLETE][75] ([fdo#103665]) -> [DMESG-WARN][76] ([i915#180])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][77] ([i915#648] / [i915#667]) -> [INCOMPLETE][78] ([i915#648])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7601 -> Patchwork_15834

  CI-20190529: 20190529
  CI_DRM_7601: ae3554cfc3c170d7eab0229497d7b1d10256038f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15834: 8ed4dd52da109b11e7b8073b3d24e4acd295dd90 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15834/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
