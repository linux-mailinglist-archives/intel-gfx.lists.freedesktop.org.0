Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EC3239C0E
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 23:03:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86A636E1D8;
	Sun,  2 Aug 2020 21:03:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 59CBD6E1B8;
 Sun,  2 Aug 2020 21:03:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5363BA47E2;
 Sun,  2 Aug 2020 21:03:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 02 Aug 2020 21:03:12 -0000
Message-ID: <159640219230.1947.8742904129731572967@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200802164412.2738-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200802164412.2738-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/42=5D_drm/i915=3A_Fix_wrong_return_valu?=
 =?utf-8?q?e?=
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
Content-Type: multipart/mixed; boundary="===============0373816715=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0373816715==
Content-Type: multipart/alternative;
 boundary="===============4985203713294625591=="

--===============4985203713294625591==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/42] drm/i915: Fix wrong return value
URL   : https://patchwork.freedesktop.org/series/80179/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8832_full -> Patchwork_18295_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18295_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18295_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18295_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_ringsize@active@bcs0:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl6/igt@gem_ctx_ringsize@active@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl9/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-tglb1/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@kms_mmap_write_crc@main:
    - shard-glk:          [PASS][8] -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk2/igt@kms_mmap_write_crc@main.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-glk5/igt@kms_mmap_write_crc@main.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8832_full and Patchwork_18295_full:

### New IGT tests (3) ###

  * igt@i915_selftest@live@scheduler:
    - Statuses : 7 pass(s)
    - Exec time: [0.45, 3.40] s

  * igt@i915_selftest@mock@scheduler:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 1.00] s

  * igt@i915_selftest@perf@scheduler:
    - Statuses : 7 pass(s)
    - Exec time: [0.44, 16.03] s

  

