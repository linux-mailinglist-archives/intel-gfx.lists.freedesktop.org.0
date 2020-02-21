Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C4F168A89
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 00:52:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 303006E34B;
	Fri, 21 Feb 2020 23:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E073F6E34B;
 Fri, 21 Feb 2020 23:52:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9112A47E1;
 Fri, 21 Feb 2020 23:52:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Fri, 21 Feb 2020 23:52:03 -0000
Message-ID: <158232912388.7918.2014931812727185689@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129224729.4684-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200129224729.4684-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hotplug=3A_Use_phy_to_get_the_hpd=5Fpin_instead_of_the_po?=
 =?utf-8?b?cnQgKHJldjQp?=
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

Series: drm/i915/hotplug: Use phy to get the hpd_pin instead of the port (rev4)
URL   : https://patchwork.freedesktop.org/series/72747/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7967_full -> Patchwork_16637_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16637_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16637_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16637_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@context-create:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-skl10/igt@gem_eio@context-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-skl2/igt@gem_eio@context-create.html

  * igt@kms_flip@flip-vs-dpms-interruptible:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl1/igt@kms_flip@flip-vs-dpms-interruptible.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-apl8/igt@kms_flip@flip-vs-dpms-interruptible.html
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-kbl3/igt@kms_flip@flip-vs-dpms-interruptible.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-kbl7/igt@kms_flip@flip-vs-dpms-interruptible.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_whisper@basic-fds-forked}:
    - shard-iclb:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@gem_exec_whisper@basic-fds-forked.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb2/igt@gem_exec_whisper@basic-fds-forked.html

  
Known issues
------------

  Here are the changes found in Patchwork_16637_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110841])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110854])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +9 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb1/igt@gem_exec_schedule@fifo-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb7/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#69])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-skl7/igt@gem_softpin@noreloc-s3.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-skl6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-hsw:          [PASS][25] -> [FAIL][26] ([i915#694])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw7/igt@gen7_exec_parse@basic-allocation.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-hsw2/igt@gen7_exec_parse@basic-allocation.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence:
    - shard-tglb:         [PASS][27] -> [SKIP][28] ([i915#668]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-tglb7/igt@kms_frontbuffer_tracking@psr-farfromfence.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-tglb1/igt@kms_frontbuffer_tracking@psr-farfromfence.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#899])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109642] / [fdo#111068])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-glk:          [PASS][33] -> [TIMEOUT][34] ([fdo#112271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-glk5/igt@kms_rotation_crc@primary-rotation-90.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-glk1/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-skl:          [PASS][35] -> [TIMEOUT][36] ([fdo#112271] / [i915#727]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-skl8/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-skl5/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#112080]) +7 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb7/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][41] -> [FAIL][42] ([i915#831])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@sw_sync@sync_expired_merge:
    - shard-skl:          [PASS][43] -> [TIMEOUT][44] ([fdo#112271]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-skl6/igt@sw_sync@sync_expired_merge.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-skl8/igt@sw_sync@sync_expired_merge.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +13 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb3/igt@gem_busy@busy-vcs1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-glk:          [INCOMPLETE][47] ([i915#58] / [k.org#198133]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-glk1/igt@gem_ctx_isolation@vecs0-s3.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-glk4/igt@gem_ctx_isolation@vecs0-s3.html

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-tglb:         [INCOMPLETE][49] ([i915#1291]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-tglb5/igt@gem_ctx_persistence@close-replace-race.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@blt}:
    - shard-apl:          [INCOMPLETE][51] ([fdo#103927] / [i915#1197] / [i915#1239]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1}:
    - shard-apl:          [FAIL][53] ([i915#679]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd}:
    - shard-iclb:         [SKIP][55] ([i915#677]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd2}:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [i915#677]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +5 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-hsw:          [FAIL][61] ([i915#694]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-hsw:          [INCOMPLETE][63] ([CI#80] / [i915#61]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw8/igt@gem_userptr_blits@sync-unmap-cycles.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-hsw2/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][65] ([i915#447]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb1/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_flip@dpms-vs-vblank-race-interruptible:
    - shard-glk:          [FAIL][69] ([i915#407]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-glk6/igt@kms_flip@dpms-vs-vblank-race-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-glk8/igt@kms_flip@dpms-vs-vblank-race-interruptible.html

  * {igt@kms_hdr@bpc-switch-dpms}:
    - shard-skl:          [FAIL][71] ([i915#1188]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * {igt@kms_hdr@bpc-switch-suspend}:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][75] ([fdo#108145]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][77] ([i915#899]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][79] ([fdo#109441]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][81] ([i915#31]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl8/igt@kms_setmode@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-apl8/igt@kms_setmode@basic.html

  * igt@prime_mmap_coherency@read:
    - shard-hsw:          [FAIL][83] ([i915#914]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw8/igt@prime_mmap_coherency@read.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-hsw8/igt@prime_mmap_coherency@read.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][85] ([fdo#109276]) -> [PASS][86] +16 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][87] ([IGT#28]) -> [SKIP][88] ([fdo#112080])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][89] ([i915#694]) -> [FAIL][90] ([i915#818])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw5/igt@gem_tiled_blits@interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][91] ([i915#454]) -> [SKIP][92] ([i915#468])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@sysfs-read:
    - shard-snb:          [INCOMPLETE][93] ([i915#82]) -> [SKIP][94] ([fdo#109271]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-snb6/igt@i915_pm_rpm@sysfs-read.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-snb5/igt@i915_pm_rpm@sysfs-read.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [FAIL][95] ([fdo#110321]) -> [TIMEOUT][96] ([fdo#112271]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl6/igt@kms_content_protection@lic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [FAIL][97] ([fdo#110321]) -> [TIMEOUT][98] ([fdo#112271]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-kbl3/igt@kms_content_protection@srm.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-kbl7/igt@kms_content_protection@srm.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][99] ([i915#1226]) -> [SKIP][100] ([fdo#109349])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#914]: https://gitlab.freedesktop.org/drm/intel/issues/914
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7967 -> Patchwork_16637

  CI-20190529: 20190529
  CI_DRM_7967: 0d3c3511d707cc46d78ffcf7fe39ac882c0030af @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5452: c05dc6cd816feb1cc518ce777ab3fd6c81893113 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16637: e755f16ff5e05125fd8f3e16d68e81b002034273 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16637/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
