Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 506DE1E7AA6
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 12:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A4746E8BC;
	Fri, 29 May 2020 10:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 180A26E8BA;
 Fri, 29 May 2020 10:31:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01652A66C9;
 Fri, 29 May 2020 10:31:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 May 2020 10:31:00 -0000
Message-ID: <159074826097.3331.11349941859112210871@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200529085809.23691-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200529085809.23691-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Add_a_few_asserts_aroun?=
 =?utf-8?q?d_handling_of_i915=5Frequest=5Fis=5Factive=28=29?=
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

Series: series starting with [1/2] drm/i915: Add a few asserts around handling of i915_request_is_active()
URL   : https://patchwork.freedesktop.org/series/77781/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8552_full -> Patchwork_17812_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17812_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17812_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17812_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-kbl2/igt@gem_softpin@noreloc-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-kbl3/igt@gem_softpin@noreloc-s3.html

  * igt@kms_lease@page_flip_implicit_plane:
    - shard-glk:          NOTRUN -> [TIMEOUT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-glk7/igt@kms_lease@page_flip_implicit_plane.html

  
Known issues
------------

  Here are the changes found in Patchwork_17812_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-tglb:         ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [FAIL][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-kbl7/igt@i915_suspend@forcewake.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-kbl:          [PASS][56] -> [FAIL][57] ([i915#54] / [i915#93] / [i915#95])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#54])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#1188])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_lease@page_flip_implicit_plane:
    - shard-apl:          [PASS][64] -> [TIMEOUT][65] ([i915#1635]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl2/igt@kms_lease@page_flip_implicit_plane.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-apl7/igt@kms_lease@page_flip_implicit_plane.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [PASS][66] -> [INCOMPLETE][67] ([i915#69])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][68] -> [FAIL][69] ([fdo#108145] / [i915#265]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][70] -> [FAIL][71] ([i915#173])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-iclb5/igt@kms_psr@no_drrs.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][72] -> [SKIP][73] ([fdo#109441])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-apl:          [FAIL][74] ([i915#1528]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl8/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-apl8/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-hsw:          [INCOMPLETE][76] ([i915#61]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-hsw8/igt@gem_exec_whisper@basic-fds-forked-all.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-hsw2/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [DMESG-FAIL][78] -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-FAIL][80] ([i915#1925]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-glk2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-glk8/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][82] ([IGT#5]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-snb:          [DMESG-WARN][84] ([i915#42]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-snb5/igt@kms_fbcon_fbt@fbc-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-snb2/igt@kms_fbcon_fbt@fbc-suspend.html

  * {igt@kms_flip@flip-vs-expired-vblank@a-edp1}:
    - shard-skl:          [FAIL][86] ([i915#46]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:
    - shard-snb:          [SKIP][88] ([fdo#109271]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [DMESG-WARN][90] ([i915#180]) -> [PASS][91] +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][92] ([i915#180] / [i915#95]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][94] ([fdo#108145] / [i915#265]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][96] ([fdo#109441]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][98] ([i915#1542]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-hsw8/igt@perf@blocking-parameterized.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-hsw1/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][100] ([i915#468]) -> [FAIL][101] ([i915#454])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][102] ([i915#1319] / [i915#1635]) -> [FAIL][103] ([fdo#110321] / [fdo#110336] / [i915#95])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl1/igt@kms_content_protection@atomic.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-apl1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [FAIL][104] ([fdo#110321] / [i915#93] / [i915#95]) -> [TIMEOUT][105] ([i915#1319])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-kbl2/igt@kms_content_protection@lic.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-kbl7/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][106] ([fdo#110321]) -> [DMESG-FAIL][107] ([fdo#110321])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl4/igt@kms_content_protection@srm.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-apl2/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-apl:          [SKIP][108] ([fdo#109271]) -> [TIMEOUT][109] ([i915#1635]) +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-apl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          [FAIL][110] ([fdo#108145] / [i915#265]) -> [FAIL][111] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8552 -> Patchwork_17812

  CI-20190529: 20190529
  CI_DRM_8552: cd4a9b47339259e3a98601fff14438f17fd2d7dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5683: 757b6e72d546fd2dbc3801a73796d67b0854021b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17812: 522975053dc11eb107875674dddf3538ed967134 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17812/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
