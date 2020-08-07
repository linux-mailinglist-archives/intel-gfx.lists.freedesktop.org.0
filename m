Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1A023F391
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 22:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B7EE6E201;
	Fri,  7 Aug 2020 20:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A30B46E1F3;
 Fri,  7 Aug 2020 20:10:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C23BA47E9;
 Fri,  7 Aug 2020 20:10:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 07 Aug 2020 20:10:31 -0000
Message-ID: <159683103160.26557.18107758264664493900@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200807125440.3419-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200807125440.3419-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915/gt=3A_Remove_defunct_intel?=
 =?utf-8?b?X3ZpcnR1YWxfZW5naW5lX2dldF9zaWJsaW5nKCkgKHJldjIp?=
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
Content-Type: multipart/mixed; boundary="===============0949642926=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0949642926==
Content-Type: multipart/alternative;
 boundary="===============6459925655232552672=="

--===============6459925655232552672==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/7] drm/i915/gt: Remove defunct intel_virtual_engine_get_sibling() (rev2)
URL   : https://patchwork.freedesktop.org/series/80393/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8857_full -> Patchwork_18323_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18323_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18323_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18323_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf_pmu@init-wait@vcs0:
    - shard-snb:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-snb6/igt@perf_pmu@init-wait@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-snb6/igt@perf_pmu@init-wait@vcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_18323_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#1528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-glk3/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#454])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl8/igt@kms_hdr@bpc-switch.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-position-covered-pipe-b-planes:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl9/igt@kms_plane@plane-position-covered-pipe-b-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl8/igt@kms_plane@plane-position-covered-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-iclb1/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +6 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-wait-forked-busy-hang:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#62] / [i915#92]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-kbl6/igt@kms_vblank@pipe-b-wait-forked-busy-hang.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-kbl6/igt@kms_vblank@pipe-b-wait-forked-busy-hang.html

  
#### Possible fixes ####

  * igt@i915_selftest@mock@contexts:
    - shard-skl:          [INCOMPLETE][25] ([i915#198]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl8/igt@i915_selftest@mock@contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl2/igt@i915_selftest@mock@contexts.html
    - shard-apl:          [INCOMPLETE][27] ([i915#1635]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-apl8/igt@i915_selftest@mock@contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-apl4/igt@i915_selftest@mock@contexts.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][29] ([i915#118] / [i915#95]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][31] ([i915#1982]) -> [PASS][32] +18 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl3/igt@kms_color@pipe-b-ctm-negative.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl3/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +6 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-bottom-edge:
    - shard-glk:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-128x128-bottom-edge.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-glk1/igt@kms_cursor_edge_walk@pipe-c-128x128-bottom-edge.html

  * igt@kms_cursor_legacy@pipe-a-torture-move:
    - shard-glk:          [DMESG-WARN][37] ([i915#118] / [i915#95]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-glk8/igt@kms_cursor_legacy@pipe-a-torture-move.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-glk9/igt@kms_cursor_legacy@pipe-a-torture-move.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-hsw6/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-vga1-hdmi-a1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-hsw4/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:
    - shard-glk:          [FAIL][41] ([i915#2122]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-glk4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][43] ([i915#1188]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][45] ([fdo#108145] / [i915#265]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][47] ([fdo#109642] / [fdo#111068]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][49] ([fdo#109441]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-iclb7/igt@kms_psr@psr2_sprite_plane_onoff.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][51] ([i915#31]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-kbl4/igt@kms_setmode@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-kbl3/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][53] ([i915#1930]) -> [TIMEOUT][54] ([i915#1958])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][55] ([i915#588]) -> [SKIP][56] ([i915#658])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][57] ([i915#1319]) -> [TIMEOUT][58] ([i915#1319] / [i915#1958])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-kbl7/igt@kms_content_protection@atomic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-kbl4/igt@kms_content_protection@atomic.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [DMESG-FAIL][59] ([i915#1982]) -> [DMESG-WARN][60] ([i915#1982])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:
    - shard-snb:          [SKIP][61] ([fdo#109271]) -> [TIMEOUT][62] ([i915#1958]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8857 -> Patchwork_18323

  CI-20190529: 20190529
  CI_DRM_8857: 009d7480effe9b4d0d70a15f97fe21f80bfcbc25 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5765: 9f0977284d54ed37496260988dfcd6d2ad72dd1e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18323: b59671512b13c003557926c0c0a16630eea0266a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/index.html

--===============6459925655232552672==
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
<tr><td><b>Series:</b></td><td>series starting with [1/7] drm/i915/gt: Remove defunct intel_virtual_engine_get_sibling() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80393/">https://patchwork.freedesktop.org/series/80393/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8857_full -&gt; Patchwork_18323_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18323_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18323_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18323_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@perf_pmu@init-wait@vcs0:<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-snb6/igt@perf_pmu@init-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-snb6/igt@perf_pmu@init-wait@vcs0.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18323_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process@render:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1528">i915#1528</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-glk3/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl8/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl10/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered-pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl9/igt@kms_plane@plane-position-covered-pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl8/igt@kms_plane@plane-position-covered-pipe-b-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-iclb1/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-forked-busy-hang:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-kbl6/igt@kms_vblank@pipe-b-wait-forked-busy-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-kbl6/igt@kms_vblank@pipe-b-wait-forked-busy-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +6 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl8/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl2/igt@i915_selftest@mock@contexts.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-apl8/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-apl4/igt@i915_selftest@mock@contexts.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-180.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-negative:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl3/igt@kms_color@pipe-b-ctm-negative.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl3/igt@kms_color@pipe-b-ctm-negative.html">PASS</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-bottom-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-128x128-bottom-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-glk1/igt@kms_cursor_edge_walk@pipe-c-128x128-bottom-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-a-torture-move:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-glk8/igt@kms_cursor_legacy@pipe-a-torture-move.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-glk9/igt@kms_cursor_legacy@pipe-a-torture-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-hsw6/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-hsw4/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-glk4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-iclb8/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-iclb7/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-kbl4/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-kbl3/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-kbl7/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-kbl4/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8857/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18323/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8857 -&gt; Patchwork_18323</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8857: 009d7480effe9b4d0d70a15f97fe21f80bfcbc25 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5765: 9f0977284d54ed37496260988dfcd6d2ad72dd1e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18323: b59671512b13c003557926c0c0a16630eea0266a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============6459925655232552672==--

--===============0949642926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0949642926==--
