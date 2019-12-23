Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B9F1295B2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 12:54:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D73D76E282;
	Mon, 23 Dec 2019 11:54:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C7AF6E277;
 Mon, 23 Dec 2019 11:54:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4366DA0019;
 Mon, 23 Dec 2019 11:54:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Dec 2019 11:54:07 -0000
Message-ID: <157710204724.16937.14626287606892473749@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191221144917.1040662-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191221144917.1040662-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJu?=
 =?utf-8?q?/i915=3A_Break_up_long_i915=5Fbuddy=5Ffree=5Flist=28=29_with_a_?=
 =?utf-8?q?cond=5Fresched=28=29?=
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

Series: drn/i915: Break up long i915_buddy_free_list() with a cond_resched()
URL   : https://patchwork.freedesktop.org/series/71248/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7617_full -> Patchwork_15871_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15871_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15871_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15871_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-snb1/igt@i915_selftest@mock_requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-snb5/igt@i915_selftest@mock_requests.html

  
Known issues
------------

  Here are the changes found in Patchwork_15871_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#435])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb7/igt@gem_busy@close-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb6/igt@gem_busy@close-race.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#476])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb4/igt@gem_exec_parallel@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb6/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111606] / [fdo#111677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([IGT#6])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#460])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([IGT#5])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#646] / [i915#667])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#456] / [i915#460])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb7/igt@kms_fbcon_fbt@psr-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#435] / [i915#474] / [i915#667])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-hsw7/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-hsw2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][31] ([fdo#111735]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb5/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-snb:          [INCOMPLETE][33] ([i915#82]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-snb1/igt@gem_eio@in-flight-contexts-immediate.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-snb4/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_balancer@smoke:
    - shard-tglb:         [INCOMPLETE][35] ([fdo#111593]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb3/igt@gem_exec_balancer@smoke.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][37] ([i915#435]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb4/igt@gem_exec_nop@basic-series.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb3/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][39] ([i915#470]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb6/igt@gem_exec_parallel@fds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb7/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@wide-render:
    - shard-kbl:          [INCOMPLETE][41] ([fdo#103665]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-kbl7/igt@gem_exec_schedule@wide-render.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-kbl2/igt@gem_exec_schedule@wide-render.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-apl7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][45] ([i915#472] / [i915#707]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb4/igt@gem_sync@basic-many-each.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb1/igt@gem_sync@basic-many-each.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][47] ([i915#435] / [i915#472]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb5/igt@gem_sync@basic-store-each.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb1/igt@gem_sync@basic-store-each.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-tglb:         [INCOMPLETE][49] ([i915#456] / [i915#460]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb7/igt@gem_workarounds@suspend-resume-context.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb1/igt@gem_workarounds@suspend-resume-context.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-glk:          [DMESG-WARN][51] ([i915#716]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-glk3/igt@gen9_exec_parse@allowed-single.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-glk1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [INCOMPLETE][53] ([i915#151] / [i915#69]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-skl3/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#112057]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb7/igt@i915_selftest@live_requests.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb4/igt@i915_selftest@live_requests.html

  * igt@i915_selftest@mock_requests:
    - shard-glk:          [DMESG-WARN][57] ([i915#802]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-glk3/igt@i915_selftest@mock_requests.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-glk4/igt@i915_selftest@mock_requests.html
    - shard-apl:          [DMESG-WARN][59] -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl2/igt@i915_selftest@mock_requests.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-apl6/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][63] ([i915#54]) -> [PASS][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
    - shard-skl:          [INCOMPLETE][65] ([i915#435]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-skl:          [FAIL][67] ([i915#52] / [i915#54]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][69] ([i915#79]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-apl:          [FAIL][71] ([i915#79]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][73] ([i915#34]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl3/igt@kms_flip@plain-flip-ts-check.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-skl3/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-tglb:         [INCOMPLETE][75] ([i915#474] / [i915#667]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [FAIL][77] ([i915#49]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [INCOMPLETE][79] ([i915#667]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][81] ([i915#123] / [i915#69]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [INCOMPLETE][83] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][85] ([fdo#108145]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][87] ([fdo#108145] / [i915#265]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         [FAIL][89] ([fdo#111842] / [i915#608]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb6/igt@kms_psr2_su@frontbuffer.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [DMESG-WARN][91] ([i915#402]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb3/igt@kms_psr@psr2_suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb6/igt@kms_psr@psr2_suspend.html

  * igt@perf@oa-exponents:
    - shard-tglb:         [FAIL][93] ([i915#84]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb6/igt@perf@oa-exponents.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-tglb5/igt@perf@oa-exponents.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][95] ([i915#444]) -> [INCOMPLETE][96] ([i915#82])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-snb4/igt@gem_eio@kms.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-snb1/igt@gem_eio@kms.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-snb:          [SKIP][97] ([fdo#109271]) -> [INCOMPLETE][98] ([i915#82])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-snb6/igt@i915_pm_dc@dc5-dpms.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-snb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][99], [FAIL][100]) ([i915#716] / [i915#873]) -> [FAIL][101] ([i915#716])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl2/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl3/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/shard-apl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111842]: https://bugs.freedesktop.org/show_bug.cgi?id=111842
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#802]: https://gitlab.freedesktop.org/drm/intel/issues/802
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873


Participating hosts (10 -> 9)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7617 -> Patchwork_15871

  CI-20190529: 20190529
  CI_DRM_7617: 69e01609b293c90f075f1ec63f2665c4714a477c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15871: 5ec4e55e9c468455ddab4843f821de6e7852af8c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
