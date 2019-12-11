Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A93DE11AD78
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 15:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5F4F6EB63;
	Wed, 11 Dec 2019 14:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14C366EB61;
 Wed, 11 Dec 2019 14:31:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D3C5A0091;
 Wed, 11 Dec 2019 14:31:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Colin King" <colin.king@canonical.com>
Date: Wed, 11 Dec 2019 14:31:22 -0000
Message-ID: <157607468203.30628.14414419480386621228@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210144535.341977-1-colin.king@canonical.com>
In-Reply-To: <20191210144535.341977-1-colin.king@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_remove_duplicated_assignment_to_pointer_crtc?=
 =?utf-8?q?=5Fstate_=28rev2=29?=
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

Series: drm/i915/display: remove duplicated assignment to pointer crtc_state (rev2)
URL   : https://patchwork.freedesktop.org/series/70695/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7535_full -> Patchwork_15686_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15686_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#456])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb3/igt@gem_ctx_isolation@vcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb3/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([fdo#111735])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb2/igt@gem_ctx_shared@q-smoketest-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-iclb7/igt@gem_exec_async@concurrent-writes-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#435])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb5/igt@gem_exec_create@forked.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb9/igt@gem_exec_create@forked.html

  * igt@gem_exec_parse_blt@allowed-all:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#716])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-kbl7/igt@gem_exec_parse_blt@allowed-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-kbl6/igt@gem_exec_parse_blt@allowed-all.html

  * igt@gem_exec_parse_blt@allowed-single:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#716])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-apl8/igt@gem_exec_parse_blt@allowed-single.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-apl3/igt@gem_exec_parse_blt@allowed-single.html

  * igt@gem_exec_schedule@fifo-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-iclb2/igt@gem_exec_schedule@fifo-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-iclb3/igt@gem_exec_schedule@fifo-bsd2.html

  * igt@gem_exec_store@basic-vcs1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112080]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-iclb2/igt@gem_exec_store@basic-vcs1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-iclb3/igt@gem_exec_store@basic-vcs1.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [PASS][17] -> [DMESG-WARN][18] ([fdo#111870])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-snb5/igt@gem_userptr_blits@dmabuf-unsync.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-snb2/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#69])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-skl10/igt@gem_workarounds@suspend-resume-fd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-skl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#109]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-skl3/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-skl8/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#49])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#648] / [i915#667])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-skl3/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([fdo#103665] / [i915#667])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-kbl7/igt@kms_plane@pixel-format-pipe-b-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-kbl2/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-kbl:          [PASS][35] -> [INCOMPLETE][36] ([fdo#103665] / [i915#435] / [i915#667])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-kbl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-kbl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-tglb:         [PASS][39] -> [DMESG-FAIL][40] ([i915#402])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][41] -> [FAIL][42] ([i915#173])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-iclb5/igt@kms_psr@no_drrs.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-tglb:         [PASS][43] -> [INCOMPLETE][44] ([i915#456] / [i915#460])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-apl8/igt@gem_ctx_isolation@bcs0-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-apl4/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-kbl3/igt@gem_ctx_isolation@vecs0-s3.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-kbl6/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [fdo#112080]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][51] ([fdo#111593]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb4/igt@gem_exec_gttfill@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb5/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][53] ([fdo#112080]) -> [PASS][54] +8 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_parallel@vecs0:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111736]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb4/igt@gem_exec_parallel@vecs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb7/igt@gem_exec_parallel@vecs0.html

  * igt@gem_exec_parse_blt@allowed-all:
    - shard-glk:          [DMESG-WARN][57] ([i915#716]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-glk1/igt@gem_exec_parse_blt@allowed-all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-glk9/igt@gem_exec_parse_blt@allowed-all.html

  * igt@gem_exec_parse_blt@allowed-single:
    - shard-skl:          [DMESG-WARN][59] ([i915#716]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-skl6/igt@gem_exec_parse_blt@allowed-single.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-skl1/igt@gem_exec_parse_blt@allowed-single.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-tglb:         [INCOMPLETE][61] ([fdo#111606] / [fdo#111677]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb6/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb2/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][63] ([i915#463]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb6/igt@gem_exec_schedule@smoketest-all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][65] ([i915#644]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [DMESG-WARN][67] ([fdo#111870]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-snb2/igt@gem_userptr_blits@sync-unmap-cycles.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-kbl:          [DMESG-WARN][69] ([i915#747]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-kbl3/igt@i915_selftest@mock_sanitycheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-kbl4/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][71] ([i915#109]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-skl9/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [FAIL][73] ([i915#54]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][75] ([i915#435] / [i915#456] / [i915#460]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb8/igt@kms_fbcon_fbt@fbc-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][77] ([i915#69]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html
    - shard-tglb:         [INCOMPLETE][79] ([i915#456] / [i915#460]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb1/igt@kms_fbcon_fbt@psr-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-glk:          [FAIL][81] ([i915#34]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [FAIL][83] ([i915#49]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-iclb:         [INCOMPLETE][85] ([i915#123] / [i915#140]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][87] ([i915#123] / [i915#69]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][89] ([fdo#112347] / [i915#648] / [i915#667]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +4 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-tglb:         [INCOMPLETE][93] ([i915#460]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb8/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][95] ([fdo#109276]) -> [PASS][96] +15 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-clean:
    - shard-tglb:         [SKIP][97] ([fdo#112080]) -> [SKIP][98] ([fdo#111912] / [fdo#112080])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-tglb9/igt@gem_ctx_isolation@vcs2-clean.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-tglb4/igt@gem_ctx_isolation@vcs2-clean.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][99] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][100] ([fdo#112391] / [i915#648] / [i915#667])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-skl3/igt@kms_plane@pixel-format-pipe-a-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][101] ([k.org#204565]) -> [FAIL][102] ([i915#716])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7535/shard-kbl3/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/shard-kbl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#669]: https://gitlab.freedesktop.org/drm/intel/issues/669
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7535 -> Patchwork_15686

  CI-20190529: 20190529
  CI_DRM_7535: 34001bc76b9079dd2a313a7428099ca3b5d44394 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5342: 3e43fb3fa97ce25819444d63848439acf6e397b5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15686: 50fb69813c949f49787899fe28953e407f8860e5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15686/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
