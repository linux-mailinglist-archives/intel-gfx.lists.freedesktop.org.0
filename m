Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECA2149281
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 02:21:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EA6A6E527;
	Sat, 25 Jan 2020 01:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B79786E527;
 Sat, 25 Jan 2020 01:21:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8C29DA00E9;
 Sat, 25 Jan 2020 01:21:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Igor Druzhinin" <igor.druzhinin@citrix.com>
Date: Sat, 25 Jan 2020 01:21:26 -0000
Message-ID: <157991528655.29036.10511274955797211625@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1579723824-25711-1-git-send-email-igor.druzhinin@citrix.com>
In-Reply-To: <1579723824-25711-1-git-send-email-igor.druzhinin@citrix.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_fix_high-order_allocation_failure_on_late_load?=
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

Series: drm/i915/gvt: fix high-order allocation failure on late load
URL   : https://patchwork.freedesktop.org/series/72455/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7802_full -> Patchwork_16228_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16228_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16228_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16228_full:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][1] ([i915#454]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_16228_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-apl2/igt@gem_ctx_isolation@vecs0-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-apl4/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#679])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-glk4/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-glk6/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [PASS][15] -> [INCOMPLETE][16] ([i915#530] / [i915#61]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-hsw8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-hsw8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
    - shard-iclb:         [PASS][17] -> [INCOMPLETE][18] ([i915#140])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-hsw:          [PASS][19] -> [INCOMPLETE][20] ([i915#61])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][21] -> [INCOMPLETE][22] ([fdo#103665])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl8/igt@kms_color@pipe-b-ctm-0-75.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#49]) +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#198]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl10/igt@kms_psr@suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-skl6/igt@kms_psr@suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([fdo#103375]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-iclb:         [PASS][37] -> [TIMEOUT][38] ([fdo#111561] / [fdo#112271])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb3/igt@perf_pmu@cpu-hotplug.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb4/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109276]) +16 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [FAIL][41] ([i915#679]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl8/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-skl7/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [fdo#112080]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb6/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb1/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [INCOMPLETE][49] ([fdo#103927] / [i915#530] / [i915#970]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [INCOMPLETE][51] ([fdo#103927] / [i915#530]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-hsw:          [FAIL][53] ([i915#874]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-hsw2/igt@gem_pipe_control_store_loop@reused-buffer.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-hsw6/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-apl4/igt@gem_softpin@noreloc-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-apl2/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][57] ([i915#413]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb4/igt@i915_pm_rps@reset.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb6/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [INCOMPLETE][59] ([i915#82]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-snb2/igt@i915_selftest@mock_requests.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-snb1/igt@i915_selftest@mock_requests.html
    - shard-tglb:         [INCOMPLETE][61] ([i915#472]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-tglb4/igt@i915_selftest@mock_requests.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-tglb1/igt@i915_selftest@mock_requests.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][63] ([i915#79]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-glk7/igt@kms_flip@flip-vs-expired-vblank.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][65] ([i915#221]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-skl10/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][67] ([i915#34]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl8/igt@kms_flip@plain-flip-fb-recreate.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-skl8/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [FAIL][69] ([i915#49]) -> [PASS][70] +5 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][73] ([fdo#109642] / [fdo#111068]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb3/igt@kms_psr@psr2_sprite_plane_onoff.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][77] ([i915#31]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-hsw6/igt@kms_setmode@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-hsw8/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][79] ([fdo#112080]) -> [PASS][80] +5 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [INCOMPLETE][81] ([i915#61]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-hsw6/igt@perf_pmu@cpu-hotplug.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-hsw7/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [SKIP][83] ([fdo#109276]) -> [PASS][84] +15 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb8/igt@prime_busy@after-bsd2.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb1/igt@prime_busy@after-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][85] ([fdo#109276] / [fdo#112080]) -> [FAIL][86] ([IGT#28])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][87] ([i915#818]) -> [FAIL][88] ([i915#694]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-hsw5/igt@gem_tiled_blits@normal.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][89] ([fdo#109349]) -> [DMESG-WARN][90] ([fdo#107724])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111561]: https://bugs.freedesktop.org/show_bug.cgi?id=111561
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#874]: https://gitlab.freedesktop.org/drm/intel/issues/874
  [i915#970]: https://gitlab.freedesktop.org/drm/intel/issues/970


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7802 -> Patchwork_16228

  CI-20190529: 20190529
  CI_DRM_7802: cd932df72f11bdff93423a8d4a9e0e9ccb0985d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5381: 4ff48cdd5c94140d2dd9bfa3225a6e1e0238e247 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16228: 04f69b9ec4d80f9dee580c03005b350b5eee67c6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
