Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD60F1397D6
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 18:34:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48DC46E123;
	Mon, 13 Jan 2020 17:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B4636E122;
 Mon, 13 Jan 2020 17:34:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02B8CA0073;
 Mon, 13 Jan 2020 17:34:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 13 Jan 2020 17:34:13 -0000
Message-ID: <157893685300.25475.9712766361307857932@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110110402.1231745-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200110110402.1231745-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/gt=3A_Skip_trying_to_unbin?=
 =?utf-8?q?d_in_restore=5Fggtt=5Fmappings?=
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

Series: series starting with [1/3] drm/i915/gt: Skip trying to unbind in restore_ggtt_mappings
URL   : https://patchwork.freedesktop.org/series/71876/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7716_full -> Patchwork_16049_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16049_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16049_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16049_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock_timelines:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-skl8/igt@i915_selftest@mock_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-skl10/igt@i915_selftest@mock_timelines.html
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb5/igt@i915_selftest@mock_timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb1/igt@i915_selftest@mock_timelines.html

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-hsw5/igt@runner@aborted.html
    - shard-kbl:          NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-kbl6/igt@runner@aborted.html
    - shard-snb:          NOTRUN -> ([FAIL][7], [FAIL][8]) ([i915#436])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-snb1/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-snb1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16049_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080]) +13 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb2/igt@gem_ctx_isolation@vcs1-clean.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb5/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#679])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-skl9/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-skl5/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_eio@banned:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#476])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb3/igt@gem_eio@banned.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb3/igt@gem_eio@banned.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][17] -> [FAIL][18] ([i915#490])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-snb4/igt@gem_eio@in-flight-contexts-1us.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][19] -> [DMESG-WARN][20] ([i915#444] / [i915#503])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-snb2/igt@gem_eio@kms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#472] / [i915#476])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb2/igt@gem_exec_parallel@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb6/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-skl4/igt@gem_exec_reloc@basic-gtt-read-active.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-skl4/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([i915#677])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112146]) +7 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#456] / [i915#472])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb7/igt@gem_exec_suspend@basic-s0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb3/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [PASS][31] -> [TIMEOUT][32] ([fdo#112271] / [i915#530])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb1/igt@gem_persistent_relocs@forked-thrashing.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb8/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#644])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#69])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-skl2/igt@gem_softpin@noreloc-s3.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-skl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#472]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb2/igt@gem_sync@basic-store-each.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb7/igt@gem_sync@basic-store-each.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][39] -> [FAIL][40] ([i915#454])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock_timelines:
    - shard-glk:          [PASS][41] -> [INCOMPLETE][42] ([i915#58] / [k.org#198133])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-glk9/igt@i915_selftest@mock_timelines.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-glk8/igt@i915_selftest@mock_timelines.html
    - shard-hsw:          [PASS][43] -> [INCOMPLETE][44] ([i915#61])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-hsw2/igt@i915_selftest@mock_timelines.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-hsw5/igt@i915_selftest@mock_timelines.html
    - shard-kbl:          [PASS][45] -> [INCOMPLETE][46] ([fdo#103665])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-kbl1/igt@i915_selftest@mock_timelines.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-kbl6/igt@i915_selftest@mock_timelines.html
    - shard-iclb:         [PASS][47] -> [INCOMPLETE][48] ([i915#140]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb8/igt@i915_selftest@mock_timelines.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb6/igt@i915_selftest@mock_timelines.html
    - shard-snb:          [PASS][49] -> [INCOMPLETE][50] ([i915#82])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-snb5/igt@i915_selftest@mock_timelines.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-snb1/igt@i915_selftest@mock_timelines.html
    - shard-apl:          [PASS][51] -> [INCOMPLETE][52] ([fdo#103927])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-apl3/igt@i915_selftest@mock_timelines.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-apl7/igt@i915_selftest@mock_timelines.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([IGT#5])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][55] -> [INCOMPLETE][56] ([i915#221])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-apl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#49]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-skl:          [PASS][61] -> [FAIL][62] ([i915#49])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][63] -> [DMESG-WARN][64] ([i915#180]) +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([fdo#108145])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][67] -> [SKIP][68] ([fdo#109441]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb3/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#31])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-skl8/igt@kms_setmode@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-skl1/igt@kms_setmode@basic.html
    - shard-hsw:          [PASS][71] -> [FAIL][72] ([i915#31])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-hsw4/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-hsw2/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][73] -> [SKIP][74] ([fdo#109276]) +18 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][75] ([fdo#109276] / [fdo#112080]) -> [PASS][76] +4 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][77] ([fdo#110841]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][79] ([i915#461]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_create@basic:
    - shard-tglb:         [INCOMPLETE][81] ([fdo#111736] / [i915#472]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb6/igt@gem_exec_create@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb2/igt@gem_exec_create@basic.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][83] ([fdo#112080]) -> [PASS][84] +16 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][85] ([i915#677]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][87] ([fdo#109276]) -> [PASS][88] +21 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-blt:
    - shard-tglb:         [INCOMPLETE][89] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][91] ([fdo#112146]) -> [PASS][92] +4 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-blt:
    - shard-tglb:         [INCOMPLETE][93] ([i915#470] / [i915#472]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb3/igt@gem_exec_schedule@smoketest-blt.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb7/igt@gem_exec_schedule@smoketest-blt.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-snb:          [TIMEOUT][95] ([fdo#112271] / [i915#530]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-snb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-snb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [FAIL][97] ([i915#520]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-snb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-apl7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][101] ([i915#472] / [i915#707]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb6/igt@gem_sync@basic-each.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb2/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][103] ([i915#472]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb3/igt@gem_sync@basic-store-all.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb1/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [DMESG-WARN][105] ([i915#118] / [i915#95]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-glk1/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][107] ([i915#109]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][109] ([i915#79]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][111] ([i915#49]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][113] ([i915#173]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb1/igt@kms_psr@no_drrs.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb8/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-tglb:         [SKIP][115] ([i915#668]) -> [PASS][116] +5 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb2/igt@kms_psr@psr2_sprite_blt.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb7/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][117] ([fdo#109441]) -> [PASS][118] +5 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-tglb:         [FAIL][119] ([i915#31]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb2/igt@kms_setmode@basic.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb6/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][121] ([IGT#28]) -> [SKIP][122] ([fdo#109276] / [fdo#112080])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][123] ([i915#468]) -> [FAIL][124] ([i915#454])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-tglb4/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][125] ([i915#46]) -> [FAIL][126] ([i915#79])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-skl:          [SKIP][127] ([fdo#109271]) -> [SKIP][128] ([CI#80] / [fdo#109271])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/shard-skl5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#503]: https://gitlab.freedesktop.org/drm/intel/issues/503
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7716 -> Patchwork_16049

  CI-20190529: 20190529
  CI_DRM_7716: b532d43e8d71b07d1cd0619915b1d4039002b5b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5359: 28451bcec2245dcc1fd0eb1d4c76335b2b4f97a5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16049: 5af13e22647252b327519d15f5d8bc2f5e5de087 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
