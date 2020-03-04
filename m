Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C00178E86
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 11:40:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40FDB6E1EC;
	Wed,  4 Mar 2020 10:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F1806E05D;
 Wed,  4 Mar 2020 10:40:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0821BA3ECB;
 Wed,  4 Mar 2020 10:40:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 04 Mar 2020 10:40:24 -0000
Message-ID: <158331842400.429.2159309045477757285@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303204345.1859734-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200303204345.1859734-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Drop_inspection_of?=
 =?utf-8?q?_execbuf_flags_during_evict?=
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

Series: series starting with [CI,1/3] drm/i915: Drop inspection of execbuf flags during evict
URL   : https://patchwork.freedesktop.org/series/74217/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8057_full -> Patchwork_16804_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16804_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16804_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16804_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@pi-userfault-blt:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb7/igt@gem_exec_schedule@pi-userfault-blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb5/igt@gem_exec_schedule@pi-userfault-blt.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl7/igt@gem_exec_schedule@pi-userfault-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-skl10/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@pi-userfault-render:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-tglb8/igt@gem_exec_schedule@pi-userfault-render.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-tglb6/igt@gem_exec_schedule@pi-userfault-render.html

  * igt@gem_softpin@overlap:
    - shard-skl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl7/igt@gem_softpin@overlap.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-skl10/igt@gem_softpin@overlap.html
    - shard-apl:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-apl7/igt@gem_softpin@overlap.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-apl4/igt@gem_softpin@overlap.html
    - shard-tglb:         [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-tglb3/igt@gem_softpin@overlap.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-tglb5/igt@gem_softpin@overlap.html
    - shard-glk:          [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-glk7/igt@gem_softpin@overlap.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-glk2/igt@gem_softpin@overlap.html
    - shard-hsw:          [PASS][15] -> [FAIL][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-hsw7/igt@gem_softpin@overlap.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-hsw6/igt@gem_softpin@overlap.html
    - shard-kbl:          [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-kbl4/igt@gem_softpin@overlap.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-kbl3/igt@gem_softpin@overlap.html
    - shard-snb:          [PASS][19] -> [FAIL][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-snb5/igt@gem_softpin@overlap.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-snb5/igt@gem_softpin@overlap.html
    - shard-iclb:         [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb2/igt@gem_softpin@overlap.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb4/igt@gem_softpin@overlap.html

  
Known issues
------------

  Here are the changes found in Patchwork_16804_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#112080]) +13 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][25] -> [FAIL][26] ([i915#1277])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-tglb7/igt@gem_exec_balancer@hang.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-tglb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-read-write-bsd:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([i915#677]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276] / [i915#677])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-blt:
    - shard-kbl:          [PASS][31] -> [INCOMPLETE][32] ([fdo#103665]) +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-kbl4/igt@gem_exec_schedule@pi-userfault-blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-kbl4/igt@gem_exec_schedule@pi-userfault-blt.html

  * igt@gem_exec_schedule@pi-userfault-render:
    - shard-apl:          [PASS][33] -> [INCOMPLETE][34] ([fdo#103927]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-apl3/igt@gem_exec_schedule@pi-userfault-render.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-apl6/igt@gem_exec_schedule@pi-userfault-render.html

  * igt@gem_exec_schedule@pi-userfault-vebox:
    - shard-glk:          [PASS][35] -> [INCOMPLETE][36] ([i915#58] / [k.org#198133]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-glk1/igt@gem_exec_schedule@pi-userfault-vebox.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-glk8/igt@gem_exec_schedule@pi-userfault-vebox.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109276]) +13 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb6/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#112146]) +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#644])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [PASS][43] -> [FAIL][44] ([i915#644])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][45] -> [INCOMPLETE][46] ([i915#716])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][47] -> [FAIL][48] ([i915#413]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb6/igt@i915_pm_rps@reset.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb4/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [PASS][51] -> [INCOMPLETE][52] ([i915#61]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][53] -> [INCOMPLETE][54] ([i915#123] / [i915#69])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][55] -> [FAIL][56] ([fdo#103375])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([fdo#108145])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#899])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][61] -> [FAIL][62] ([i915#173])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb6/igt@kms_psr@no_drrs.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109441]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb7/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][65] ([fdo#112080]) -> [PASS][66] +9 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][67] ([fdo#109276] / [i915#677]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][69] ([fdo#112146]) -> [PASS][70] +5 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][71] ([i915#677]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][73] ([i915#57]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][75] ([i915#79]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][77] ([i915#34]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl6/igt@kms_flip@plain-flip-ts-check.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-skl5/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][79] ([i915#69]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][83] ([i915#31]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-apl2/igt@kms_setmode@basic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-apl3/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][85] ([i915#31]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-skl9/igt@kms_setmode@basic.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-skl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +5 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][89] ([fdo#109276]) -> [PASS][90] +24 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8057 -> Patchwork_16804

  CI-20190529: 20190529
  CI_DRM_8057: 45ca41e870e508bf9040b308d9ff1ccf7ab779e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5488: 5b6930b4d267f7002c2e9442262e21a725941db5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16804: 2454120ffcb04afbb397c2f1d69a3ae603542992 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
