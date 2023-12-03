Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6392380211A
	for <lists+intel-gfx@lfdr.de>; Sun,  3 Dec 2023 06:31:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1400F10E256;
	Sun,  3 Dec 2023 05:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ABD8D10E256;
 Sun,  3 Dec 2023 05:31:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 83B99AADD2;
 Sun,  3 Dec 2023 05:31:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0316417477824495777=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Sun, 03 Dec 2023 05:31:43 -0000
Message-ID: <170158150349.25282.638174632130147945@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231201154443.16660-1-nirmoy.das@intel.com>
In-Reply-To: <20231201154443.16660-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Reduce_log_severity_on_reset_prepare=2E?=
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

--===============0316417477824495777==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Reduce log severity on reset prepare.
URL   : https://patchwork.freedesktop.org/series/127204/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13962_full -> Patchwork_127204v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127204v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127204v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-mtlp0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127204v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk3/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk3/igt@gem_exec_suspend@basic-s0@smem.html

  
Known issues
------------

  Here are the changes found in Patchwork_127204v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [FAIL][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#8411])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#7701]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#7701])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@virtual-busy:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#8414])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@drm_fdinfo@virtual-busy.html
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#8414]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@drm_fdinfo@virtual-busy.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#8555])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-hang.html
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#8555])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#280])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@execbuf:
    - shard-mtlp:         [PASS][61] -> [ABORT][62] ([i915#9262])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-mtlp-2/igt@gem_eio@execbuf.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-4/igt@gem_eio@execbuf.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][63] ([i915#7975] / [i915#8213])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4812]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@hog:
    - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#4812])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-dg2:          NOTRUN -> [FAIL][66] ([i915#9606])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_exec_capture@many-4k-zero.html
    - shard-mtlp:         NOTRUN -> [FAIL][67] ([i915#9606])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-tglu:         [PASS][68] -> [FAIL][69] ([i915#2842]) +2 other tests fail
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-tglu-7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-tglu-9/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_fence@concurrent:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#4812]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3539] / [i915#4852])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#3281]) +4 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-cpu-wc-active:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#3281]) +2 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-wc-active.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#4537] / [i915#4812])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#4613])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_mmap@short-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4083]) +3 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@basic-write-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4077]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_mmap_gtt@basic-write-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#4077])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_mmap_gtt@basic-write-gtt.html

  * igt@gem_mmap_gtt@hang-user:
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#4077])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@gem_mmap_gtt@hang-user.html

  * igt@gem_mmap_wc@write-read:
    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#4083]) +2 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_mmap_wc@write-read.html

  * igt@gem_pread@snoop:
    - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#3282]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@gem_pread@snoop.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4270])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_pxp@reject-modify-context-protection-off-1.html
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#4270])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#3282]) +2 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_readwrite@beyond-eob.html
    - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#3282])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#8428])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4879])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3297]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-dg2:          NOTRUN -> [FAIL][89] ([i915#3318])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_userptr_blits@vma-merge.html
    - shard-mtlp:         NOTRUN -> [FAIL][90] ([i915#3318])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([fdo#109289]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][92] -> [INCOMPLETE][93] ([i915#5566])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk9/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#2856])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gen9_exec_parse@basic-rejected.html
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#2856])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gen9_exec_parse@basic-rejected.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#6590])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#6621])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@i915_pm_rps@basic-api.html
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#6621])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@i915_pm_rps@basic-api.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#1769] / [i915#3555])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [PASS][100] -> [FAIL][101] ([i915#3743]) +2 other tests fail
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#6187])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#5190]) +7 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([fdo#111615]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4538] / [i915#5190]) +2 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_cdclk@plane-scaling@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#4087]) +3 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_cdclk@plane-scaling@pipe-c-edp-1.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4087]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_color@gamma:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([fdo#111827]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#7828]) +2 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#7828]) +3 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_chamelium_hpd@hdmi-hpd-storm.html

  * igt@kms_content_protection@uevent:
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#6944])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_content_protection@uevent.html
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#7118]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#3359]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#3546]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#4103] / [i915#4213])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([fdo#109274] / [i915#5354]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@single-bo@all-pipes:
    - shard-mtlp:         [PASS][117] -> [DMESG-WARN][118] ([i915#2017])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-mtlp-7/igt@kms_cursor_legacy@single-bo@all-pipes.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3555]) +3 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#3555] / [i915#3840] / [i915#4098])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#4881])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([fdo#109274]) +2 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-snb:          NOTRUN -> [SKIP][123] ([fdo#109271]) +7 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-snb2/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#3637])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#8810])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#2587] / [i915#2672])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#2672])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#2672]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#2672] / [i915#3555])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#2672] / [i915#3555])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#8708]) +10 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#8708])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#5354]) +22 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#8708]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#3458]) +8 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][136] ([fdo#111825]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#1825]) +10 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#3555] / [i915#8228]) +2 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#5235]) +2 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#3555] / [i915#5235])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#5235]) +15 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#5235]) +11 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg1-12/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#9683])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#9673] / [i915#9732]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][145] ([i915#5465]) +1 other test fail
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-snb2/igt@kms_setmode@basic@pipe-a-vga-1.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#8623])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#2437])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf_pmu@busy-idle-check-all@vcs0:
    - shard-dg2:          NOTRUN -> [FAIL][148] ([i915#4349]) +2 other tests fail
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@perf_pmu@busy-idle-check-all@vcs0.html
    - shard-mtlp:         NOTRUN -> [FAIL][149] ([i915#4349]) +1 other test fail
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@perf_pmu@busy-idle-check-all@vcs0.html

  * igt@perf_pmu@busy@vcs0:
    - shard-mtlp:         [PASS][150] -> [FAIL][151] ([i915#4349]) +1 other test fail
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-mtlp-5/igt@perf_pmu@busy@vcs0.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-3/igt@perf_pmu@busy@vcs0.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#3708] / [i915#4077])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#3708])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@prime_vgem@fence-flip-hang.html
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#3708])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@prime_vgem@fence-flip-hang.html

  * igt@v3d/v3d_job_submission@array-job-submission:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#2575]) +6 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@v3d/v3d_job_submission@array-job-submission.html

  * igt@v3d/v3d_submit_cl@single-out-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#2575]) +2 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@v3d/v3d_submit_cl@single-out-sync.html

  * igt@vc4/vc4_create_bo@create-bo-4096:
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#7711]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@vc4/vc4_create_bo@create-bo-4096.html

  * igt@vc4/vc4_mmap@mmap-bo:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#7711]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@vc4/vc4_mmap@mmap-bo.html

  * igt@vc4/vc4_wait_bo@unused-bo-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#7711]) +3 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@vc4/vc4_wait_bo@unused-bo-1ns.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][160] ([i915#5493]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [FAIL][162] ([i915#5138]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][164] ([i915#3743]) -> [PASS][165] +1 other test pass
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][166] ([i915#2346]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@forked-bo@all-pipes:
    - shard-mtlp:         [DMESG-WARN][168] ([i915#2017]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-mtlp-4/igt@kms_cursor_legacy@forked-bo@all-pipes.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_cursor_legacy@forked-bo@all-pipes.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-mtlp:         [FAIL][170] ([fdo#103375]) -> [PASS][171] +10 other tests pass
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-mtlp-8/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-2/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [FAIL][172] ([i915#6880]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * {igt@kms_pm_dc@dc6-dpms}:
    - shard-tglu:         [FAIL][174] ([i915#9295]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1:
    - shard-snb:          [FAIL][176] ([i915#9196]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
    - shard-mtlp:         [FAIL][178] ([i915#9196]) -> [PASS][179]
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html

  * igt@perf@enable-disable@0-rcs0:
    - shard-dg2:          [FAIL][180] ([i915#8724]) -> [PASS][181]
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-2/igt@perf@enable-disable@0-rcs0.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][182] ([i915#7484]) -> [PASS][183]
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@busy-double-start@rcs0:
    - shard-mtlp:         [FAIL][184] ([i915#4349]) -> [PASS][185]
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-mtlp-4/igt@perf_pmu@busy-double-start@rcs0.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@perf_pmu@busy-double-start@rcs0.html

  
#### Warnings ####

  * igt@kms_async_flips@crc@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][186] ([i915#8247]) -> [DMESG-FAIL][187] ([i915#8561]) +1 other test dmesg-fail
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-mtlp-7/igt@kms_async_flips@crc@pipe-b-edp-1.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-8/igt@kms_async_flips@crc@pipe-b-edp-1.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-dg2:          [SKIP][188] ([i915#9673] / [i915#9732]) -> [SKIP][189] ([i915#9673] / [i915#9736]) +3 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-dg2-2/igt@kms_psr@psr2_cursor_plane_move.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-11/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-dg2:          [SKIP][190] ([i915#9673]) -> [SKIP][191] ([i915#9673] / [i915#9732])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-dg2-11/igt@kms_psr@psr2_primary_mmap_gtt.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-1/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-dg2:          [SKIP][192] ([i915#9673] / [i915#9736]) -> [SKIP][193] ([i915#9673] / [i915#9732]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-dg2-11/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-dg2-1/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8724]: https://gitlab.freedesktop.org/drm/intel/issues/8724
  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
  [i915#9310]: https://gitlab.freedesktop.org/drm/intel/issues/9310
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9736]: https://gitlab.freedesktop.org/drm/intel/issues/9736


Build changes
-------------

  * Linux: CI_DRM_13962 -> Patchwork_127204v1
  * Piglit: None -> piglit_4509

  CI-20190529: 20190529
  CI_DRM_13962: 6915556fe478277b884730a627ad8ae1f4ab9efa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7614: c7298ec108dc1c861c9a2593e973648ad9b420b4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127204v1: 6915556fe478277b884730a627ad8ae1f4ab9efa @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/index.html

--===============0316417477824495777==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Reduce log severity on reset pr=
epare.</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/127204/">https://patchwork.freedesktop.org/series/127204/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127204v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13962_full -&gt; Patchwork_127204v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127204v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_127204v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-mtlp0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
127204v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0@smem:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-glk3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v=
1/shard-glk3/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127204v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13962/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13962/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13962/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13962/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13962/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13962/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13962/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3962/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13962/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13962/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13962/shard-glk1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
204v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_127204v1/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127204v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/sh=
ard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127204v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7204v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_127204v1/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127204v1/shard-glk5/boot.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/sh=
ard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127204v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7204v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_127204v1/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127204v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/sh=
ard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127204v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk1/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293=
">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@api_intel_bb@object-reloc=
-purge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7701">i915#7701</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@device_reset@unbind-cold-=
reset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@drm_fdinfo@virtual-busy.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/84=
14">i915#8414</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@drm_fdinfo@virtual-busy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/841=
4">i915#8414</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_ctx_persistence@heartbe=
at-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8555">i915#8555</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_ctx_persistence@heartb=
eat-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8555">i915#8555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/28=
0">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@execbuf:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-mtlp-2/igt@gem_eio@execbuf.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mtlp-=
4/igt@gem_eio@execbuf.html">ABORT</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@gem_eio@hibernate.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">i=
915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_exec_balancer@bonded-f=
alse-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@gem_exec_balancer@hog.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/481=
2">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_exec_capture@many-4k-ze=
ro.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9606">i915#9606</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_exec_capture@many-4k-z=
ero.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9606">i915#9606</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-tglu-7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7204v1/shard-tglu-9/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_exec_fence@concurrent=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_exec_flush@basic-wb-pr=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-g=
tt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-=
wc-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@gem_exec_schedule@preempt-=
queue-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_mmap@short-mmap.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">=
i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-gtt:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_mmap_gtt@basic-write-gt=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4077">i915#4077</a>) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_mmap_gtt@basic-write-g=
tt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4077">i915#4077</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang-user:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@gem_mmap_gtt@hang-user.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
77">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_mmap_wc@write-read.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
83">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@gem_pread@snoop.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i91=
5#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_pxp@reject-modify-conte=
xt-protection-off-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4270">i915#4270</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_pxp@reject-modify-cont=
ext-protection-off-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4270">i915#4270</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_readwrite@beyond-eob.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/32=
82">i915#3282</a>) +2 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_readwrite@beyond-eob.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
282">i915#3282</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-c=
cs-to-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@gem_unfence_active_buffer=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3318">i915#3318</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@gen7_exec_parse@chained-b=
atch.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-glk2/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/s=
hard-glk9/igt@gen9_exec_parse@allowed-all.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@gen9_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@gen9_exec_parse@basic-rejec=
ted.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2856">i915#2856</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6590">i915#6590</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@i915_pm_rps@basic-api.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6621=
">i915#6621</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@i915_pm_rps@basic-api.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6621"=
>i915#6621</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_127204v1/shard-tglu-10/igt@kms_big_fb@x-tiled-=
max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +2 other=
 tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-addfb.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5190">i915#5190</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +2 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_cdclk@plane-scaling@p=
ipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_cdclk@plane-scaling@pi=
pe-c-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_chamelium_color@gamma.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_chamelium_edid@hdmi-e=
did-stress-resolution-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_chamelium_hpd@hdmi-hpd=
-storm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_content_protection@uev=
ent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/6944">i915#6944</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_content_protection@ueve=
nt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7118">i915#7118</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-long=
-cursor-vs-flip-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3546">i915#3546</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-=
vs-flipa-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-bo@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-mtlp-7/igt@kms_cursor_legacy@single-bo@all-pipes.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127204v1/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/201=
7">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-pan=
el-8bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i9=
15#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/38=
40">i915#3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_fence_pin_leak.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">=
i915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_flip@2x-blocking-absol=
ute-wf_vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109274">fdo#109274</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-snb2/igt@kms_flip@2x-flip-vs-panning=
-vs-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_flip@2x-plain-flip-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8810">i915#8810<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i9=
15#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915=
#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +10 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bc-2p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +8 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +10 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-b-edp-1.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)=
 +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d-edp-1.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#523=
5</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-=
hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg1-12/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@kms_psr2_sf@overlay-plane-=
update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@kms_psr@psr2_cursor_render=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9673">i915#9673</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9732">i915#9732</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-snb2/igt@kms_setmode@basic@pipe-a-vg=
a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5465">i915#5465</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-check-all@vcs0:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@perf_pmu@busy-idle-check-al=
l@vcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4349">i915#4349</a>) +2 other tests fail</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@perf_pmu@busy-idle-check-a=
ll@vcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4349">i915#4349</a>) +1 other test fail</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-mtlp-5/igt@perf_pmu@busy@vcs0.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-mt=
lp-3/igt@perf_pmu@busy@vcs0.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4349">i915#4349</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-6/igt@prime_vgem@basic-gtt.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708"=
>i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-dg2-5/igt@prime_vgem@fence-flip-hang.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3708">i915#3708</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3708">i915#3708</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_job_submission@array-job-submission:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@v3d/v3d_job_submission@ar=
ray-job-submission.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2575">i915#2575</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@single-out-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@v3d/v3d_submit_cl@single-=
out-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_create_bo@create-bo-4096:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@vc4/vc4_create_bo@create-=
bo-4096.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg1-16/igt@vc4/vc4_mmap@mmap-bo.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7711=
">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@unused-bo-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127204v1/shard-dg2-10/igt@vc4/vc4_wait_bo@unused-bo=
-1ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7711">i915#7711</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i9=
15#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127204v1/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_127204v1/shard-tglu-2/igt@kms_big_fb@y-tiled=
-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a> +1 other test pas=
s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127204v1/shard-glk1/igt@kms_cursor_legacy@=
flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@forked-bo@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-mtlp-4/igt@kms_cursor_legacy@forked-bo@all-pipes.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2017">i915#2017</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_127204v1/shard-mtlp-5/igt@kms_cursor_legacy@forked-bo@all-pip=
es.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-mtlp-8/igt@kms_flip@flip-vs-suspend@b-edp1.html">FAIL</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#1=
03375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127204v1/shard-mtlp-2/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a=
> +10 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur=
-indfb-move.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6880">i915#6880</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_127204v1/shard-dg2-1/igt@kms_frontbuffer_tracking=
@fbc-1p-primscrn-cur-indfb-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_dc@dc6-dpms}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9295">i915#9295</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127204v1/=
shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-=
1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127204v1/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@=
pipe-a-vga-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-ed=
p-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127204v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-l=
eak@pipe-c-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8724">i915#8724</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
204v1/shard-dg2-2/igt@perf@enable-disable@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7204v1/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-mtlp-4/igt@perf_pmu@busy-double-start@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127204v1/shard-mtlp-5/igt@perf_pmu@busy-double-start@rcs0.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_async_flips@crc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-mtlp-7/igt@kms_async_flips@crc@pipe-b-edp-1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#=
8247</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_127204v1/shard-mtlp-8/igt@kms_async_flips@crc@pipe-b-edp-1.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8561">i=
915#8561</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-dg2-2/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#967=
3</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9732">i9=
15#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127204v1/shard-dg2-11/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9=
673</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9736">=
i915#9736</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-dg2-11/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#967=
3</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127204v1/shard-dg2-1/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#973=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13962/shard-dg2-11/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9736">i91=
5#9736</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127204v1/shard-dg2-1/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9732">i915=
#9732</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13962 -&gt; Patchwork_127204v1</li>
<li>Piglit: None -&gt; piglit_4509</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13962: 6915556fe478277b884730a627ad8ae1f4ab9efa @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7614: c7298ec108dc1c861c9a2593e973648ad9b420b4 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127204v1: 6915556fe478277b884730a627ad8ae1f4ab9efa @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0316417477824495777==--
