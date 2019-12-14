Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF8511F145
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 10:58:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F65A6E09C;
	Sat, 14 Dec 2019 09:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 148D46E069;
 Sat, 14 Dec 2019 09:58:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00F25A0BC6;
 Sat, 14 Dec 2019 09:57:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 14 Dec 2019 09:57:59 -0000
Message-ID: <157631747997.13805.15866547049596590329@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/fbc=3A_Reject_PLANE=5FOFFS?=
 =?utf-8?q?ET=2Ey=254!=3D0_on_icl+_too?=
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

Series: series starting with [1/6] drm/i915/fbc: Reject PLANE_OFFSET.y%4!=0 on icl+ too
URL   : https://patchwork.freedesktop.org/series/70883/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7559_full -> Patchwork_15745_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15745_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-skl7/igt@gen9_exec_parse@allowed-single.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * {igt@gen9_exec_parse@bb-secure}:
    - shard-tglb:         NOTRUN -> [SKIP][3] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb9/igt@gen9_exec_parse@bb-secure.html

  * {igt@gen9_exec_parse@bb-start-param}:
    - shard-iclb:         NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb3/igt@gen9_exec_parse@bb-start-param.html

  
Known issues
------------

  Here are the changes found in Patchwork_15745_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#69]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-skl2/igt@gem_ctx_isolation@vecs0-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-skl3/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@in-flight-suspend:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#456] / [i915#460] / [i915#534])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb1/igt@gem_eio@in-flight-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@bonded-slice:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#800])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb4/igt@gem_exec_balancer@bonded-slice.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb3/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111736])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb4/igt@gem_exec_balancer@nop.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb4/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#470])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb1/igt@gem_exec_parallel@fds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb6/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#472] / [i915#707])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb4/igt@gem_sync@basic-each.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb3/igt@gem_sync@basic-each.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][25] -> [FAIL][26] ([i915#818])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-hsw4/igt@gem_tiled_blits@interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][27] -> [DMESG-WARN][28] ([fdo#111870]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-snb6/igt@gem_userptr_blits@sync-unmap-cycles.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-snb4/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb8/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([fdo#112057])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb2/igt@i915_selftest@live_requests.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb7/igt@i915_selftest@live_requests.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#109])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-skl3/igt@kms_color@pipe-a-ctm-0-25.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-skl9/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#54]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:
    - shard-hsw:          [PASS][37] -> [DMESG-WARN][38] ([IGT#6])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#79]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-hsw:          [PASS][41] -> [INCOMPLETE][42] ([i915#61])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-hsw4/igt@kms_flip@flip-vs-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-hsw5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][43] -> [INCOMPLETE][44] ([i915#456] / [i915#460] / [i915#474])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-tglb:         [PASS][47] -> [FAIL][48] ([i915#160])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
    - shard-iclb:         [PASS][49] -> [FAIL][50] ([i915#160])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [PASS][51] -> [INCOMPLETE][52] ([i915#435] / [i915#667])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180]) +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [PASS][55] -> [INCOMPLETE][56] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([fdo#108145])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109441]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@suspend:
    - shard-tglb:         [PASS][61] -> [INCOMPLETE][62] ([i915#456] / [i915#460]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb3/igt@kms_psr@suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb3/igt@kms_psr@suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109276]) +9 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][65] ([i915#435]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb6/igt@gem_busy@close-race.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb5/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][67] ([fdo#109276] / [fdo#112080]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb3/igt@gem_ctx_isolation@vcs1-clean.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [FAIL][69] ([i915#679]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-apl7/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-apl4/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][71] ([fdo#110854]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][73] ([fdo#111593]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb4/igt@gem_exec_gttfill@basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb1/igt@gem_exec_gttfill@basic.html

  * {igt@gem_exec_schedule@pi-userfault-bsd2}:
    - shard-iclb:         [SKIP][75] ([fdo#109276]) -> [PASS][76] +8 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][77] ([fdo#112146]) -> [PASS][78] +6 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][79] ([i915#644]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [DMESG-WARN][81] ([fdo#111870]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-kbl:          [DMESG-WARN][83] -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-kbl3/igt@gen9_exec_parse@allowed-single.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-kbl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-kbl:          [DMESG-WARN][85] ([i915#747]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-kbl2/igt@i915_selftest@mock_sanitycheck.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-kbl1/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][87] ([i915#109]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-skl4/igt@kms_color@pipe-b-ctm-green-to-red.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-skl8/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +4 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [FAIL][91] ([i915#54]) -> [PASS][92] +4 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen:
    - shard-hsw:          [DMESG-WARN][93] ([IGT#6]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-hsw4/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-offscreen:
    - shard-iclb:         [DMESG-WARN][95] ([IGT#6]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-128x42-offscreen.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb2/igt@kms_cursor_crc@pipe-c-cursor-128x42-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][97] ([i915#79]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][99] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [INCOMPLETE][101] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-kbl1/igt@kms_plane@pixel-format-pipe-b-planes.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-kbl4/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][103] ([fdo#108145]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-tglb:         [INCOMPLETE][107] ([i915#456] / [i915#460]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-tglb7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-tglb6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf@oa-exponents:
    - shard-glk:          [FAIL][109] ([i915#84]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-glk8/igt@perf@oa-exponents.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-glk1/igt@perf@oa-exponents.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][111] ([fdo#112080]) -> [PASS][112] +4 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][113] ([i915#444]) -> [DMESG-WARN][114] ([i915#109] / [i915#443] / [i915#444])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-snb1/igt@gem_eio@kms.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-snb2/igt@gem_eio@kms.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-iclb:         [DMESG-WARN][115] ([fdo#107724]) -> [FAIL][116] ([i915#160])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][117] ([i915#648]) -> [INCOMPLETE][118] ([i915#648] / [i915#667])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7559/shard-skl6/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#160]: https://gitlab.freedesktop.org/drm/intel/issues/160
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#443]: https://gitlab.freedesktop.org/drm/intel/issues/443
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#800]: https://gitlab.freedesktop.org/drm/intel/issues/800
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7559 -> Patchwork_15745

  CI-20190529: 20190529
  CI_DRM_7559: 20e59a24767007b53544c05d51ebeb874dbf194d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15745: b2bd1c12ad0dc481565048b5b36d8931aaf22965 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15745/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
