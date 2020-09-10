Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E8C264550
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 13:27:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 116CA6E90C;
	Thu, 10 Sep 2020 11:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 346176E909;
 Thu, 10 Sep 2020 11:27:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DBC4A7DFE;
 Thu, 10 Sep 2020 11:27:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 10 Sep 2020 11:27:03 -0000
Message-ID: <159973722314.26636.14522534032441719112@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200910095227.9466-1-jani.nikula@intel.com>
In-Reply-To: <20200910095227.9466-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_disable_all_display_fea?=
 =?utf-8?q?tures_when_no_display?=
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
Content-Type: multipart/mixed; boundary="===============1587436724=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1587436724==
Content-Type: multipart/alternative;
 boundary="===============7364076273808617506=="

--===============7364076273808617506==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: disable all display features when no display
URL   : https://patchwork.freedesktop.org/series/81541/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8992_full -> Patchwork_18466_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18466_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18466_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18466_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@1x-modeset-transitions-nonblocking:
    - shard-kbl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-kbl6/igt@kms_atomic_transition@1x-modeset-transitions-nonblocking.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-kbl4/igt@kms_atomic_transition@1x-modeset-transitions-nonblocking.html

  
Known issues
------------

  Here are the changes found in Patchwork_18466_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-apl:          [PASS][3] -> [INCOMPLETE][4] ([i915#1635] / [i915#2439]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl7/igt@gem_exec_reloc@basic-gtt-read-active.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl8/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_exec_reloc@basic-wc-active:
    - shard-snb:          [PASS][5] -> [INCOMPLETE][6] ([i915#2439] / [i915#82]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-snb5/igt@gem_exec_reloc@basic-wc-active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-snb7/igt@gem_exec_reloc@basic-wc-active.html

  * igt@gem_exec_reloc@basic-wc-read-active:
    - shard-kbl:          [PASS][7] -> [INCOMPLETE][8] ([i915#2439]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-kbl7/igt@gem_exec_reloc@basic-wc-read-active.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-kbl6/igt@gem_exec_reloc@basic-wc-read-active.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-iclb:         [PASS][9] -> [INCOMPLETE][10] ([i915#2439]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb3/igt@gem_exec_reloc@basic-write-gtt-active.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb1/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_exec_schedule@deep@rcs0:
    - shard-glk:          [PASS][11] -> [INCOMPLETE][12] ([i915#2439]) +5 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk6/igt@gem_exec_schedule@deep@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk2/igt@gem_exec_schedule@deep@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#2439]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-skl4/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl5/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#2439]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-tglb2/igt@gem_exec_whisper@basic-queues-forked.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-tglb6/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1635] / [i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl2/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl3/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
    - shard-glk:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk8/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk4/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][25] -> [DMESG-FAIL][26] ([fdo#108145] / [i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-skl:          [INCOMPLETE][29] ([i915#1958] / [i915#2439]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-skl1/igt@gem_exec_reloc@basic-concurrent16.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl3/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [INCOMPLETE][31] ([i915#1958] / [i915#2439]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk7/igt@gem_exec_reloc@basic-concurrent16.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk1/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-cpu-active:
    - shard-skl:          [INCOMPLETE][33] ([i915#198] / [i915#2439]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-skl9/igt@gem_exec_reloc@basic-cpu-active.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl4/igt@gem_exec_reloc@basic-cpu-active.html

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - shard-snb:          [INCOMPLETE][35] ([i915#2439] / [i915#82]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-snb2/igt@gem_exec_reloc@basic-cpu-gtt-active.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-snb2/igt@gem_exec_reloc@basic-cpu-gtt-active.html

  * igt@gem_exec_reloc@basic-gtt-active:
    - shard-skl:          [INCOMPLETE][37] ([i915#2439]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-skl5/igt@gem_exec_reloc@basic-gtt-active.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl2/igt@gem_exec_reloc@basic-gtt-active.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-apl:          [INCOMPLETE][39] ([i915#1635] / [i915#2439]) -> [PASS][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl4/igt@gem_exec_reloc@basic-gtt-cpu-active.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl2/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-iclb:         [INCOMPLETE][41] ([i915#2439]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb5/igt@gem_exec_reloc@basic-gtt-read-active.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb8/igt@gem_exec_reloc@basic-gtt-read-active.html
    - shard-glk:          [INCOMPLETE][43] ([i915#2439]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk2/igt@gem_exec_reloc@basic-gtt-read-active.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk7/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-kbl:          [INCOMPLETE][45] ([i915#2439]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-kbl4/igt@gem_exec_reloc@basic-write-read-active.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-kbl1/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@deep@rcs0:
    - shard-tglb:         [INCOMPLETE][47] ([i915#2439]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-tglb2/igt@gem_exec_schedule@deep@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-tglb3/igt@gem_exec_schedule@deep@rcs0.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [DMESG-WARN][49] ([i915#118] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk6/igt@gem_exec_whisper@basic-queues-priority.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk2/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [TIMEOUT][51] ([i915#1958]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-skl2/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl5/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-skl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-skl2/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl10/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge:
    - shard-glk:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][59] ([i915#2346]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
    - shard-kbl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-kbl4/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-kbl2/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][63] ([i915#2122]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [DMESG-WARN][65] ([i915#1982]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][67] ([i915#1188]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb4/igt@kms_psr@psr2_dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb2/igt@kms_psr@psr2_dpms.html

  
#### Warnings ####

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][71] ([i915#1982]) -> [DMESG-FAIL][72] ([i915#1982] / [i915#79])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][73], [FAIL][74], [FAIL][75], [FAIL][76], [FAIL][77], [FAIL][78], [FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83], [FAIL][84], [FAIL][85], [FAIL][86], [FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95]) ([i915#1684] / [i915#2439]) -> ([FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117]) ([i915#2439])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb1/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb6/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb4/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb4/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb1/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb3/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb3/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb4/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb5/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb6/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb5/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb6/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb4/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb1/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb3/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb2/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb7/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb2/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb2/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb5/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb6/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb8/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb5/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb1/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb2/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb2/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb1/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb1/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb5/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb5/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb8/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb6/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb7/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb2/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb8/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb8/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb3/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb3/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb7/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb7/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb7/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb3/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb6/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb4/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([i915#1610] / [i915#1611] / [i915#1635] / [i915#2263] / [i915#2268] / [i915#2439] / [i915#337] / [i915#637]) -> ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160]) ([i915#1610] / [i915#1611] / [i915#1635] / [i915#2263] / [i915#2439] / [i915#337] / [i915#637])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl6/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl1/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl4/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl1/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl7/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl2/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl6/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl3/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl8/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl4/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl8/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl7/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl3/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl4/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl6/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl7/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl8/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl8/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl8/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl4/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl7/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl8/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl2/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl2/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl4/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl8/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl2/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl3/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl2/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl7/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl6/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl8/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl8/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl3/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl3/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl7/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl6/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl1/igt@runner@aborted.html
    - shard-glk:          ([FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180], [FAIL][181]) ([i915#1611] / [i915#2263] / [i915#2268] / [i915#2439] / [k.org#202321]) -> ([FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187], [FAIL][188], [FAIL][189], [FAIL][190], [FAIL][191], [FAIL][192], [FAIL][193], [FAIL][194], [FAIL][195], [FAIL][196], [FAIL][197], [FAIL][198], [FAIL][199], [FAIL][200], [FAIL][201], [FAIL][202], [FAIL][203]) ([i915#1611] / [i915#2263] / [i915#2268] / [i915#2398] / [i915#2439] / [k.org#202321])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk9/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk8/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk6/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk3/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk9/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk3/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk5/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk8/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk7/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk1/igt@runner@aborted.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk2/igt@runner@aborted.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk4/igt@runner@aborted.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk5/igt@runner@aborted.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk1/igt@runner@aborted.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk4/igt@runner@aborted.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk5/igt@runner@aborted.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk7/igt@runner@aborted.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk2/igt@runner@aborted.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk7/igt@runner@aborted.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk5/igt@runner@aborted.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk3/igt@runner@aborted.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk9/igt@runner@aborted.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk7/igt@runner@aborted.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk5/igt@runner@aborted.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk2/igt@runner@aborted.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk4/igt@runner@aborted.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk3/igt@runner@aborted.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk9/igt@runner@aborted.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk5/igt@runner@aborted.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk4/igt@runner@aborted.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk6/igt@runner@aborted.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk9/igt@runner@aborted.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk8/igt@runner@aborted.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk7/igt@runner@aborted.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk1/igt@runner@aborted.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk3/igt@runner@aborted.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk1/igt@runner@aborted.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk1/igt@runner@aborted.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk5/igt@runner@aborted.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk8/igt@runner@aborted.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk7/igt@runner@aborted.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk8/igt@runner@aborted.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/index.html

--===============7364076273808617506==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: disable=
 all display features when no display</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/81541/">https://patchwork.freedesktop.org/series/81541/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18466/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18466/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8992_full -&gt; Patchwork_18466_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18466_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18466_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18466_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_atomic_transition@1x-modeset-transitions-nonblocking:<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-kbl6/igt@kms_atomic_transition@1x-modeset-transitions-no=
nblocking.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_18466/shard-kbl4/igt@kms_atomic_transition@1x-modeset-tra=
nsitions-nonblocking.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18466_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-active:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-apl7/igt@gem_exec_reloc@basic-gtt-read-active.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
466/shard-apl8/igt@gem_exec_reloc@basic-gtt-read-active.html">INCOMPLETE</a=
> ([i915#1635] / [i915#2439]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-active:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-snb5/igt@gem_exec_reloc@basic-wc-active.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/sh=
ard-snb7/igt@gem_exec_reloc@basic-wc-active.html">INCOMPLETE</a> ([i915#243=
9] / [i915#82]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-active:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-kbl7/igt@gem_exec_reloc@basic-wc-read-active.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_184=
66/shard-kbl6/igt@gem_exec_reloc@basic-wc-read-active.html">INCOMPLETE</a> =
([i915#2439]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-iclb3/igt@gem_exec_reloc@basic-write-gtt-active.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18466/shard-iclb1/igt@gem_exec_reloc@basic-write-gtt-active.html">INCOMPLET=
E</a> ([i915#2439]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-glk6/igt@gem_exec_schedule@deep@rcs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard=
-glk2/igt@gem_exec_schedule@deep@rcs0.html">INCOMPLETE</a> ([i915#2439]) +5=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-skl4/igt@gem_exec_whisper@basic-contexts-forked-all.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18466/shard-skl5/igt@gem_exec_whisper@basic-contexts-forked-all.html">I=
NCOMPLETE</a> ([i915#2439]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-tglb2/igt@gem_exec_whisper@basic-queues-forked.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8466/shard-tglb6/igt@gem_exec_whisper@basic-queues-forked.html">INCOMPLETE<=
/a> ([i915#2439]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transit=
ions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18466/shard-skl9/igt@kms_cursor_legacy@cursor-vs-=
flip-atomic-transitions-varying-size.html">DMESG-WARN</a> ([i915#1982]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8992/shard-apl2/igt@kms_cursor_legacy@short-flip-before-cursor-atomi=
c-transitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18466/shard-apl3/igt@kms_cursor_legacy@short-flip-bef=
ore-cursor-atomic-transitions.html">DMESG-WARN</a> ([i915#1635] / [i915#198=
2])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8992/shard-glk8/igt@kms_cursor_legacy@short-flip-before-cursor-atomi=
c-transitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18466/shard-glk4/igt@kms_cursor_legacy@short-flip-bef=
ore-cursor-atomic-transitions.html">DMESG-WARN</a> ([i915#1982])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-i=
ndfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18466/shard-tglb2/igt@kms_frontbuffer_tracking@fb=
c-1p-primscrn-pri-indfb-draw-mmap-wc.html">DMESG-WARN</a> ([i915#1982]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18466/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">D=
MESG-FAIL</a> ([fdo#108145] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18466/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-=
min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8992/shard-skl1/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLE=
TE</a> ([i915#1958] / [i915#2439]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18466/shard-skl3/igt@gem_exec_reloc@basic-concu=
rrent16.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8992/shard-glk7/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLE=
TE</a> ([i915#1958] / [i915#2439]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18466/shard-glk1/igt@gem_exec_reloc@basic-concu=
rrent16.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-active:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-skl9/igt@gem_exec_reloc@basic-cpu-active.html">INCOMPLET=
E</a> ([i915#198] / [i915#2439]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18466/shard-skl4/igt@gem_exec_reloc@basic-cpu-act=
ive.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-active:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-snb2/igt@gem_exec_reloc@basic-cpu-gtt-active.html">INCOM=
PLETE</a> ([i915#2439] / [i915#82]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_18466/shard-snb2/igt@gem_exec_reloc@basic-cpu-=
gtt-active.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-active:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-skl5/igt@gem_exec_reloc@basic-gtt-active.html">INCOMPLET=
E</a> ([i915#2439]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18466/shard-skl2/igt@gem_exec_reloc@basic-gtt-active.html">PAS=
S</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-apl4/igt@gem_exec_reloc@basic-gtt-cpu-active.html">INCOM=
PLETE</a> ([i915#1635] / [i915#2439]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18466/shard-apl2/igt@gem_exec_reloc@basic-gt=
t-cpu-active.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-active:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8992/shard-iclb5/igt@gem_exec_reloc@basic-gtt-read-active.html">INCO=
MPLETE</a> ([i915#2439]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_18466/shard-iclb8/igt@gem_exec_reloc@basic-gtt-read-activ=
e.html">PASS</a> +3 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8992/shard-glk2/igt@gem_exec_reloc@basic-gtt-read-active.html">INCOM=
PLETE</a> ([i915#2439]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18466/shard-glk7/igt@gem_exec_reloc@basic-gtt-read-active.=
html">PASS</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-kbl4/igt@gem_exec_reloc@basic-write-read-active.html">IN=
COMPLETE</a> ([i915#2439]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18466/shard-kbl1/igt@gem_exec_reloc@basic-write-read-ac=
tive.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-tglb2/igt@gem_exec_schedule@deep@rcs0.html">INCOMPLETE</=
a> ([i915#2439]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18466/shard-tglb3/igt@gem_exec_schedule@deep@rcs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-glk6/igt@gem_exec_whisper@basic-queues-priority.html">DM=
ESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18466/shard-glk2/igt@gem_exec_whisper@basic-=
queues-priority.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-skl2/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIM=
EOUT</a> ([i915#1958]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18466/shard-skl5/igt@gem_userptr_blits@unsync-unmap-cycles.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-skl2/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">DMES=
G-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_18466/shard-skl10/igt@kms_big_fb@yf-tiled-32bpp-rotate-18=
0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMES=
G-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18466/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.h=
tml">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18466/shard-glk2/igt@kms_cursor_edge_walk@pipe-b=
-128x128-left-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">F=
AIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_18466/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-kbl4/igt@kms_cursor_legacy@short-flip-before-cursor-atom=
ic-transitions.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-kbl2/igt@kms_cursor_=
legacy@short-flip-before-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FA=
IL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18466/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb=
-msflip-blt.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-tglb3/igt@kms_frontbuff=
er_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">PASS</a> +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i91=
5#1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18466/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-iclb4/igt@kms_psr@psr2_dpms.html">SKIP</a> ([fdo#109441]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466=
/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18466/shard-skl6/igt@kms_flip@flip-vs-ex=
pired-vblank-interruptible@a-edp1.html">DMESG-FAIL</a> ([i915#1982] / [i915=
#79])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_8992/shard-iclb4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb4/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_8992/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb3/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8=
992/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb4/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992=
/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb6/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/sh=
ard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb6/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard=
-iclb4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_8992/shard-iclb1/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-ic=
lb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_8992/shard-iclb2/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb7=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_8992/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb2/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_8992/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb6/igt@r=
unner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_8992/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-iclb5/igt@ru=
nner@aborted.html">FAIL</a>) ([i915#1684] / [i915#2439]) -&gt; (<a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb1/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18466/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb2/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18466/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-ic=
lb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18466/shard-iclb5/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/sha=
rd-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18466/shard-iclb8/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1846=
6/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18466/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18466/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb3/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18466/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb7/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18466/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-iclb7/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18466/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-ic=
lb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18466/shard-iclb4/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/sha=
rd-iclb6/igt@runner@aborted.html">FAIL</a>) ([i915#2439])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8992/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl1/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_89=
92/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl2/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/sh=
ard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_8992/shard-apl3/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-a=
pl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_8992/shard-apl4/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl4/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_8992/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl3/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_8992/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl3/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8992/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_89=
92/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-apl8/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/sh=
ard-apl8/igt@runner@aborted.html">FAIL</a>) ([i915#1610] / [i915#1611] / [i=
915#1635] / [i915#2263] / [i915#2268] / [i915#2439] / [i915#337] / [i915#63=
7]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
466/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18466/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl1/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18466/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl2/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18466/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl4/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18466/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl2/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18466/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl2/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18466/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl6/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18466/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-apl8/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18466/shard-apl3/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-ap=
l3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18466/shard-apl7/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard=
-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18466/shard-apl1/igt@runner@aborted.html">FAIL<=
/a>) ([i915#1610] / [i915#1611] / [i915#1635] / [i915#2263] / [i915#2439] /=
 [i915#337] / [i915#637])</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-glk9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8992/shard-glk6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_89=
92/shard-glk9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk3/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/sh=
ard-glk5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_8992/shard-glk8/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-g=
lk7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_8992/shard-glk1/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk2/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_8992/shard-glk4/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk5/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_8992/shard-glk1/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk4/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8992/shard-glk5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8992/shard-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_89=
92/shard-glk5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_8992/shard-glk3/igt@runner@aborted.html">F=
AIL</a>) ([i915#1611] / [i915#2263] / [i915#2268] / [i915#2439] / [k.org#20=
2321]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18466/shard-glk9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk7/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18466/shard-glk5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk2/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18466/shard-glk4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk3/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18466/shard-glk9/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk5/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18466/shard-glk4/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk6/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18466/shard-glk9/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk8/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18466/shard-glk7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-glk1/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18466/shard-glk3/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard-gl=
k1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18466/shard-glk1/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/shard=
-glk5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18466/shard-glk8/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/sh=
ard-glk7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18466/shard-glk8/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466=
/shard-glk1/igt@runner@aborted.html">FAIL</a>) ([i915#1611] / [i915#2263] /=
 [i915#2268] / [i915#2398] / [i915#2439] / [k.org#202321])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing</p>

</body>
</html>

--===============7364076273808617506==--

--===============1587436724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1587436724==--
