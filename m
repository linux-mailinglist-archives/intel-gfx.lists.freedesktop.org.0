Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCFF36F082
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 21:32:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 144C36F49B;
	Thu, 29 Apr 2021 19:32:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14B056F49A;
 Thu, 29 Apr 2021 19:32:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DEC97A66C9;
 Thu, 29 Apr 2021 19:32:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 29 Apr 2021 19:32:34 -0000
Message-ID: <161972475487.20425.11496003118976887950@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210429103056.407067-1-matthew.auld@intel.com>
In-Reply-To: <20210429103056.407067-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/9=5D_drm/doc/rfc=3A_i915_DG1_uAPI?=
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
Content-Type: multipart/mixed; boundary="===============2056948636=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2056948636==
Content-Type: multipart/alternative;
 boundary="===============9173090936502529672=="

--===============9173090936502529672==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/9] drm/doc/rfc: i915 DG1 uAPI
URL   : https://patchwork.freedesktop.org/series/89648/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10027_full -> Patchwork_20034_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_20034_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_import_export@flink:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#750])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-tglb6/igt@drm_import_export@flink.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-tglb2/igt@drm_import_export@flink.html

  * igt@gem_ctx_persistence@legacy-engines-hostile@render:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#2410])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb6/igt@gem_ctx_persistence@legacy-engines-hostile@render.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-iclb5/igt@gem_ctx_persistence@legacy-engines-hostile@render.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-snb6/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_ctx_ringsize@active@bcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][6] ([i915#3316])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl4/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][7] -> [TIMEOUT][8] ([i915#2369] / [i915#3063])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-tglb8/igt@gem_eio@unwedge-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-tglb6/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         [PASS][9] -> [TIMEOUT][10] ([i915#2369] / [i915#2481] / [i915#3070])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb2/igt@gem_eio@unwedge-stress.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-iclb4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2846])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl2/igt@gem_exec_fair@basic-deadline.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2846])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#2842])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#2842]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#2842]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-sync@rcs0:
    - shard-kbl:          [PASS][23] -> [SKIP][24] ([fdo#109271])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#307])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk6/igt@gem_mmap_gtt@big-copy-xy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-glk9/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#644])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-apl:          NOTRUN -> [FAIL][29] ([i915#3324])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl3/igt@gem_userptr_blits@set-cache-level.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][30] ([i915#2724])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-snb6/igt@gem_userptr_blits@vma-merge.html
    - shard-apl:          NOTRUN -> [FAIL][31] ([i915#3318])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl1/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][32] ([i915#180])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][33] ([fdo#109271]) +478 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-snb7/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][34] -> [INCOMPLETE][35] ([i915#2782])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#111615])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-tglb5/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#2705])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl4/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111304]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl10/igt@kms_ccs@pipe-c-ccs-on-another-bo.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +20 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl2/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl9/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [PASS][41] -> [DMESG-WARN][42] ([i915#1982])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl6/igt@kms_color@pipe-b-ctm-0-5.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl5/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl6/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-a-gamma:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109284] / [fdo#111827])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-tglb5/igt@kms_color_chamelium@pipe-a-gamma.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-glk:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-glk4/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-snb:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-snb6/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][47] ([i915#1319]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#3319])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#2346])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +47 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl7/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2122]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl6/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2642])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2672])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +171 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#49])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][61] ([fdo#109271]) +28 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-glk4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][62] ([i915#1188])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#533]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-glk4/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#533]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][66] ([i915#265])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([fdo#108145] / [i915#265])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][70] ([i915#265])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][71] ([i915#265])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][72] ([fdo#108145] / [i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-glk4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2733])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658]) +5 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-glk:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-glk4/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658]) +5 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-tglb:         NOTRUN -> [FAIL][79] ([i915#132])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-tglb5/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][80] -> [SKIP][81] ([fdo#109441]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-iclb7/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271]) +245 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl8/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2437])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl2/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2437])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2994]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl9/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#2994]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl3/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@split-50:
    - shard-kbl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2994]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl7/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-internal-immediate:
    - shard-skl:          [DMESG-WARN][88] -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl6/igt@gem_eio@in-flight-internal-immediate.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl5/igt@gem_eio@in-flight-internal-immediate.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][90] ([i915#2842]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][92] ([i915#2842]) -> [PASS][93] +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [FAIL][94] ([i915#2842]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-iclb1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][96] ([i915#2849]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-glk:          [FAIL][98] ([i915#307]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk9/igt@gem_mmap_gtt@big-copy-odd.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-glk3/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [FAIL][100] ([i915#2428]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][102] ([i915#1436] / [i915#716]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl2/igt@gen9_exec_parse@allowed-single.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-apl:          [FAIL][104] ([i915#3343]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-apl3/igt@i915_pm_dc@dc9-dpms.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl8/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:
    - shard-skl:          [DMESG-WARN][106] ([i915#1982]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl9/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl6/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][108] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][110] ([i915#79]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][112] ([i915#198]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [INCOMPLETE][114] ([i915#155] / [i915#180]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1:
    - shard-skl:          [FAIL][116] ([i915#2122]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl2/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][118] ([fdo#109441]) -> [PASS][119] +2 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb7/igt@kms_psr@psr2_primary_mmap_gtt.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@perf_pmu@rc6-suspend:
    - shard-kbl:          [DMESG-WARN][120] ([i915#180]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl7/igt@perf_pmu@rc6-suspend.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl7/igt@perf_pmu@rc6-suspend.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][122] ([i915#1804] / [i915#2684]) -> [WARN][123] ([i915#2684])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][124] ([i915#1226]) -> [SKIP][125] ([fdo#109349])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][126] ([i915#658]) -> [SKIP][127] ([i915#2920]) +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][128] ([i915#2920]) -> [SKIP][129] ([i915#658]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([i915#180] / [i915#2292] / [i915#2505] / [i915#3002] / [i915#92]) -> ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([i915#180] / [i915#2505] / [i915#3002])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl7/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl6/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl6/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl2/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl2/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl3/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl1/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][140], [FAIL][141]) ([fdo#109271] / [i915#180] / [i915#3002]) -> ([FAIL][142], [FAIL][143], [FAIL][144]) ([i915#180] / [i915#1814] / [i915#3002])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-apl8/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-apl8/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl8/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#3002]) -> ([FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([i915#1814] / [i915#2029] / [i915#3002])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl3/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl10/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl4/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl2/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl5/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl3/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl10/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl3/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl2/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl8/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.fr

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/index.html

--===============9173090936502529672==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/9] drm/doc/rfc: i=
915 DG1 uAPI</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/89648/">https://patchwork.freedesktop.org/series/89648/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20034/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20034/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10027_full -&gt; Patchwork_20034_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20034_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_import_export@flink:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-tglb6/igt@drm_import_export@flink.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-t=
glb2/igt@drm_import_export@flink.html">INCOMPLETE</a> ([i915#750])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile@render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-iclb6/igt@gem_ctx_persistence@legacy-engines-hostile@re=
nder.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20034/shard-iclb5/igt@gem_ctx_persistence@legacy-engines-hosti=
le@render.html">FAIL</a> ([i915#2410])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-snb6/igt@gem_ctx_persistence@legacy-eng=
ines-queued.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@active@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl4/igt@gem_ctx_ringsize@active@bcs0.h=
tml">INCOMPLETE</a> ([i915#3316])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10027/shard-tglb8/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-tgl=
b6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])=
</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10027/shard-iclb2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-icl=
b4/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] =
/ [i915#3070])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10027/shard-kbl2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shar=
d-kbl3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10027/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shar=
d-glk9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/s=
hard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
034/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10027/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/sh=
ard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +2=
 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10027/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/sha=
rd-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +1 s=
imilar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/sh=
ard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html">SKIP</a> ([fdo#109271])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-glk6/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-g=
lk9/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-skl4/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_200=
34/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#=
644])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-apl3/igt@gem_userptr_blits@set-cache-le=
vel.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20034/shard-snb6/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> ([i915#2724])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20034/shard-apl1/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-kbl6/igt@gem_workarounds@suspend-resume=
-fd.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-snb7/igt@gen9_exec_parse@batch-invalid-=
length.html">SKIP</a> ([fdo#109271]) +478 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-snb2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/sha=
rd-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-tglb5/igt@kms_big_fb@yf-tiled-addfb.htm=
l">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl4/igt@kms_big_joiner@invalid-modeset=
.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl10/igt@kms_ccs@pipe-c-ccs-on-another=
-bo.html">SKIP</a> ([fdo#109271] / [fdo#111304]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-apl2/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl9/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-skl6/igt@kms_color@pipe-b-ctm-0-5.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-s=
kl5/igt@kms_color@pipe-b-ctm-0-5.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-kbl6/igt@kms_color_chamelium@pipe-a-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-gamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-tglb5/igt@kms_color_chamelium@pipe-a-ga=
mma.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-glk4/igt@kms_color_chamelium@pipe-d-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-snb6/igt@kms_color_chamelium@pipe-inval=
id-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-apl8/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-=
32x32-rapid-movement.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0034/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20034/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-kbl7/igt@kms_flip@2x-flip-vs-modeset-vs=
-hang.html">SKIP</a> ([fdo#109271]) +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-skl2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20034/shard-skl6/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html">=
FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl10/igt@kms_flip_scaled_crc@flip-64bp=
p-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl8/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +171 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb=
-pgflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20034/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-pr=
imscrn-shrfb-pgflip-blt.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-glk4/igt@kms_frontbuffer_tracking@psr-r=
gb565-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html"=
>FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-apl3/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-glk4/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl4/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-=
alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20034/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.fr">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.fr">fdo#108145</a=
> / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20034/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20034/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-glk4/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.fr">fdo#108145</a=
> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.fr">fdo#108145</a=
> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-apl3/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo=
#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-kbl6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-apl2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-glk4/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-0.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl4/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-tglb5/igt@kms_psr@psr2_sprite_render.ht=
ml">FAIL</a> ([i915#132])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-iclb=
7/igt@kms_psr@psr2_suspend.html">SKIP</a> ([fdo#109441]) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-apl8/igt@kms_vblank@pipe-d-wait-forked-=
hang.html">SKIP</a> ([fdo#109271]) +245 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl2/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-apl3/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-skl9/igt@sysfs_clients@fair-0.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-apl3/igt@sysfs_clients@fair-7.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-kbl7/igt@sysfs_clients@split-50.html">S=
KIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-internal-immediate:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-skl6/igt@gem_eio@in-flight-internal-immediate.html">DME=
SG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20034/shard-skl5/igt@gem_eio@in-flight-internal-immediate.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20034/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20034/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20034/shard-iclb1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20034/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-glk9/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i91=
5#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20034/shard-glk3/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a=
> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20034/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-skl2/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20034/shard-skl4/igt@gen9_exec_parse@allowed-sing=
le.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-apl3/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> ([i915#3343=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2003=
4/shard-apl8/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-skl9/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.htm=
l">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20034/shard-skl6/igt@kms_cursor_edge_walk@pipe-c-6=
4x64-top-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#155] / [i915#180] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl6/igt@kms_fbcon_fbt@fbc-sus=
pend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-glk6/igt@kms_flip@2x-=
flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.=
html">INCOMPLETE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20034/shard-skl2/igt@kms_flip@flip-vs-suspend-in=
terruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">INCOMPLET=
E</a> ([i915#155] / [i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20034/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp=
1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-skl7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-ed=
p1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20034/shard-skl2/igt@kms_flip@wf_vblank-ts-check-i=
nterruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-iclb7/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> =
([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20034/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-kbl7/igt@perf_pmu@rc6-suspend.html">DMESG-WARN</a> ([i9=
15#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20034/shard-kbl7/igt@perf_pmu@rc6-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20034/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fenc=
e.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-W=
ARN</a> ([i915#1226]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20034/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html">=
SKIP</a> ([fdo#109349])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
4.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20034/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
3.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20034/shard-iclb7/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-3.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10027/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10027/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl2/igt@runner@aborted.h=
tml">FAIL</a>) ([i915#180] / [i915#2292] / [i915#2505] / [i915#3002] / [i91=
5#92]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20034/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl3/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20034/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-kbl6/igt@runner@abor=
ted.html">FAIL</a>) ([i915#180] / [i915#2505] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>) ([fdo#109271] / [i915#180] / [i915#3002]) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl8/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20034/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/shard-apl=
3/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#1814] / [i915#3002=
])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10027/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl10/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10027/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10027/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl3/igt@runner@aborted.=
html">FAIL</a>) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#3002]) -&g=
t; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034/sha=
rd-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20034/shard-skl3/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20034=
/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_20034/shard-skl8/igt@runner@aborted.html"=
>FAIL</a>) ([i915#1814] / [i915#2029] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============9173090936502529672==--

--===============2056948636==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2056948636==--
