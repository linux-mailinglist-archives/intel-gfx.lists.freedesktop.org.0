Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E12971FC982
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 11:08:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E3BA6E84B;
	Wed, 17 Jun 2020 09:08:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 45D776E544;
 Wed, 17 Jun 2020 09:08:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F104A3C0D;
 Wed, 17 Jun 2020 09:08:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stephen Rothwell" <sfr@canb.auug.org.au>
Date: Wed, 17 Jun 2020 09:08:06 -0000
Message-ID: <159238488609.29977.1316223417165602523@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200617105929.534edd34@canb.auug.org.au>
In-Reply-To: <20200617105929.534edd34@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgbGlu?=
 =?utf-8?q?ux-next=3A_build_failure_after_merge_of_the_drm-misc_tree?=
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

Series: linux-next: build failure after merge of the drm-misc tree
URL   : https://patchwork.freedesktop.org/series/78444/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8638_full -> Patchwork_17974_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17974_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17974_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17974_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-plain-flip@c-hdmi-a1:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-hsw6/igt@kms_flip@basic-plain-flip@c-hdmi-a1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-hsw2/igt@kms_flip@basic-plain-flip@c-hdmi-a1.html

  
Known issues
------------

  Here are the changes found in Patchwork_17974_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#1528])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-apl3/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-apl6/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#1528]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_exec_schedule@implicit-write-read@rcs0:
    - shard-snb:          [PASS][9] -> [INCOMPLETE][10] ([i915#82])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-snb4/igt@gem_exec_schedule@implicit-write-read@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-snb2/igt@gem_exec_schedule@implicit-write-read@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-glk2/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-glk2/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_userptr_blits@userfault:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#93] / [i915#95]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-kbl2/igt@gem_userptr_blits@userfault.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-kbl7/igt@gem_userptr_blits@userfault.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#636] / [i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-skl7/igt@i915_suspend@forcewake.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-skl5/igt@i915_suspend@forcewake.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#165])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-kbl3/igt@kms_ccs@pipe-b-missing-ccs-buffer.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-kbl2/igt@kms_ccs@pipe-b-missing-ccs-buffer.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +8 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-skl4/igt@kms_flip_tiling@flip-changes-tiling.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-skl6/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][21] -> [DMESG-FAIL][22] ([i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-apl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - shard-glk:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-glk6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-glk9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-256:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#95]) +22 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-apl8/igt@kms_plane_cursor@pipe-b-overlay-size-256.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-apl4/igt@kms_plane_cursor@pipe-b-overlay-size-256.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-b-wait-busy-hang:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-apl1/igt@kms_vblank@pipe-b-wait-busy-hang.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-apl1/igt@kms_vblank@pipe-b-wait-busy-hang.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-iclb6/igt@perf_pmu@module-unload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-iclb5/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@core_getstats:
    - shard-kbl:          [DMESG-WARN][35] ([i915#93] / [i915#95]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-kbl2/igt@core_getstats.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-kbl7/igt@core_getstats.html

  * igt@gem_ctx_persistence@engines-hostile@vcs0:
    - shard-tglb:         [FAIL][37] ([i915#1622]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-tglb1/igt@gem_ctx_persistence@engines-hostile@vcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-tglb3/igt@gem_ctx_persistence@engines-hostile@vcs0.html

  * igt@gem_exec_schedule@implicit-read-write@rcs0:
    - shard-snb:          [INCOMPLETE][39] ([i915#82]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-snb4/igt@gem_exec_schedule@implicit-read-write@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-snb5/igt@gem_exec_schedule@implicit-read-write@rcs0.html

  * igt@gem_mmap@basic:
    - shard-iclb:         [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-iclb3/igt@gem_mmap@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-iclb1/igt@gem_mmap@basic.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-apl:          [DMESG-WARN][43] ([i915#95]) -> [PASS][44] +13 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-apl1/igt@gem_mmap_wc@write-cpu-read-wc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-apl2/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@gem_shrink@reclaim:
    - shard-hsw:          [SKIP][45] ([fdo#109271]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-hsw1/igt@gem_shrink@reclaim.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-hsw4/igt@gem_shrink@reclaim.html

  * igt@i915_query@query-topology-kernel-writes:
    - shard-apl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-apl4/igt@i915_query@query-topology-kernel-writes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-apl7/igt@i915_query@query-topology-kernel-writes.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-tglb:         [DMESG-WARN][49] ([i915#402]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][51] ([i915#46]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@suspend:
    - shard-skl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60] +6 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-skl6/igt@kms_psr@suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-skl8/igt@kms_psr@suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][65] ([i915#1319]) -> [TIMEOUT][66] ([i915#1319] / [i915#1958])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-kbl1/igt@kms_content_protection@lic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-kbl6/igt@kms_content_protection@lic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][67] ([i915#1525]) -> [DMESG-FAIL][68] ([i915#95])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][69] ([i915#79]) -> [DMESG-WARN][70] ([i915#1982])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [DMESG-WARN][71] ([i915#1982]) -> [INCOMPLETE][72] ([i915#198])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][74] ([fdo#108145] / [i915#1982])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1622]: https://gitlab.freedesktop.org/drm/intel/issues/1622
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8638 -> Patchwork_17974

  CI-20190529: 20190529
  CI_DRM_8638: 83818e4910cac8b84d8f915c773ab3f55fa30365 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17974: 5bf216c35bb20d8eed4b272e9d273906b8a2e514 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17974/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
