Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC931435CA
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 03:55:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA4546EB7B;
	Tue, 21 Jan 2020 02:55:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD7786EB7B;
 Tue, 21 Jan 2020 02:55:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D148A0088;
 Tue, 21 Jan 2020 02:55:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Tue, 21 Jan 2020 02:55:54 -0000
Message-ID: <157957535461.11480.196125101766906141@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120054954.5786-1-anshuman.gupta@intel.com>
In-Reply-To: <20200120054954.5786-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_Update_CP_as_per_the_kernel_internal_state?=
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

Series: drm/i915/hdcp: Update CP as per the kernel internal state
URL   : https://patchwork.freedesktop.org/series/72251/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7775_full -> Patchwork_16169_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16169_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +15 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb5/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb3/igt@gem_ctx_persistence@vecs0-mixed-process.html
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#679])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-glk4/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-glk9/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110841])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [PASS][13] -> [INCOMPLETE][14] ([i915#140])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb8/igt@gem_exec_balancer@hang.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb4/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#110854])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-tglb7/igt@gem_exec_create@madvise.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-tglb6/igt@gem_exec_create@madvise.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111593] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-tglb1/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-tglb5/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([i915#677])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109276]) +20 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb5/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#112146]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [PASS][27] -> [INCOMPLETE][28] ([fdo#103665] / [i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-kbl2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-kbl7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-hsw:          [PASS][29] -> [FAIL][30] ([i915#874])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-hsw4/igt@gem_pipe_control_store_loop@reused-buffer.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-hsw7/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#644])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][33] -> [FAIL][34] ([i915#818])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#447])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb5/igt@i915_pm_dc@dc5-dpms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#454])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-iclb:         [PASS][39] -> [DMESG-WARN][40] ([fdo#111764])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb1/igt@i915_pm_rpm@system-suspend-execbuf.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb2/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_selftest@mock_requests:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#198])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-skl5/igt@i915_selftest@mock_requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-skl7/igt@i915_selftest@mock_requests.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [PASS][45] -> [DMESG-WARN][46] ([i915#109])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-skl1/igt@kms_color@pipe-b-ctm-0-5.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-skl6/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#79])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][49] -> [INCOMPLETE][50] ([i915#221])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-skl7/igt@kms_flip@flip-vs-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-skl6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#34])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-skl4/igt@kms_flip@plain-flip-fb-recreate.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-skl8/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [PASS][53] -> [FAIL][54] ([i915#49])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([fdo#108145])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([fdo#108145] / [i915#265])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109441]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb8/igt@kms_psr@psr2_no_drrs.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][61] -> [INCOMPLETE][62] ([i915#61])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-hsw4/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-apl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][65] ([fdo#109276] / [fdo#112080]) -> [PASS][66] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][67] ([fdo#111735] / [i915#472]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-snb:          [DMESG-WARN][69] -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-snb2/igt@gem_eio@in-flight-contexts-10ms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-snb2/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][71] ([i915#82]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-snb2/igt@gem_eio@kms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][73] ([fdo#111736] / [i915#472]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-tglb3/igt@gem_exec_await@wide-all.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-tglb5/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +8 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][77] ([fdo#112146]) -> [PASS][78] +7 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][79] ([i915#677]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][81] ([fdo#111677] / [i915#472]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][83] ([i915#463] / [i915#472]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-tglb4/igt@gem_exec_schedule@smoketest-all.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-tglb8/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-glk:          [INCOMPLETE][85] ([i915#530] / [i915#58] / [k.org#198133]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-glk3/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-glk1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [INCOMPLETE][87] ([CI#80] / [fdo#103927] / [i915#530]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-skl:          [TIMEOUT][89] ([fdo#112271] / [i915#530]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-skl10/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-hsw:          [TIMEOUT][91] ([fdo#112271] / [i915#530]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-hsw8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-kbl:          [TIMEOUT][93] ([fdo#112271] / [i915#530]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-tglb:         [TIMEOUT][95] ([fdo#112126] / [fdo#112271] / [i915#530]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [TIMEOUT][97] ([fdo#112271] / [i915#530]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb5/igt@gem_persistent_relocs@forked-thrashing.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb1/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][99] ([i915#472] / [i915#707] / [i915#796]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-tglb3/igt@gem_pipe_control_store_loop@reused-buffer.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-tglb1/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][101] ([i915#644]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][103] ([i915#472]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-tglb8/igt@gem_sync@basic-store-all.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-tglb8/igt@gem_sync@basic-store-all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][105] ([i915#716]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-glk1/igt@gen9_exec_parse@allowed-all.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-glk1/igt@gen9_exec_parse@allowed-all.html
    - shard-kbl:          [DMESG-WARN][107] ([i915#716]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-kbl6/igt@gen9_exec_parse@allowed-all.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-kbl3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][109] ([i915#413]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb1/igt@i915_pm_rps@waitboost.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb8/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][111] ([i915#553] / [i915#725]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-hsw6/igt@i915_selftest@live_blt.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-hsw4/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [INCOMPLETE][113] ([i915#455] / [i915#472]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-tglb6/igt@i915_selftest@live_gt_timelines.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-tglb3/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_selftest@mock_requests:
    - shard-apl:          [INCOMPLETE][115] ([fdo#103927]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-apl1/igt@i915_selftest@mock_requests.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-apl8/igt@i915_selftest@mock_requests.html
    - shard-kbl:          [INCOMPLETE][117] ([fdo#103665]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-kbl7/igt@i915_selftest@mock_requests.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-kbl6/igt@i915_selftest@mock_requests.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][119] ([i915#69]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-skl8/igt@i915_suspend@forcewake.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-skl9/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][121] ([i915#180]) -> [PASS][122] +8 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [SKIP][123] ([i915#668]) -> [PASS][124] +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [FAIL][125] ([i915#49]) -> [PASS][126] +6 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][127] ([i915#173]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb1/igt@kms_psr@no_drrs.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb6/igt@kms_psr@no_drrs.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][129] ([i915#31]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-apl2/igt@kms_setmode@basic.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-apl2/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][131] ([fdo#109276]) -> [PASS][132] +20 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][133] ([i915#818]) -> [FAIL][134] ([i915#694])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-hsw5/igt@gem_tiled_blits@normal.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-hsw8/igt@gem_tiled_blits@normal.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([fdo#103665] / [i915#716] / [i915#873] / [i915#997]) -> ([FAIL][139], [FAIL][140]) ([i915#997])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-kbl2/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-kbl7/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-kbl6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-kbl4/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-kbl6/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          ([FAIL][141], [FAIL][142], [FAIL][143]) ([i915#873] / [i915#997]) -> ([FAIL][144], [FAIL][145]) ([i915#997])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-apl1/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-apl3/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-apl1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-apl8/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-apl1/igt@runner@aborted.html
    - shard-glk:          [FAIL][146] ([k.org#202321]) -> ([FAIL][147], [FAIL][148]) ([i915#997] / [k.org#202321])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-glk1/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-glk3/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-glk7/igt@runner@aborted.html
    - shard-skl:          ([FAIL][149], [FAIL][150]) ([i915#69] / [i915#997]) -> ([FAIL][151], [FAIL][152]) ([i915#69] / [i915#873] / [i915#997])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-skl8/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7775/shard-skl7/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-skl7/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/shard-skl7/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16169/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
