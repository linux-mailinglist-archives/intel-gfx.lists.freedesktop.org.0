Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD7A1287D8
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 07:48:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6AAC6E426;
	Sat, 21 Dec 2019 06:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 722D16E426;
 Sat, 21 Dec 2019 06:48:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 69002A0073;
 Sat, 21 Dec 2019 06:48:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Sat, 21 Dec 2019 06:48:20 -0000
Message-ID: <157691090040.32689.4716031815296753878@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219233305.28080-1-manasi.d.navare@intel.com>
In-Reply-To: <20191219233305.28080-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/3=5D_drm/i915/dp=3A_Make_sure_all_t?=
 =?utf-8?q?iled_connectors_get_added_to_the_state_with_full_modeset?=
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

Series: series starting with [v3,1/3] drm/i915/dp: Make sure all tiled connectors get added to the state with full modeset
URL   : https://patchwork.freedesktop.org/series/71193/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7611_full -> Patchwork_15852_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15852_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15852_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15852_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rps@reset:
    - shard-iclb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb4/igt@i915_pm_rps@reset.html

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-hsw7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15852_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl8/igt@gem_ctx_isolation@bcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl7/igt@gem_ctx_isolation@bcs0-s3.html
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-kbl6/igt@gem_ctx_isolation@bcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-kbl3/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-apl6/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-apl3/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#679])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl4/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl4/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-promotion-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +6 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb1/igt@gem_ctx_shared@q-promotion-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb8/igt@gem_ctx_shared@q-promotion-bsd2.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111735])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb5/igt@gem_ctx_shared@q-smoketest-vebox.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb6/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#435]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb4/igt@gem_exec_create@madvise.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb5/igt@gem_exec_create@madvise.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112080]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb4/igt@gem_exec_store@cachelines-vcs1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb6/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [PASS][23] -> [FAIL][24] ([i915#520])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#470] / [i915#472])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb1/igt@gem_sync@basic-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb6/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#472])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb9/igt@gem_sync@basic-store-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb5/igt@gem_sync@basic-store-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-apl4/igt@gem_workarounds@suspend-resume-fd.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-apl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#454])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#456] / [i915#460])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb6/igt@i915_pm_rpm@system-suspend-modeset.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb1/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([i915#109]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl8/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#54]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#72])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#646] / [i915#667])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49]) +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [PASS][47] -> [INCOMPLETE][48] ([i915#435] / [i915#667])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][51] ([i915#570]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl6/igt@gem_ctx_persistence@processes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl6/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [fdo#112080]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][55] ([i915#461]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111736]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb6/igt@gem_exec_await@wide-all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb7/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#108838] / [i915#435]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb2/igt@gem_exec_create@forked.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb1/igt@gem_exec_create@forked.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [INCOMPLETE][61] ([i915#435]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb9/igt@gem_exec_nop@basic-sequential.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb1/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][63] ([i915#470]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb6/igt@gem_exec_parallel@fds.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb3/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][65] ([fdo#112146]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][67] ([i915#707]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb4/igt@gem_exec_schedule@smoketest-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][69] ([i915#472] / [i915#707]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb9/igt@gem_sync@basic-many-each.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb1/igt@gem_sync@basic-many-each.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][71] ([i915#454]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-tglb:         [INCOMPLETE][73] ([i915#456] / [i915#460]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb7/igt@i915_pm_rpm@system-suspend-execbuf.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb9/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [DMESG-WARN][75] ([i915#109]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl6/igt@kms_color@pipe-a-ctm-0-25.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl3/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-skl:          [FAIL][77] ([i915#54]) -> [PASS][78] +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +6 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][81] ([IGT#5]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
    - shard-skl:          [INCOMPLETE][83] ([i915#435]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][85] ([i915#79]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-skl:          [FAIL][87] ([i915#34]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl5/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][89] ([i915#49]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][91] ([i915#648] / [i915#667]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][93] ([fdo#108145] / [i915#265]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][95] ([fdo#109642] / [fdo#111068]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb6/igt@kms_psr2_su@frontbuffer.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb5/igt@kms_psr@psr2_basic.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [DMESG-WARN][99] ([fdo#107724]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][101] ([i915#69]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf@oa-exponents:
    - shard-tglb:         [FAIL][103] ([i915#84]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-tglb6/igt@perf@oa-exponents.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-tglb6/igt@perf@oa-exponents.html

  * igt@perf_pmu@busy-start-vcs1:
    - shard-iclb:         [SKIP][105] ([fdo#112080]) -> [PASS][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb6/igt@perf_pmu@busy-start-vcs1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb2/igt@perf_pmu@busy-start-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][107] ([fdo#109276]) -> [PASS][108] +8 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][109] ([IGT#28]) -> [SKIP][110] ([fdo#109276] / [fdo#112080])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][111] ([i915#444]) -> [INCOMPLETE][112] ([i915#82])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-snb1/igt@gem_eio@kms.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-snb1/igt@gem_eio@kms.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-snb:          [INCOMPLETE][113] ([i915#82]) -> [SKIP][114] ([fdo#109271])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-snb2/igt@i915_pm_dc@dc5-dpms.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-snb6/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@mock_requests:
    - shard-glk:          [INCOMPLETE][115] ([i915#58] / [k.org#198133]) -> [DMESG-WARN][116] ([i915#802])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-glk1/igt@i915_selftest@mock_requests.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-glk1/igt@i915_selftest@mock_requests.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][117] ([i915#180] / [i915#56]) -> [DMESG-WARN][118] ([i915#180] / [i915#391])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][119] ([fdo#103665]) -> ([FAIL][120], [FAIL][121]) ([fdo#103665] / [fdo#109383])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7611/shard-kbl7/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-kbl2/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/shard-kbl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109383]: https://bugs.freedesktop.org/show_bug.cgi?id=109383
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#391]: https://gitlab.freedesktop.org/drm/intel/issues/391
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#802]: https://gitlab.freedesktop.org/drm/intel/issues/802
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7611 -> Patchwork_15852

  CI-20190529: 20190529
  CI_DRM_7611: a838a8d6accc9027d4d04fb67d2f8a7a2049946c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15852: 1d2738ee39291aaa78e9f43b0e6bf2fb6968cbe2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15852/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
