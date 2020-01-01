Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 374A912DF74
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 17:29:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1AE289BD2;
	Wed,  1 Jan 2020 16:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A026789BB2;
 Wed,  1 Jan 2020 16:29:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 976A4A00E8;
 Wed,  1 Jan 2020 16:29:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jan 2020 16:29:43 -0000
Message-ID: <157789618359.5189.13092845924316227087@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200101141007.755429-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200101141007.755429-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Drop_local_vma-=3Evm=5Ffile_reference_=28rev2=29?=
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

Series: drm/i915/gem: Drop local vma->vm_file reference (rev2)
URL   : https://patchwork.freedesktop.org/series/71539/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7662_full -> Patchwork_15967_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15967_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#435])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb2/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb6/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb7/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-apl6/igt@gem_ctx_isolation@vecs0-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-apl4/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#679])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-glk4/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-glk2/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110841])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#461])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#108838] / [i915#435])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb2/igt@gem_exec_create@forked.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb6/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#463])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb2/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-tglb:         [PASS][21] -> [TIMEOUT][22] ([fdo#112126] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#707] / [i915#796])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb7/igt@gem_pipe_control_store_loop@reused-buffer.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb6/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_wait@await-vcs1:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#112080]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb2/igt@gem_wait@await-vcs1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb5/igt@gem_wait@await-vcs1.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#472])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb1/igt@i915_selftest@live_requests.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb6/igt@i915_selftest@live_requests.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#79])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#49])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#109])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145] / [i915#265]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-apl3/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-apl2/igt@kms_setmode@basic.html

  * igt@prime_vgem@wait-bsd2:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109276]) +11 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb2/igt@prime_vgem@wait-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb5/igt@prime_vgem@wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@file:
    - shard-skl:          [FAIL][45] ([i915#919]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl6/igt@gem_ctx_persistence@file.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-skl2/igt@gem_ctx_persistence@file.html
    - shard-apl:          [FAIL][47] ([i915#919]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-apl1/igt@gem_ctx_persistence@file.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-apl4/igt@gem_ctx_persistence@file.html
    - shard-glk:          [FAIL][49] ([i915#919]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-glk6/igt@gem_ctx_persistence@file.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-glk9/igt@gem_ctx_persistence@file.html
    - shard-kbl:          [FAIL][51] ([i915#919]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-kbl4/igt@gem_ctx_persistence@file.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-kbl2/igt@gem_ctx_persistence@file.html
    - shard-iclb:         [FAIL][53] ([i915#919]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb7/igt@gem_ctx_persistence@file.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb1/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-skl:          [FAIL][55] ([i915#918]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl5/igt@gem_ctx_persistence@smoketest.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-skl10/igt@gem_ctx_persistence@smoketest.html
    - shard-tglb:         [FAIL][57] ([i915#918]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb1/igt@gem_ctx_persistence@smoketest.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb1/igt@gem_ctx_persistence@smoketest.html
    - shard-kbl:          [FAIL][59] ([i915#918]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-kbl4/igt@gem_ctx_persistence@smoketest.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-kbl2/igt@gem_ctx_persistence@smoketest.html
    - shard-apl:          [FAIL][61] ([i915#918]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-apl3/igt@gem_ctx_persistence@smoketest.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-apl3/igt@gem_ctx_persistence@smoketest.html
    - shard-glk:          [FAIL][63] ([i915#918]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-glk6/igt@gem_ctx_persistence@smoketest.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-glk1/igt@gem_ctx_persistence@smoketest.html
    - shard-iclb:         [FAIL][65] ([i915#918]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb3/igt@gem_ctx_persistence@smoketest.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb1/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][67] ([fdo#109276] / [fdo#112080]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111735]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb6/igt@gem_ctx_shared@q-smoketest-vebox.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb8/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][71] ([i915#82]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-snb1/igt@gem_eio@kms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-snb6/igt@gem_eio@kms.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][73] ([fdo#112146]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][75] ([fdo#110854]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][77] ([i915#435]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb8/igt@gem_exec_nop@basic-series.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb2/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][79] ([i915#470]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb6/igt@gem_exec_parallel@fds.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb1/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][81] ([fdo#109276]) -> [PASS][82] +13 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html

  * {igt@gem_exec_schedule@pi-userfault-bsd}:
    - shard-iclb:         [SKIP][83] ([i915#677]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [INCOMPLETE][85] ([fdo#111606] / [fdo#111677]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-skl:          [DMESG-WARN][87] -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-skl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [FAIL][89] ([i915#520]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][91] ([i915#472]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb5/igt@gem_sync@basic-store-all.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb1/igt@gem_sync@basic-store-all.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +3 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-apl2/igt@i915_suspend@sysfs-reader.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [FAIL][95] ([i915#129]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl4/igt@kms_color@pipe-a-ctm-green-to-red.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-skl9/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-apl:          [FAIL][97] ([i915#54]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +6 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [FAIL][101] ([i915#52] / [i915#54]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][103] ([i915#34]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl9/igt@kms_flip@plain-flip-fb-recreate.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-skl4/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][105] ([i915#49]) -> [PASS][106] +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][107] ([fdo#108145]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][109] ([fdo#109642] / [fdo#111068]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][111] ([fdo#112080]) -> [PASS][112] +8 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb3/igt@perf_pmu@busy-check-all-vcs1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][113] ([IGT#28]) -> [SKIP][114] ([fdo#109276] / [fdo#112080])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#918]: https://gitlab.freedesktop.org/drm/intel/issues/918
  [i915#919]: https://gitlab.freedesktop.org/drm/intel/issues/919


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7662 -> Patchwork_15967

  CI-20190529: 20190529
  CI_DRM_7662: 44a89a2d9cc0e091fc1bb143aa5dcc0728d3ac90 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15967: 5e756e87063e9b1b3625dc6d724591643ed210a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15967/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
