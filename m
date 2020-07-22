Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F3A229781
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 13:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AA989B18;
	Wed, 22 Jul 2020 11:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E74F189B00;
 Wed, 22 Jul 2020 11:34:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE607A011A;
 Wed, 22 Jul 2020 11:34:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Jul 2020 11:34:04 -0000
Message-ID: <159541764477.2272.6451938834394331112@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200721204001.12473-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200721204001.12473-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Copy_default_modparams_to_mock_i915=5Fdevice_=28rev3?=
 =?utf-8?q?=29?=
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
Content-Type: multipart/mixed; boundary="===============0848397170=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0848397170==
Content-Type: multipart/alternative;
 boundary="===============2619828058017142350=="

--===============2619828058017142350==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Copy default modparams to mock i915_device (rev3)
URL   : https://patchwork.freedesktop.org/series/79736/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8775_full -> Patchwork_18223_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18223_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18223_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18223_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-skl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl3/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18223_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][2] -> [DMESG-WARN][3] ([i915#180]) +4 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_sync@basic-store-all:
    - shard-snb:          [PASS][4] -> [INCOMPLETE][5] ([i915#82])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-snb2/igt@gem_sync@basic-store-all.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-snb6/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][6] -> [FAIL][7] ([i915#454])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          [PASS][8] -> [FAIL][9] ([i915#454])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl2/igt@i915_pm_dc@dc6-psr.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#1635] / [i915#1982])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-apl2/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-apl3/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - shard-skl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1982]) +12 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl10/igt@kms_flip@basic-plain-flip@a-edp1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl1/igt@kms_flip@basic-plain-flip@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#2122])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#1188])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [PASS][18] -> [INCOMPLETE][19] ([i915#198])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-position-hole-pipe-a-planes:
    - shard-tglb:         [PASS][20] -> [DMESG-WARN][21] ([i915#402])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-tglb1/igt@kms_plane@plane-position-hole-pipe-a-planes.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-tglb1/igt@kms_plane@plane-position-hole-pipe-a-planes.html
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-kbl7/igt@kms_plane@plane-position-hole-pipe-a-planes.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-kbl3/igt@kms_plane@plane-position-hole-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([fdo#108145] / [i915#265]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#173])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-iclb2/igt@kms_psr@no_drrs.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Possible fixes ####

  * igt@gem_softpin@overlap:
    - shard-skl:          [DMESG-WARN][30] ([i915#1982]) -> [PASS][31] +11 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl5/igt@gem_softpin@overlap.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl8/igt@gem_softpin@overlap.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [DMESG-WARN][32] ([i915#402]) -> [PASS][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-tglb3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-apl:          [DMESG-WARN][34] ([i915#1635] / [i915#1982]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-apl1/igt@i915_module_load@reload-with-fault-injection.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-apl1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][36] ([i915#118] / [i915#95]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-glk4/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-tglb:         [DMESG-WARN][38] ([i915#1149] / [i915#402]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-tglb1/igt@kms_color@pipe-c-ctm-0-5.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-tglb8/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][40] ([i915#57]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][42] ([i915#79]) -> [PASS][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [DMESG-WARN][44] ([i915#180]) -> [PASS][45] +6 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][46] ([i915#2122]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-tglb:         [DMESG-WARN][48] ([i915#1982]) -> [PASS][49] +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt:
    - shard-glk:          [FAIL][50] ([i915#49]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-tglb:         [SKIP][52] ([i915#668]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-tglb6/igt@kms_psr@psr2_cursor_plane_onoff.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-tglb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][54] ([fdo#109441]) -> [PASS][55] +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@prime_mmap@test_correct:
    - shard-snb:          [TIMEOUT][56] ([i915#1958] / [i915#2119]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-snb4/igt@prime_mmap@test_correct.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-snb2/igt@prime_mmap@test_correct.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-skl:          [FAIL][58] ([i915#1731]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl10/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-iclb:         [FAIL][60] ([i915#1755]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-iclb2/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-iclb8/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][62] ([i915#1958] / [i915#2119]) -> [FAIL][63] ([i915#1930])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][64] ([i915#2036]) -> [WARN][65] ([i915#2021])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-snb2/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-snb6/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][66] ([i915#588]) -> [SKIP][67] ([i915#658])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-glk:          [INCOMPLETE][68] -> [SKIP][69] ([fdo#109271])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-glk4/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-glk9/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:
    - shard-snb:          [TIMEOUT][70] ([i915#1958] / [i915#2119]) -> [SKIP][71] ([fdo#109271]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-snb4/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8775 -> Patchwork_18223

  CI-20190529: 20190529
  CI_DRM_8775: 2dc052ea981f79cb758997ffa762fe4ea18ef9ca @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5742: 540f9de91ab2816885a9076a4c0835cb3dc67a97 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18223: 1ce78e4ee9495eed1a63187a3f690fe7729c5945 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/index.html

--===============2619828058017142350==
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
<tr><td><b>Series:</b></td><td>drm/i915: Copy default modparams to mock i915_device (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79736/">https://patchwork.freedesktop.org/series/79736/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8775_full -&gt; Patchwork_18223_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18223_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18223_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18223_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl3/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18223_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-snb2/igt@gem_sync@basic-store-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-snb6/igt@gem_sync@basic-store-all.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-apl2/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-apl3/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl10/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl1/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-pipe-a-planes:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-tglb1/igt@kms_plane@plane-position-hole-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-tglb1/igt@kms_plane@plane-position-hole-pipe-a-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-kbl7/igt@kms_plane@plane-position-hole-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-kbl3/igt@kms_plane@plane-position-hole-pipe-a-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-iclb2/igt@kms_psr@no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-iclb1/igt@kms_psr@no_drrs.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/173">i915#173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_softpin@overlap:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl5/igt@gem_softpin@overlap.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl8/igt@gem_softpin@overlap.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-tglb3/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-apl1/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-apl1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-glk4/igt@kms_big_fb@linear-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-tglb1/igt@kms_color@pipe-c-ctm-0-5.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-tglb8/igt@kms_color@pipe-c-ctm-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/57">i915#57</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-tglb6/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/668">i915#668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-tglb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_correct:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-snb4/igt@prime_mmap@test_correct.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-snb2/igt@prime_mmap@test_correct.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-skl10/igt@sysfs_heartbeat_interval@mixed@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-iclb2/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1755">i915#1755</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-iclb8/igt@sysfs_timeslice_duration@timeout@vecs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-spin-others@vcs0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-snb2/igt@gem_exec_reloc@basic-spin-others@vcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2036">i915#2036</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-snb6/igt@gem_exec_reloc@basic-spin-others@vcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2021">i915#2021</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-glk4/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-glk9/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8775/shard-snb4/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18223/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8775 -&gt; Patchwork_18223</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8775: 2dc052ea981f79cb758997ffa762fe4ea18ef9ca @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5742: 540f9de91ab2816885a9076a4c0835cb3dc67a97 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18223: 1ce78e4ee9495eed1a63187a3f690fe7729c5945 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2619828058017142350==--

--===============0848397170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0848397170==--
