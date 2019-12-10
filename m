Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9962F117FE9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 06:46:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E3FA6E808;
	Tue, 10 Dec 2019 05:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F7496E804;
 Tue, 10 Dec 2019 05:46:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17519A0073;
 Tue, 10 Dec 2019 05:46:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Tue, 10 Dec 2019 05:46:11 -0000
Message-ID: <157595677107.18784.17825976426982464116@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191209223556.3897-1-andi@etezian.org>
In-Reply-To: <20191209223556.3897-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgU29t?=
 =?utf-8?q?e_debugfs_enhancements?=
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

Series: Some debugfs enhancements
URL   : https://patchwork.freedesktop.org/series/70658/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7523_full -> Patchwork_15661_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15661_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs}:
    - shard-iclb:         NOTRUN -> [SKIP][1] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-iclb3/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html

  
Known issues
------------

  Here are the changes found in Patchwork_15661_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][2] -> [DMESG-WARN][3] ([i915#180]) +4 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-apl7/igt@gem_ctx_isolation@bcs0-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5] ([fdo#111735])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][6] -> [INCOMPLETE][7] ([i915#82])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-snb2/igt@gem_eio@kms.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_exec_parse_blt@allowed-all:
    - shard-kbl:          [PASS][8] -> [DMESG-WARN][9] ([i915#716])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-kbl4/igt@gem_exec_parse_blt@allowed-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-kbl6/igt@gem_exec_parse_blt@allowed-all.html

  * igt@gem_exec_schedule@preempt-queue-vebox:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111677])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb4/igt@gem_exec_schedule@preempt-queue-vebox.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb6/igt@gem_exec_schedule@preempt-queue-vebox.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#707])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_exec_whisper@normal:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([i915#435])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb1/igt@gem_exec_whisper@normal.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb3/igt@gem_exec_whisper@normal.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-apl:          [PASS][16] -> [FAIL][17] ([i915#520])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-apl6/igt@gem_persistent_relocs@forked-thrashing.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-apl4/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#470] / [i915#475])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb6/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb6/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#472])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb2/igt@gem_sync@basic-store-all.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [PASS][22] -> [DMESG-WARN][23] ([fdo#111870])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#447])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#109])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-skl8/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-skl4/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#54])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#72])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglb:         [PASS][32] -> [INCOMPLETE][33] ([i915#456] / [i915#460])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb6/igt@kms_fbcon_fbt@psr-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][34] -> [INCOMPLETE][35] ([i915#221])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][36] -> [FAIL][37] ([i915#49])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +4 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
    - shard-tglb:         [PASS][40] -> [INCOMPLETE][41] ([i915#456] / [i915#460] / [i915#474])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [PASS][42] -> [INCOMPLETE][43] ([i915#474] / [i915#667])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([fdo#108145] / [i915#265])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#112080])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@pi-ringfull-bsd:
    - shard-iclb:         [SKIP][48] ([fdo#112146]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-iclb1/igt@gem_exec_schedule@pi-ringfull-bsd.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-iclb6/igt@gem_exec_schedule@pi-ringfull-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][50] ([fdo#109276]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [INCOMPLETE][52] ([fdo#111677]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][54] ([i915#463]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb8/igt@gem_exec_schedule@smoketest-all.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb2/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-hsw:          [TIMEOUT][56] ([i915#530]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [FAIL][58] ([i915#520]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [INCOMPLETE][60] ([fdo#109100] / [i915#140] / [i915#530]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-iclb6/igt@gem_persistent_relocs@forked-thrashing.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-iclb3/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][62] ([i915#644]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][64] ([i915#435] / [i915#472]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb5/igt@gem_sync@basic-store-each.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb1/igt@gem_sync@basic-store-each.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-snb:          [DMESG-WARN][66] ([fdo#111870]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][68] ([i915#180]) -> [PASS][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-apl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-hsw:          [DMESG-WARN][70] ([i915#747]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-hsw6/igt@i915_selftest@mock_sanitycheck.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-hsw6/igt@i915_selftest@mock_sanitycheck.html
    - shard-kbl:          [DMESG-WARN][72] ([i915#747]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-kbl7/igt@i915_selftest@mock_sanitycheck.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-kbl7/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][74] ([i915#109]) -> [PASS][75] +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][76] ([i915#54]) -> [PASS][77] +3 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][78] ([i915#456] / [i915#460]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][80] ([i915#300]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [FAIL][82] ([i915#34]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][86] ([fdo#108145]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][88] ([i915#31]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-apl1/igt@kms_setmode@basic.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-apl6/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][90] ([i915#31]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-kbl7/igt@kms_setmode@basic.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-kbl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-tglb:         [INCOMPLETE][92] ([i915#460]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-tglb3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@semaphore-wait-idle-vcs1:
    - shard-iclb:         [SKIP][94] ([fdo#112080]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-iclb5/igt@perf_pmu@semaphore-wait-idle-vcs1.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-iclb2/igt@perf_pmu@semaphore-wait-idle-vcs1.html

  * igt@syncobj_wait@wait-all-for-submit-snapshot:
    - shard-skl:          [FAIL][96] -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-skl5/igt@syncobj_wait@wait-all-for-submit-snapshot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-skl2/igt@syncobj_wait@wait-all-for-submit-snapshot.html

  
#### Warnings ####

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][98] ([fdo#112347] / [i915#648]) -> [INCOMPLETE][99] ([fdo#112391] / [i915#648] / [i915#667])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-skl2/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][100] ([k.org#204565]) -> [FAIL][101] ([i915#716])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7523/shard-kbl7/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/shard-kbl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109100]: https://bugs.freedesktop.org/show_bug.cgi?id=109100
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#475]: https://gitlab.freedesktop.org/drm/intel/issues/475
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7523 -> Patchwork_15661

  CI-20190529: 20190529
  CI_DRM_7523: bbcf5f94e2ae795beec14cba06533ff3a9971cc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5341: 5fe683cdebde2d77d16ffc42c9fdf29a9f95bb82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15661: 77e7a15ebe7b411500d202075ef23f08948992a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15661/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
