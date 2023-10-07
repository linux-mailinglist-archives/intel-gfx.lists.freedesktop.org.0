Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 422467BC654
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Oct 2023 11:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2498510E11D;
	Sat,  7 Oct 2023 09:06:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3162210E0DC;
 Sat,  7 Oct 2023 09:06:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26593AADF2;
 Sat,  7 Oct 2023 09:06:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4001272776528811102=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Sat, 07 Oct 2023 09:06:16 -0000
Message-ID: <169666957610.8262.8702088228123709863@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231006083103.660153-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20231006083103.660153-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgVHJp?=
 =?utf-8?q?m_some_pre-production_code_=28rev2=29?=
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

--===============4001272776528811102==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Trim some pre-production code (rev2)
URL   : https://patchwork.freedesktop.org/series/124705/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13722_full -> Patchwork_124705v2_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-tglu0 

Known issues
------------

  Here are the changes found in Patchwork_124705v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][1] ([i915#9408])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@busy@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][2] ([i915#8414]) +11 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@drm_fdinfo@busy@ccs0.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [PASS][3] -> [FAIL][4] ([i915#7742])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg1:          NOTRUN -> [SKIP][5] ([i915#7697])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_basic@multigpu-create-close.html
    - shard-tglu:         NOTRUN -> [SKIP][6] ([i915#7697])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         NOTRUN -> [FAIL][7] ([i915#6268])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg2:          NOTRUN -> [SKIP][8] ([fdo#109314])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8555])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#5882]) +9 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#280])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@in-flight-suspend:
    - shard-mtlp:         [PASS][12] -> [ABORT][13] ([i915#7892] / [i915#9262])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-mtlp-2/igt@gem_eio@in-flight-suspend.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-mtlp-4/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@kms:
    - shard-dg2:          [PASS][14] -> [INCOMPLETE][15] ([i915#1982] / [i915#7892])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-11/igt@gem_eio@kms.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg1:          NOTRUN -> [SKIP][16] ([i915#4771])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][17] ([i915#2842])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#3539]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_flush@basic-wb-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#3539] / [i915#4852]) +2 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_exec_flush@basic-wb-prw-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([fdo#109283] / [i915#5107])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([fdo#112283])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#3281])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_exec_reloc@basic-cpu-read-active.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#3281]) +10 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4537] / [i915#4812])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#4812])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#4860]) +3 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#4860])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-tglu:         NOTRUN -> [SKIP][28] ([i915#4613]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@random:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#4613])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-apl3/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          NOTRUN -> [TIMEOUT][30] ([i915#5493])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#8289])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_gtt@basic-read-write:
    - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#4077]) +4 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_mmap_gtt@basic-read-write.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4077]) +8 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4083]) +3 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_mmap_wc@close.html

  * igt@gem_mmap_wc@coherency:
    - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#4083]) +1 other test skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_mmap_wc@coherency.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#3282])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#4270])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4270]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#4270]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3282]) +2 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_readwrite@beyond-eob.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4079])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4885])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#3297]) +4 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#3297])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
    - shard-tglu:         NOTRUN -> [SKIP][45] ([i915#3297]) +1 other test skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#3297] / [i915#4880])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3297] / [i915#4880])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gen3_render_linear_blits:
    - shard-dg1:          NOTRUN -> [SKIP][48] ([fdo#109289])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gen3_render_linear_blits.html
    - shard-tglu:         NOTRUN -> [SKIP][49] ([fdo#109289]) +2 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#2856]) +4 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][51] -> [DMESG-WARN][52] ([i915#8617])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#8399]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][54] -> [SKIP][55] ([i915#1397]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-3/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#1397])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@i915_pm_rpm@modeset-lpsp-stress.html
    - shard-dg1:          [PASS][57] -> [SKIP][58] ([i915#1397])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-12/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [PASS][59] -> [SKIP][60] ([i915#1397]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-11/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_pm_rpm@pc8-residency:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([fdo#109506])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@i915_pm_rpm@pc8-residency.html

  * igt@i915_query@query-topology-unsupported:
    - shard-dg1:          NOTRUN -> [SKIP][62] ([fdo#109302])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@i915_query@query-topology-unsupported.html
    - shard-tglu:         NOTRUN -> [SKIP][63] ([fdo#109302])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@i915_query@query-topology-unsupported.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][64] ([i915#7443])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4215] / [i915#5190])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4212])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][67] ([i915#8247]) +3 other tests fail
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([fdo#111614]) +2 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][69] ([fdo#111615] / [i915#5286])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [PASS][70] -> [FAIL][71] ([i915#3743])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#3638])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
    - shard-tglu:         NOTRUN -> [SKIP][73] ([fdo#111614]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#5190]) +11 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#4538]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
    - shard-tglu:         NOTRUN -> [SKIP][76] ([fdo#111615]) +2 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4538] / [i915#5190]) +3 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271]) +5 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-glk7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#3689] / [i915#3886] / [i915#5354] / [i915#6095])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs_cc:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#5354] / [i915#6095]) +6 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#3689] / [i915#3886] / [i915#5354]) +11 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs_cc:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#5354] / [i915#6095]) +3 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-glk7/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#3689] / [i915#5354] / [i915#6095]) +3 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_mtl_mc_ccs:
    - shard-mtlp:         [PASS][85] -> [ABORT][86] ([i915#9262])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-mtlp-4/igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_mtl_mc_ccs.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-mtlp-4/igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_mtl_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-yf_tiled_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][87] ([fdo#111615] / [i915#3689] / [i915#5354] / [i915#6095]) +4 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_ccs@pipe-d-bad-rotation-90-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3689] / [i915#5354]) +19 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#3689] / [i915#5354] / [i915#6095]) +5 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4087] / [i915#7213]) +2 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#7213])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4087]) +3 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html

  * igt@kms_chamelium_color@ctm-0-25:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([fdo#111827])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_chamelium_color@ctm-0-25.html
    - shard-tglu:         NOTRUN -> [SKIP][94] ([fdo#111827]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_chamelium_color@ctm-0-25.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([fdo#111827]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#7828]) +7 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#7828])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#7828]) +2 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][99] ([i915#7173])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#7118]) +2 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#3555])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3359])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#3359]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#3359])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([fdo#109274] / [i915#5354]) +4 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#4103])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][107] ([fdo#109274])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271]) +5 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-apl3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@forked-move@all-pipes:
    - shard-mtlp:         [PASS][110] -> [DMESG-WARN][111] ([i915#2017])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-mtlp-2/igt@kms_cursor_legacy@forked-move@all-pipes.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-mtlp-4/igt@kms_cursor_legacy@forked-move@all-pipes.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#3555] / [i915#3840])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#3555] / [i915#3840])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#3469])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][115] ([fdo#109274] / [i915#3637]) +3 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([fdo#109274]) +6 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][117] ([fdo#111825]) +10 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#8381])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#2587] / [i915#2672])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#2587] / [i915#2672]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#2672]) +3 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#8708]) +14 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-dg2:          [PASS][123] -> [FAIL][124] ([i915#6880])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#8708])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#8708])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#3458]) +14 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#3458]) +4 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#5354]) +36 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][130] ([fdo#109280]) +12 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-tglu:         NOTRUN -> [SKIP][131] ([fdo#110189]) +13 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_getfb@getfb-reject-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#6118])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_getfb@getfb-reject-ccs.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#3555] / [i915#8228])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_hdr@bpc-switch.html
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#3555] / [i915#8228])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#3555] / [i915#8228]) +3 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#6301])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([fdo#109289]) +5 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#3555]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][139] ([i915#8292])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-14/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#5176]) +3 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#5235]) +7 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#5235]) +3 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#5235]) +7 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#5235]) +3 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][145] ([fdo#111068] / [i915#658])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#658]) +3 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@primary_render:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#1072] / [i915#4078]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@kms_psr@primary_render.html

  * igt@kms_psr@sprite_blt:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#1072]) +5 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_psr@sprite_blt.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#4235]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-rkl:          [PASS][150] -> [INCOMPLETE][151] ([i915#8875])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-270.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-7/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [PASS][152] -> [FAIL][153] ([IGT#2])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-11/igt@kms_sysfs_edid_timing.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@kms_sysfs_edid_timing.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
    - shard-tglu:         [PASS][154] -> [FAIL][155] ([i915#9196]) +1 other test fail
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
    - shard-mtlp:         [PASS][156] -> [FAIL][157] ([i915#9196])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-apl:          [PASS][158] -> [INCOMPLETE][159] ([i915#9392])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][160] ([fdo#109271] / [i915#533])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#3555]) +6 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#2437])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_writeback@writeback-check-output.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#5608] / [i915#8516])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#8516])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@perf_pmu@rc6@other-idle-gt0.html
    - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#8516])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_udl:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([fdo#109291])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#3708] / [i915#4077])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#3291] / [i915#3708])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#3708] / [i915#4077])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#3708])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@prime_vgem@fence-read-hang.html

  * igt@prime_vgem@fence-write-hang:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([fdo#109295])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@prime_vgem@fence-write-hang.html
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#3708])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@prime_vgem@fence-write-hang.html

  * igt@v3d/v3d_submit_cl@bad-multisync-pad:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([fdo#109315] / [i915#2575]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@v3d/v3d_submit_cl@bad-multisync-pad.html

  * igt@v3d/v3d_submit_csd@single-out-sync:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#2575]) +9 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@v3d/v3d_submit_csd@single-out-sync.html

  * igt@v3d/v3d_wait_bo@map-bo-0ns:
    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#2575])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@v3d/v3d_wait_bo@map-bo-0ns.html

  * igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#7711]) +9 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done.html

  * igt@vc4/vc4_wait_bo@unused-bo-1ns:
    - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#7711]) +1 other test skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@vc4/vc4_wait_bo@unused-bo-1ns.html
    - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#2575]) +3 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@vc4/vc4_wait_bo@unused-bo-1ns.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@smoketest:
    - shard-tglu:         [FAIL][179] -> [PASS][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-6/igt@gem_ctx_persistence@smoketest.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-6/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [ABORT][181] ([i915#7975] / [i915#8213]) -> [PASS][182] +1 other test pass
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg1-14/igt@gem_eio@hibernate.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@gem_eio@hibernate.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-rkl:          [FAIL][183] ([i915#2842]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-4/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [ABORT][185] ([i915#7975] / [i915#8213]) -> [PASS][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [SKIP][187] ([i915#1397]) -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-11/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg1:          [SKIP][189] ([i915#1397]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][191] ([i915#5138]) -> [PASS][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [FAIL][193] ([i915#3743]) -> [PASS][194] +1 other test pass
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][195] ([i915#2346]) -> [PASS][196]
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [FAIL][197] ([i915#6880]) -> [PASS][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-d:
    - shard-tglu:         [FAIL][199] ([i915#9196]) -> [PASS][200] +1 other test pass
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-apl:          [INCOMPLETE][201] ([i915#9392]) -> [PASS][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-tglu:         [FAIL][203] ([i915#2681] / [i915#3591]) -> [WARN][204] ([i915#2681])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][205] ([i915#7118]) -> [SKIP][206] ([i915#7118] / [i915#7162])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-1/igt@kms_content_protection@type1.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-11/igt@kms_content_protection@type1.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][207] ([i915#3955]) -> [SKIP][208] ([fdo#110189] / [i915#3955]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][209] ([i915#4816]) -> [SKIP][210] ([i915#4070] / [i915#4816])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
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
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6118]: https://gitlab.freedesktop.org/drm/intel/issues/6118
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7892]: https://gitlab.freedesktop.org/drm/intel/issues/7892
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9392]: https://gitlab.freedesktop.org/drm/intel/issues/9392
  [i915#9408]: https://gitlab.freedesktop.org/drm/intel/issues/9408
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423


Build changes
-------------

  * Linux: CI_DRM_13722 -> Patchwork_124705v2
  * Piglit: None -> piglit_4509

  CI-20190529: 20190529
  CI_DRM_13722: ead693ec2d2fddb30bff4718845d42f9adabcce6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7518: 2d4a57e28db0c2ccbf8b2e763074c9aa74a1ae52 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124705v2: ead693ec2d2fddb30bff4718845d42f9adabcce6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/index.html

--===============4001272776528811102==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>Trim some pre-production code (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124705/">https://patchwork.freedesktop.org/series/124705/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13722_full -&gt; Patchwork_124705v2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-tglu0 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124705v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9408">i915#9408</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@drm_fdinfo@busy@ccs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7697">i915#7697</a>)</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7697">i915#7697</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@gem_ctx_param@set-priority-not-supported.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5882">i915#5882</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-mtlp-2/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-mtlp-4/igt@gem_eio@in-flight-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7892">i915#7892</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-11/igt@gem_eio@kms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@gem_eio@kms.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7892">i915#7892</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_exec_balancer@bonded-pair.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@gem_exec_fair@basic-throttle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_exec_flush@basic-wb-prw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109283">fdo#109283</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_exec_params@secure-non-master.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_exec_reloc@basic-cpu-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@gem_fence_thrash@bo-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@gem_lmem_swapping@massive-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-apl3/igt@gem_lmem_swapping@random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_media_fill@media-fill.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_mmap_gtt@basic-read-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_mmap_wc@close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@coherency:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_mmap_wc@coherency.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_pxp@create-protected-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_pxp@create-regular-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gem_userptr_blits@map-fixed-invalidate.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@gen3_render_linear_blits.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@gen3_render_linear_blits.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8617">i915#8617</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8399">i915#8399</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-3/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</p>
</li>
<li>
<p>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-12/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-11/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@i915_pm_rpm@pc8-residency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@i915_query@query-topology-unsupported.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109302">fdo#109302</a>)</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@i915_query@query-topology-unsupported.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109302">fdo#109302</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3638">i915#3638</a>)</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a>) +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-glk7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs_cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs_cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-glk7/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-mtlp-4/igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_mtl_mc_ccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-mtlp-4/igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_mtl_mc_ccs.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-yf_tiled_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_ccs@pipe-d-bad-rotation-90-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4087">i915#4087</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7213">i915#7213</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7213">i915#7213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-25:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_chamelium_color@ctm-0-25.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_chamelium_color@ctm-0-25.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@kms_chamelium_color@ctm-red-to-blue.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-apl3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@forked-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-mtlp-2/igt@kms_cursor_legacy@forked-move@all-pipes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-mtlp-4/igt@kms_cursor_legacy@forked-move@all-pipes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_flip@2x-blocking-absolute-wf_vblank.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_flip@2x-dpms-vs-vblank-race.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_flip@flip-vs-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-reject-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_getfb@getfb-reject-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6118">i915#6118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-14/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@kms_psr@primary_render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_psr@sprite_blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-270.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-7/igt@kms_rotation_crc@sprite-rotation-270.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8875">i915#8875</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-11/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-a:</p>
<ul>
<li>
<p>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>) +1 other test fail</p>
</li>
<li>
<p>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9392">i915#9392</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@kms_writeback@writeback-check-output.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8516">i915#8516</a>)</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8516">i915#8516</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-6/igt@prime_udl.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a>)</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-multisync-pad:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-2/igt@v3d/v3d_submit_cl@bad-multisync-pad.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@single-out-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-3/igt@v3d/v3d_submit_csd@single-out-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@map-bo-0ns:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@v3d/v3d_wait_bo@map-bo-0ns.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-1/igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@unused-bo-1ns:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@vc4/vc4_wait_bo@unused-bo-1ns.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@vc4/vc4_wait_bo@unused-bo-1ns.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 other tests skip</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-6/igt@gem_ctx_persistence@smoketest.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-6/igt@gem_ctx_persistence@smoketest.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg1-14/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-19/igt@gem_eio@hibernate.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-4/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-5/igt@gem_exec_suspend@basic-s4-devices@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-11/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg1-16/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9392">i915#9392</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-dg2-1/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7162">i915#7162</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124705v2/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13722 -&gt; Patchwork_124705v2</li>
<li>Piglit: None -&gt; piglit_4509</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13722: ead693ec2d2fddb30bff4718845d42f9adabcce6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7518: 2d4a57e28db0c2ccbf8b2e763074c9aa74a1ae52 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124705v2: ead693ec2d2fddb30bff4718845d42f9adabcce6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4001272776528811102==--
