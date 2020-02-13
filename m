Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DB115C5A3
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 17:10:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 850F66E340;
	Thu, 13 Feb 2020 16:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2414B6E33F;
 Thu, 13 Feb 2020 16:10:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C66DA0118;
 Thu, 13 Feb 2020 16:10:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 13 Feb 2020 16:10:52 -0000
Message-ID: <158161025208.17960.9132360488650204797@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211125856.978559-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200211125856.978559-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Poison_rings_after_use?=
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

Series: drm/i915: Poison rings after use
URL   : https://patchwork.freedesktop.org/series/73294/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7916_full -> Patchwork_16520_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16520_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb8/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +18 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-tglb7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-tglb3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#447])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_color@pipe-c-ctm-max:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#168])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl2/igt@kms_color@pipe-c-ctm-max.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-skl9/igt@kms_color@pipe-c-ctm-max.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#34])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-skl8/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][17] -> [SKIP][18] ([i915#668]) +11 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#899]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][29] -> [FAIL][30] ([i915#31])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-apl2/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-apl8/igt@kms_setmode@basic.html

  * igt@perf@short-reads:
    - shard-glk:          [PASS][31] -> [TIMEOUT][32] ([fdo#112271] / [i915#51])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-glk4/igt@perf@short-reads.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-glk8/igt@perf@short-reads.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][33] ([fdo#112080]) -> [PASS][34] +11 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb7/igt@gem_busy@busy-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * {igt@gem_ctx_persistence@engines-mixed-process@vecs0}:
    - shard-iclb:         [FAIL][35] ([i915#679]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb3/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd}:
    - shard-skl:          [FAIL][37] ([i915#679]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1}:
    - shard-skl:          [INCOMPLETE][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
    - shard-tglb:         [FAIL][41] ([i915#679]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-tglb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-tglb7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2}:
    - shard-tglb:         [INCOMPLETE][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-tglb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-tglb7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][45] ([fdo#110854]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][47] ([i915#677]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-hsw:          [FAIL][51] ([i915#694]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-hsw8/igt@gem_partial_pwrite_pread@write-uncached.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-hsw5/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][53] ([i915#644]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][55] ([i915#454]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][57] ([i915#413]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb1/igt@i915_pm_rps@waitboost.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@kms_busy@basic-modeset-pipe-b:
    - shard-snb:          [SKIP][59] ([fdo#109271]) -> [PASS][60] +6 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-snb6/igt@kms_busy@basic-modeset-pipe-b.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-snb2/igt@kms_busy@basic-modeset-pipe-b.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][61] ([i915#79]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][63] ([i915#34]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * {igt@kms_hdr@bpc-switch-suspend}:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][69] ([fdo#108145]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][71] ([fdo#109642] / [fdo#111068]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb3/igt@kms_psr2_su@frontbuffer.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][75] ([i915#31]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-kbl6/igt@kms_setmode@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-kbl2/igt@kms_setmode@basic.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +19 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb3/igt@prime_busy@after-bsd2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb2/igt@prime_busy@after-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][79] ([IGT#28]) -> [SKIP][80] ([fdo#112080])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][81] ([i915#818]) -> [FAIL][82] ([i915#694])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-hsw7/igt@gem_tiled_blits@normal.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-hsw1/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_rpm@universal-planes:
    - shard-snb:          [SKIP][83] ([fdo#109271]) -> [INCOMPLETE][84] ([i915#82])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-snb5/igt@i915_pm_rpm@universal-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-snb5/igt@i915_pm_rpm@universal-planes.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][85] ([fdo#109349]) -> [DMESG-WARN][86] ([fdo#107724])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#168]: https://gitlab.freedesktop.org/drm/intel/issues/168
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7916 -> Patchwork_16520

  CI-20190529: 20190529
  CI_DRM_7916: 6006a0cd15fdd07655be7c06729dd60b5135e42f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5435: 2b6d4476dde53c363b8808ed9f0dd5547ac78641 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16520: 9ecd2fb93a0ade88cfea221d1e84be0907e098fc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16520/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
