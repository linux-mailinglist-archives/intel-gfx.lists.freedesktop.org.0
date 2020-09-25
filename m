Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 638A9278AD0
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 16:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA8C6ECE9;
	Fri, 25 Sep 2020 14:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40E326ECE9;
 Fri, 25 Sep 2020 14:24:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 37A8FAA0EA;
 Fri, 25 Sep 2020 14:24:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 25 Sep 2020 14:24:18 -0000
Message-ID: <160104385819.10247.15075871835185722897@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200925084651.3250104-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200925084651.3250104-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/atomic=3A_document_and_enforce_?=
 =?utf-8?q?rules_around_=22spurious=22_EBUSY?=
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
Content-Type: multipart/mixed; boundary="===============0244786800=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0244786800==
Content-Type: multipart/alternative;
 boundary="===============4587329146217896306=="

--===============4587329146217896306==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/atomic: document and enforce rules around "spurious" EBUSY
URL   : https://patchwork.freedesktop.org/series/82086/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9056_full -> Patchwork_18570_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18570_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18570_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18570_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-hsw1/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-glk:          [PASS][2] -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-glk5/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-glk8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  
Known issues
------------

  Here are the changes found in Patchwork_18570_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-apl:          [PASS][4] -> [FAIL][5] ([i915#1635] / [i915#2374])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-apl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-apl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2389])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-glk6/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-glk9/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_flink_race@flink_close:
    - shard-iclb:         [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-iclb6/igt@gem_flink_race@flink_close.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-iclb2/igt@gem_flink_race@flink_close.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][10] -> [SKIP][11] ([i915#2190])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_offset@blt-coherency:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2328])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-glk8/igt@gem_mmap_offset@blt-coherency.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-glk5/igt@gem_mmap_offset@blt-coherency.html

  * igt@i915_selftest@mock@contexts:
    - shard-apl:          [PASS][14] -> [INCOMPLETE][15] ([i915#1635] / [i915#2278])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-apl8/igt@i915_selftest@mock@contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-apl8/igt@i915_selftest@mock@contexts.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][16] -> [DMESG-WARN][17] ([i915#1982])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-hsw4/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-hsw6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][18] -> [DMESG-WARN][19] ([i915#1982]) +11 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl1/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#2122])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-glk6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#1188])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][26] -> [DMESG-FAIL][27] ([fdo#108145] / [i915#1982])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([fdo#108145] / [i915#265])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109441]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-b:
    - shard-snb:          [PASS][32] -> [SKIP][33] ([fdo#109271]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-snb5/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-snb5/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html

  * igt@kms_vblank@pipe-b-query-forked-busy-hang:
    - shard-kbl:          [PASS][34] -> [DMESG-WARN][35] ([i915#1982])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-kbl7/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-kbl2/igt@kms_vblank@pipe-b-query-forked-busy-hang.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-iclb:         [FAIL][36] -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-iclb7/igt@gem_ctx_persistence@processes.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-iclb2/igt@gem_ctx_persistence@processes.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-skl:          [TIMEOUT][38] ([i915#1958] / [i915#2424]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl10/igt@gem_userptr_blits@sync-unmap-cycles.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl2/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [TIMEOUT][40] ([i915#1958]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl6/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl5/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [WARN][42] ([i915#1519]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-hsw8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_big_fb@linear-8bpp-rotate-0:
    - shard-hsw:          [INCOMPLETE][44] -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-hsw1/igt@kms_big_fb@linear-8bpp-rotate-0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-hsw1/igt@kms_big_fb@linear-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-kbl:          [DMESG-WARN][46] ([i915#1982]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-kbl4/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-kbl7/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][48] ([i915#180]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@fill-fb:
    - shard-skl:          [FAIL][50] ([i915#52]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl5/igt@kms_draw_crc@fill-fb.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl1/igt@kms_draw_crc@fill-fb.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [INCOMPLETE][52] ([i915#198]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [FAIL][54] ([i915#699]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl2/igt@kms_flip_tiling@flip-changes-tiling.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][56] ([i915#1982]) -> [PASS][57] +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][58] ([fdo#108145] / [i915#265]) -> [PASS][59] +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][60] ([fdo#109441]) -> [PASS][61] +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][62] ([i915#1319] / [i915#1635] / [i915#1958]) -> [TIMEOUT][63] ([i915#1319] / [i915#1635])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-apl6/igt@kms_content_protection@atomic-dpms.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-apl4/igt@kms_content_protection@atomic-dpms.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#2328]: https://gitlab.freedesktop.org/drm/intel/issues/2328
  [i915#2374]: https://gitlab.freedesktop.org/drm/intel/issues/2374
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9056 -> Patchwork_18570

  CI-20190529: 20190529
  CI_DRM_9056: 637f215bda901249b97da25ee2983f72cc12e1c5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5788: a7520973a210b7268c3039902789f433ee0f5ef7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18570: caec65c608aee1c0348a4959106423639f35b47d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/index.html

--===============4587329146217896306==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/atomic: document and enforce rules around &quot;spurious&quot; EBUSY</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82086/">https://patchwork.freedesktop.org/series/82086/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9056_full -&gt; Patchwork_18570_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18570_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18570_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18570_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-hsw1/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-glk5/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-glk8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18570_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-apl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-apl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2374">i915#2374</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-glk6/igt@gem_exec_reloc@basic-many-active@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-glk9/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_flink_race@flink_close:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-iclb6/igt@gem_flink_race@flink_close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-iclb2/igt@gem_flink_race@flink_close.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-tglb7/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@blt-coherency:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-glk8/igt@gem_mmap_offset@blt-coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-glk5/igt@gem_mmap_offset@blt-coherency.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2328">i915#2328</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-apl8/igt@i915_selftest@mock@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-apl8/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-hsw4/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-hsw6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl1/igt@kms_flip@flip-vs-suspend@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-glk6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-b:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-snb5/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-snb5/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-forked-busy-hang:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-kbl7/igt@kms_vblank@pipe-b-query-forked-busy-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-kbl2/igt@kms_vblank@pipe-b-query-forked-busy-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-iclb7/igt@gem_ctx_persistence@processes.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-iclb2/igt@gem_ctx_persistence@processes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl10/igt@gem_userptr_blits@sync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl2/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl6/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl5/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1519">i915#1519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-hsw8/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-hsw1/igt@kms_big_fb@linear-8bpp-rotate-0.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-hsw1/igt@kms_big_fb@linear-8bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-kbl4/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-kbl7/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@fill-fb:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl5/igt@kms_draw_crc@fill-fb.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/52">i915#52</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl1/igt@kms_draw_crc@fill-fb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl2/igt@kms_flip_tiling@flip-changes-tiling.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/699">i915#699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_content_protection@atomic-dpms:<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9056/shard-apl6/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18570/shard-apl4/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9056 -&gt; Patchwork_18570</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9056: 637f215bda901249b97da25ee2983f72cc12e1c5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5788: a7520973a210b7268c3039902789f433ee0f5ef7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18570: caec65c608aee1c0348a4959106423639f35b47d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4587329146217896306==--

--===============0244786800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0244786800==--