Known issues
------------

  Here are the changes found in Patchwork_18295_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@nonpriv-switch@rcs0:
    - shard-apl:          [PASS][10] -> [INCOMPLETE][11] ([i915#1635]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-apl3/igt@gem_ctx_isolation@nonpriv-switch@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-apl6/igt@gem_ctx_isolation@nonpriv-switch@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#1528])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl9/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-kbl:          [PASS][14] -> [INCOMPLETE][15] ([i915#794])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl2/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl6/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@i915_selftest@mock@contexts:
    - shard-skl:          [PASS][16] -> [INCOMPLETE][17] ([i915#198])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl2/igt@i915_selftest@mock@contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl10/igt@i915_selftest@mock@contexts.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-iclb:         [PASS][18] -> [DMESG-WARN][19] ([i915#1982])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#54])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-glk6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982]) +8 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl6/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl9/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
    - shard-glk:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-glk3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:
    - shard-tglb:         [PASS][26] -> [DMESG-WARN][27] ([i915#1982]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([fdo#108145] / [i915#265]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109441]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][34] -> [FAIL][35] ([i915#31])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_setmode@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl2/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@universal-plane-pipe-a-functional:
    - shard-snb:          [PASS][36] -> [SKIP][37] ([fdo#109271])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-snb5/igt@kms_universal_plane@universal-plane-pipe-a-functional.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-snb6/igt@kms_universal_plane@universal-plane-pipe-a-functional.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][38] -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl10/igt@gem_eio@in-flight-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl8/igt@gem_eio@in-flight-suspend.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][40] ([i915#1436] / [i915#1635] / [i915#716]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-apl2/igt@gen9_exec_parse@allowed-all.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-apl8/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload:
    - shard-skl:          [DMESG-WARN][42] ([i915#1982]) -> [PASS][43] +11 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl9/igt@i915_module_load@reload.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl7/igt@i915_module_load@reload.html

  * igt@kms_addfb_basic@small-bo:
    - shard-snb:          [TIMEOUT][44] ([i915#1958]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-snb6/igt@kms_addfb_basic@small-bo.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-snb6/igt@kms_addfb_basic@small-bo.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-glk:          [FAIL][46] ([i915#54]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk8/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-glk8/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-iclb:         [DMESG-WARN][48] ([i915#128]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb5/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-iclb1/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [FAIL][50] ([i915#2122]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-kbl:          [DMESG-WARN][52] ([i915#1982]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][54] ([i915#180]) -> [PASS][55] +11 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][56] ([i915#1982]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-iclb:         [DMESG-WARN][58] ([i915#1982]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb3/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-iclb6/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][60] ([i915#1188]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][62] ([fdo#108145] / [i915#265]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][64] ([fdo#109441]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb8/igt@kms_psr@psr2_suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-iclb2/igt@kms_psr@psr2_suspend.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][66] ([i915#1958]) -> [FAIL][67] ([i915#1930])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-iclb:         [INCOMPLETE][68] ([i915#1958]) -> [TIMEOUT][69] ([i915#1958])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb8/igt@gem_exec_reloc@basic-concurrent16.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-iclb1/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-kbl:          [INCOMPLETE][70] ([i915#1958]) -> [TIMEOUT][71] ([i915#1958])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl1/igt@gem_exec_reloc@basic-concurrent16.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl1/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-tglb:         [INCOMPLETE][72] ([i915#1958]) -> [TIMEOUT][73] ([i915#1958])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-tglb2/igt@gem_exec_reloc@basic-concurrent16.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-tglb1/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [INCOMPLETE][74] ([i915#1958]) -> [TIMEOUT][75] ([i915#1958])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk6/igt@gem_exec_reloc@basic-concurrent16.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-glk6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][76] ([i915#1319] / [i915#1958]) -> [TIMEOUT][77] ([i915#1319])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_content_protection@srm.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl2/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-snb:          [TIMEOUT][78] ([i915#1958]) -> [SKIP][79] ([fdo#109271])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][80] ([fdo#108145] / [i915#1982]) -> [DMESG-WARN][81] ([i915#1982])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][82] ([fdo#109271] / [i915#1635] / [i915#716]) -> [FAIL][83] ([i915#1610] / [i915#1635] / [i915#2263])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-apl2/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-apl1/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2263]: https://gitlab.freedesktop.org/drm/intel/issues/2263
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8832 -> Patchwork_18295

  CI-20190529: 20190529
  CI_DRM_8832: 00b9a4b2331e1dceef8994e3b144e2c5e8c55003 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5757: d78c7fd293cb228fe03ccff730202b033e25ff18 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18295: 87199b330ee5b1848413d0c52cd95897a747b0cf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/index.html

--===============4985203713294625591==
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
<tr><td><b>Series:</b></td><td>series starting with [01/42] drm/i915: Fix wrong return value</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80179/">https://patchwork.freedesktop.org/series/80179/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8832_full -&gt; Patchwork_18295_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18295_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18295_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18295_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@active@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl6/igt@gem_ctx_ringsize@active@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl9/igt@gem_ctx_ringsize@active@bcs0.html">INCOMPLETE</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@fds:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-tglb1/igt@gem_exec_parallel@fds.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked-all.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_mmap_write_crc@main:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk2/igt@kms_mmap_write_crc@main.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-glk5/igt@kms_mmap_write_crc@main.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_8832_full and Patchwork_18295_full:</p>
<h3>New IGT tests (3)</h3>
<ul>
<li>
<p>igt@i915_selftest@live@scheduler:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.45, 3.40] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@scheduler:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 1.00] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf@scheduler:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.44, 16.03] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18295_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@nonpriv-switch@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-apl3/igt@gem_ctx_isolation@nonpriv-switch@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-apl6/igt@gem_ctx_isolation@nonpriv-switch@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process@render:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl9/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1528">i915#1528</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl2/igt@gem_exec_whisper@basic-contexts-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl6/igt@gem_exec_whisper@basic-contexts-forked-all.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl2/igt@i915_selftest@mock@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl10/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-glk6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl6/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl9/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-glk3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl2/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-a-functional:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-snb5/igt@kms_universal_plane@universal-plane-pipe-a-functional.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-snb6/igt@kms_universal_plane@universal-plane-pipe-a-functional.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl10/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl8/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-apl2/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-apl8/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl9/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl7/igt@i915_module_load@reload.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@small-bo:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-snb6/igt@kms_addfb_basic@small-bo.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-snb6/igt@kms_addfb_basic@small-bo.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk8/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-glk8/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@all-pipes-torture-bo:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb5/igt@kms_cursor_legacy@all-pipes-torture-bo.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/128">i915#128</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-iclb1/igt@kms_cursor_legacy@all-pipes-torture-bo.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb3/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-iclb6/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb8/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb8/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-iclb1/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl1/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl1/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-tglb2/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-tglb1/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk6/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-glk6/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_content_protection@srm.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-kbl2/igt@kms_content_protection@srm.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-random:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-apl2/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/shard-apl1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2263">i915#2263</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8832 -&gt; Patchwork_18295</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8832: 00b9a4b2331e1dceef8994e3b144e2c5e8c55003 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5757: d78c7fd293cb228fe03ccff730202b033e25ff18 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18295: 87199b330ee5b1848413d0c52cd95897a747b0cf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4985203713294625591==--

--===============0373816715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0373816715==--
