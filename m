Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8659F3A4973
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 21:32:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F1926E082;
	Fri, 11 Jun 2021 19:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C52446E082;
 Fri, 11 Jun 2021 19:32:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE0A8A363D;
 Fri, 11 Jun 2021 19:32:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 11 Jun 2021 19:32:13 -0000
Message-ID: <162343993375.29312.5946321900423157197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210611145459.8576-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210611145459.8576-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_system_memory_to_TTM_for_discrete_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0155835850=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0155835850==
Content-Type: multipart/alternative;
 boundary="===============9070938007432177178=="

--===============9070938007432177178==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Move system memory to TTM for discrete (rev2)
URL   : https://patchwork.freedesktop.org/series/90898/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10212_full -> Patchwork_20347_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20347_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20347_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20347_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-glk9/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-glk5/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

  
Known issues
------------

  Here are the changes found in Patchwork_20347_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@chamelium:
    - shard-iclb:         NOTRUN -> [SKIP][3] ([fdo#111827])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@feature_discovery@chamelium.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#658])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb2/igt@feature_discovery@psr2.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb6/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@legacy-engines-hostile:
    - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-snb2/igt@gem_ctx_persistence@legacy-engines-hostile.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-kbl3/igt@gem_eio@in-flight-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-kbl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][9] ([i915#2846])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][14] ([i915#2389])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#118] / [i915#95]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_huc_copy@huc-copy:
    - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#2190])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#307])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-glk9/igt@gem_mmap_gtt@big-copy-odd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-glk5/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-iclb:         [PASS][20] -> [FAIL][21] ([i915#2428])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][22] ([i915#2658])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl3/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#768])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109290])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3323])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][26] ([i915#3002])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl1/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109289])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][28] ([fdo#109271]) +282 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-snb6/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#198])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl1/igt@i915_pm_dc@dc5-psr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl6/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#454])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl1/igt@i915_pm_dc@dc6-psr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][33] ([i915#3462])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl6/igt@i915_selftest@live@execlists.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#110725] / [fdo#111614])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111304])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl4/igt@kms_ccs@pipe-c-crc-primary-rotation-180.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +21 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl7/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl1/igt@kms_color@pipe-b-ctm-green-to-red.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl1/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-snb:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-snb5/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-kbl3/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][43] ([i915#2105])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement:
    - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271]) +17 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109278] / [fdo#109279])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278]) +4 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#3451])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#79])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#2122])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109280]) +5 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@static-swap:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([i915#1187])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_hdr@static-swap.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#533])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-x:
    - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +17 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-kbl3/igt@kms_plane_multiple@atomic-pipe-d-tiling-x.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658]) +5 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#109441]) +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb6/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +184 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#2437])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][66] -> [FAIL][67] ([i915#1542]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl9/igt@perf@blocking.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl10/igt@perf@blocking.html

  * igt@perf@non-zero-reason:
    - shard-skl:          [PASS][68] -> [FAIL][69] ([i915#2938])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl5/igt@perf@non-zero-reason.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl3/igt@perf@non-zero-reason.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#1722])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl7/igt@perf@polling-small-buf.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl7/igt@perf@polling-small-buf.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109291])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@sysfs_clients@create:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl8/igt@sysfs_clients@create.html

  * igt@sysfs_clients@pidname:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#2994])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2994]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl8/igt@sysfs_clients@recycle-many.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-kbl:          [DMESG-WARN][76] ([i915#180]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_eio@suspend:
    - shard-iclb:         [INCOMPLETE][78] ([i915#1185]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb3/igt@gem_eio@suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@gem_eio@suspend.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [FAIL][80] ([i915#2842]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-skl:          [INCOMPLETE][82] ([i915#198]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl2/igt@gem_exec_suspend@basic-s3.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-skl:          [FAIL][84] ([i915#307]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl9/igt@gem_mmap_gtt@big-copy.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl2/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [FAIL][86] ([i915#2428]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [DMESG-WARN][88] ([i915#1982]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl6/igt@i915_module_load@reload-with-fault-injection.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][90] ([i915#180]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][92] ([i915#79]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [DMESG-WARN][94] ([i915#180]) -> [PASS][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [INCOMPLETE][96] ([i915#146] / [i915#198]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl5/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl8/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a2:
    - shard-glk:          [FAIL][98] ([i915#2122]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-glk6/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-glk2/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-skl:          [FAIL][100] ([i915#49]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][102] ([i915#1188]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][104] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][106] ([fdo#109441]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [FAIL][108] ([i915#1542]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb7/igt@perf@polling-parameterized.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb7/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][110] ([i915#588]) -> [SKIP][111] ([i915#658])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][112] ([i915#1804] / [i915#2684]) -> [WARN][113] ([i915#2684])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [DMESG-FAIL][114] ([i915#3462]) -> [INCOMPLETE][115] ([i915#3462])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-tglb1/igt@i915_selftest@live@execlists.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-tglb3/igt@i915_selftest@live@execlists.html
    - shard-skl:          [INCOMPLETE][116] -> [INCOMPLETE][117] ([i915#2782] / [i915#3462])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl9/igt@i915_selftest@live@execlists.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl2/igt@i915_selftest@live@execlists.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][118] ([i915#2920]) -> [SKIP][119] ([i915#658]) +2 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][120] ([i915#658]) -> [SKIP][121] ([i915#2920])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126]) ([i915#1436] / [i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130]) ([i915#1436] / [i915#1814] / [i915#3002] / [i915#3363])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-kbl1/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-kbl1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-kbl1/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-kbl7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-kbl7/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-kbl2/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-kbl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-kbl4/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-kbl4/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][131], [FAIL][132], [FAIL][133]) ([i915#2782] / [i915#3002]) -> ([FAIL][134], [FAIL][135], [FAIL][136]) ([i915#2426] / [i915#2782] / [i915#3002])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb2/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb7/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb6/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb6/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb5/igt@runner@aborted.html
    - shard-apl:          ([FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141]) ([fdo#109271] / [i915#1610] / [i915#180] / [i915#1814] / [i915#2292] / [i915#3363]) -> ([FAIL][142], [FAIL][143], [FAIL][144]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#3363])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-apl6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-apl6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-apl7/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-apl6/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-apl7/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl1/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl6/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][145], [FAIL][146], [FAIL][147]) ([i915#1436] / [i915#2426] / [i915#2966] / [i915#3002]) -> ([FAIL][148], [FAIL][149], [FAIL][150]) ([i915#1436] / [i915#2966] / [i915#3002])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-tglb3/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-tglb1/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-tglb8/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-tglb5/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-tglb6/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-tglb3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][151], [FAIL][152]) ([i915#3002] / [i915#3363]) -> ([FAIL][153], [FAIL][154], [FAIL][155]) ([i915#1436] / [i915#2426] / [i915#3002] / [i915#3363])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl4/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl7/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl9/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl7/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109290]: https://bugs.freedesktop.org/sh

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/index.html

--===============9070938007432177178==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Move system memory to TTM for disc=
rete (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/90898/">https://patchwork.freedesktop.org/series/90898/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20347/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20347/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10212_full -&gt; Patchwork_20347_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20347_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20347_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20347_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-glk9/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20347/shard-glk5/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a=
2.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20347_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@chamelium:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@feature_discovery@chamelium.h=
tml">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-ic=
lb6/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-hostile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-kbl3/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-=
kbl1/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-apl6/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0347/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/sh=
ard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb4/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20347/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked.html">DMESG-WA=
RN</a> ([i915#118] / [i915#95]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@gem_huc_copy@huc-copy.html">S=
KIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-glk9/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-=
glk5/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347=
/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy.html">FAIL</a> ([i915#2428=
])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-apl3/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@gem_render_copy@yf-tiled-mc-c=
cs-to-vebox-y-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@gem_userptr_blits@coherency-s=
ync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh">fdo#109290<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-apl6/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-apl1/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@gen7_exec_parse@chained-batch=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-snb6/igt@gen9_exec_parse@batch-invalid-=
length.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +282 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl1/igt@i915_pm_dc@dc5-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl6/ig=
t@i915_pm_dc@dc5-psr.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl3/ig=
t@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-apl6/igt@i915_selftest@live@execlists.h=
tml">DMESG-FAIL</a> ([i915#3462])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_big_fb@linear-32bpp-rotat=
e-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-skl4/igt@kms_ccs@pipe-c-crc-primary-rot=
ation-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-apl7/igt@kms_chamelium@dp-mode-timings.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [fdo#111827]) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl1/igt@kms_color@pipe-b-ctm-green-to-red.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2034=
7/shard-skl1/igt@kms_color@pipe-b-ctm-green-to-red.html">DMESG-WARN</a> ([i=
915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-snb5/igt@kms_color_chamelium@pipe-b-ctm=
-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-kbl3/igt@kms_color_chamelium@pipe-c-ctm=
-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_color_chamelium@pipe-inva=
lid-ctm-matrix-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109284">fdo#109284</a> / [fdo#111827]) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-apl6/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-m=
ax-size-rapid-movement.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-rapid-movement.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109279">fdo#109279</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_cursor_edge_walk@pipe-d-1=
28x128-top-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109278">fdo#109278</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytile=
d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20347/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-yti=
led.html">FAIL</a> ([i915#3451])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20347/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@b-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20347/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20347/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_hdr@static-swap.html">SKI=
P</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-apl8/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-c=
overage-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-x:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-kbl3/igt@kms_plane_multiple@atomic-pipe=
-d-tiling-x.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-apl8/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +5 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb=
6/igt@kms_psr@psr2_suspend.html">SKIP</a> ([fdo#109441]) +3 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-apl7/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +184 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_writeback@writeback-inval=
id-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl9/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl10/igt@pe=
rf@blocking.html">FAIL</a> ([i915#1542]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl5/igt@perf@non-zero-reason.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl3/=
igt@perf@non-zero-reason.html">FAIL</a> ([i915#2938])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl7/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl=
7/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@prime_nv_api@i915_nv_import_t=
wice.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-skl8/igt@sysfs_clients@create.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@sysfs_clients@pidname.html">S=
KIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-apl8/igt@sysfs_clients@recycle-many.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20347/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@=
rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb3/igt@gem_eio@suspend.html">INCOMPLETE</a> ([i915#1=
185]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0347/shard-iclb2/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20347/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl2/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a>=
 ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20347/shard-skl4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl9/igt@gem_mmap_gtt@big-copy.html">FAIL</a> ([i915#30=
7]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_203=
47/shard-skl2/igt@gem_mmap_gtt@big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a=
> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20347/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl6/igt@i915_module_load@reload-with-fault-injection.h=
tml">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20347/shard-skl4/igt@i915_module_load@reload-wit=
h-fault-injection.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20347/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@bc-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-glk6/igt@kms_flip@2x-=
flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20347/shard-apl7/igt@kms_flip@flip-vs-suspend-int=
erruptible@a-dp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl5/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLE=
TE</a> ([i915#146] / [i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20347/shard-skl8/igt@kms_flip@flip-vs-suspend@c-e=
dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-glk6/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html">F=
AIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20347/shard-glk2/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mm=
ap-cpu.html">FAIL</a> ([i915#49]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20347/shard-skl8/igt@kms_frontbuffer_tracking@ps=
r-rgb101010-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#=
1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20347/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb8/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#10=
9642] / [fdo#111068] / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_psr2_su@page_flip.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb8/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109=
441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0347/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb7/igt@perf@polling-parameterized.html">FAIL</a> ([i=
915#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20347/shard-iclb7/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20347/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20347/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fenc=
e.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10212/shard-tglb1/igt@i915_selftest@live@execlists.html">DMESG-FAIL<=
/a> ([i915#3462]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20347/shard-tglb3/igt@i915_selftest@live@execlists.html">INCOMPL=
ETE</a> ([i915#3462])</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10212/shard-skl9/igt@i915_selftest@live@execlists.html">INCOMPLETE</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2034=
7/shard-skl2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> ([i915#2=
782] / [i915#3462])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
1.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20347/shard-iclb6/igt@kms_psr2_sf@overlay-plane-upd=
ate-sf-dmg-area-1.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-3.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20347/shard-iclb2/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-3.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10212/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-kbl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10212/shard-kbl7/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#=
180] / [i915#3002] / [i915#3363]) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20347/shard-kbl2/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/sh=
ard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20347/shard-kbl4/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347=
/shard-kbl4/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#1814] /=
 [i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-iclb2/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10212/shard-iclb7/igt@runner@aborted.html">FAIL</a>) ([i915#2782] / =
[i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20347/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-iclb6/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20347/shard-iclb5/igt@runner@aborted.html">FAIL</a>) ([i915#242=
6] / [i915#2782] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10212/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10212/shard-apl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#1610] =
/ [i915#180] / [i915#1814] / [i915#2292] / [i915#3363]) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl1/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20347/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-apl6/igt=
@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#180] / [i915#3002] / [i915#3=
363])</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-tglb1/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10212/shard-tglb8/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / =
[i915#2426] / [i915#2966] / [i915#3002]) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_20347/shard-tglb5/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20347/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-tglb3/igt@runner@aborte=
d.html">FAIL</a>) ([i915#1436] / [i915#2966] / [i915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10212/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10212/shard-skl7/igt@runner@abo=
rted.html">FAIL</a>) ([i915#3002] / [i915#3363]) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl9/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20347/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20347/shard-skl2/igt@runner@a=
borted.html">FAIL</a>) ([i915#1436] / [i915#2426] / [i915#3002] / [i915#336=
3])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============9070938007432177178==--

--===============0155835850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0155835850==--
