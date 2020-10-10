Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C8D289EE2
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Oct 2020 09:17:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E70C16EE8E;
	Sat, 10 Oct 2020 07:17:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4B2436EE74;
 Sat, 10 Oct 2020 07:17:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 416F6A008A;
 Sat, 10 Oct 2020 07:17:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "tip-bot2 for Thomas Gleixner" <tip-bot2@linutronix.de>
Date: Sat, 10 Oct 2020 07:17:54 -0000
Message-ID: <160231427423.25004.14267459398254080512@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <160226288395.7002.10138923121624324637.tip-bot2@tip-bot2>
In-Reply-To: <160226288395.7002.10138923121624324637.tip-bot2@tip-bot2>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Cleanup_PREEMPT=5FCOUNT_leftovers?=
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
Content-Type: multipart/mixed; boundary="===============0579490886=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0579490886==
Content-Type: multipart/alternative;
 boundary="===============8612026753252038721=="

--===============8612026753252038721==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Cleanup PREEMPT_COUNT leftovers
URL   : https://patchwork.freedesktop.org/series/82529/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9123_full -> Patchwork_18670_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18670_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-tglb:         ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [FAIL][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#2448]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb8/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [PASS][51] -> [TIMEOUT][52] ([i915#2424])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-skl8/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl5/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#54])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:
    - shard-skl:          [PASS][55] -> [DMESG-WARN][56] ([i915#1982]) +9 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-skl1/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl9/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html

  * igt@kms_flip@2x-flip-vs-dpms@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][57] -> [DMESG-WARN][58] ([i915#1982])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-glk6/igt@kms_flip@2x-flip-vs-dpms@ab-hdmi-a1-hdmi-a2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-glk7/igt@kms_flip@2x-flip-vs-dpms@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#2122])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][61] -> [DMESG-WARN][62] ([i915#1982]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][63] -> [FAIL][64] ([i915#1188])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][65] -> [DMESG-WARN][66] ([i915#180])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([fdo#108145] / [i915#265])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#109441]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][71] -> [FAIL][72] ([i915#31])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-glk5/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-glk5/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * {igt@gem_exec_capture@pi@vecs0}:
    - shard-skl:          [INCOMPLETE][73] -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-skl3/igt@gem_exec_capture@pi@vecs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl6/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-snb:          [INCOMPLETE][75] ([i915#82]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-snb5/igt@gem_partial_pwrite_pread@reads-uncached.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-snb4/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-skl:          [TIMEOUT][77] ([i915#2424]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-skl10/igt@gem_userptr_blits@sync-unmap-cycles.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl3/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-glk:          [INCOMPLETE][79] -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-glk3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-glk9/igt@i915_suspend@fence-restore-tiled2untiled.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-glk:          [FAIL][81] ([i915#2521]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-glk5/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-glk5/igt@kms_async_flips@async-flip-with-page-flip-events.html
    - shard-apl:          [FAIL][83] ([i915#1635] / [i915#2521]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-apl6/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-apl1/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][85] ([i915#2346]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +6 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-kbl1/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-kbl2/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-glk:          [DMESG-WARN][89] ([i915#1982]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-glk5/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-glk8/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-iclb:         [INCOMPLETE][91] ([i915#1185] / [i915#123]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [DMESG-WARN][93] ([i915#1982]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-skl:          [FAIL][95] ([i915#49]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][97] ([i915#1188]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-skl:          [DMESG-WARN][99] ([i915#1982]) -> [PASS][100] +9 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-skl6/igt@kms_panel_fitting@atomic-fastset.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl2/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][101] ([fdo#108145] / [i915#265]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][103] ([fdo#109642] / [fdo#111068]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-iclb3/igt@kms_psr2_su@frontbuffer.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-c-wait-idle:
    - shard-kbl:          [DMESG-WARN][107] ([i915#1982]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-kbl2/igt@kms_vblank@pipe-c-wait-idle.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-kbl7/igt@kms_vblank@pipe-c-wait-idle.html

  * igt@perf_pmu@busy-idle-check-all@vecs0:
    - shard-iclb:         [DMESG-WARN][109] ([i915#1982]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-iclb2/igt@perf_pmu@busy-idle-check-all@vecs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-iclb4/igt@perf_pmu@busy-idle-check-all@vecs0.html

  
#### Warnings ####

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [FAIL][111] ([fdo#108145] / [i915#1635] / [i915#265]) -> [DMESG-FAIL][112] ([fdo#108145] / [i915#1635] / [i915#1982])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2448]: https://gitlab.freedesktop.org/drm/intel/issues/2448
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2553]: https://gitlab.freedesktop.org/drm/intel/issues/2553
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9123 -> Patchwork_18670

  CI-20190529: 20190529
  CI_DRM_9123: ceff802db76def8e8689580b74df01db3722d8f9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5807: 48005bda72a06669a73d26a7f6a3cdef4ac22689 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18670: b575fedaccebbcbe5e1ea9380aec8d96ff8ca3c3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/index.html

--===============8612026753252038721==
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
<tr><td><b>Series:</b></td><td>drm/i915: Cleanup PREEMPT_COUNT leftovers</t=
d></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/82529/">https://patchwork.freedesktop.org/series/82529/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18670/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18670/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9123_full -&gt; Patchwork_18670_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18670_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_9123/shard-tglb8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
9123/shard-tglb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_9123/shard-tglb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shar=
d-tglb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_9123/shard-tglb6/boot.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_9123/shard-tglb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_9123/shard-tglb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/=
shard-tglb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_9123/shard-tglb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tgl=
b3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-tglb3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9=
123/shard-tglb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_9123/shard-tglb1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard-tglb1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9123/shard=
-tglb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_9123/shard-tglb1/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2448">i915#2448</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb8/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18670/shard-tglb8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18670/shard-tglb8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb8/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18670/shard-tglb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_18670/shard-tglb7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb7=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18670/shard-tglb7/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb6/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tg=
lb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18670/shard-tglb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard=
-tglb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_18670/shard-tglb5/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/sh=
ard-tglb3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_18670/shard-tglb3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb3/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670=
/shard-tglb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18670/shard-tglb2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
670/shard-tglb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18670/shard-tglb1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-tglb1/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18670/shard-tglb1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-skl8/igt@gem_userptr_blits@unsync-unmap-cycles.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8670/shard-skl5/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#242=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18670/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i91=
5#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-skl1/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18670/shard-skl9/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1982">i915#1982</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-glk6/igt@kms_flip@2x-flip-vs-dpms@ab-hdmi-a1-hdmi-a2.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18670/shard-glk7/igt@kms_flip@2x-flip-vs-dpms@ab-hdmi-a1-hdmi-a2.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18670/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pr=
i-indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_18670/shard-tglb7/igt@kms_frontbuffer_tracking=
@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html">DMESG-WARN</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-skl=
8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-=
kbl7/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18670/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/sha=
rd-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-glk5/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/shard-glk5/igt=
@kms_setmode@basic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@gem_exec_capture@pi@vecs0}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-skl3/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670/s=
hard-skl6/igt@gem_exec_capture@pi@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-snb5/igt@gem_partial_pwrite_pread@reads-uncached.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
2">i915#82</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18670/shard-snb4/igt@gem_partial_pwrite_pread@reads-uncached.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-skl10/igt@gem_userptr_blits@sync-unmap-cycles.html">TIME=
OUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2424">i=
915#2424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18670/shard-skl3/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-glk3/igt@i915_suspend@fence-restore-tiled2untiled.html">=
INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18670/shard-glk9/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9123/shard-glk5/igt@kms_async_flips@async-flip-with-page-flip-events=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_18670/shard-glk5/igt@kms_async_flips@async-flip-with-page-fl=
ip-events.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9123/shard-apl6/igt@kms_async_flips@async-flip-with-page-flip-events=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18670/shard-apl1/igt@kms_async_flips@async-flip-with-p=
age-flip-events.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18670/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-a=
tomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-kbl1/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#=
180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18670/shard-kbl2/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> +6 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-glk5/igt@kms_frontbuffer_tracking@fbc-stridechange.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_18670/shard-glk8/igt@kms_frontbuffer_tracking@fbc-stridechan=
ge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1185">i915#1185</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/123">i915#123</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_18670/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-sus=
pend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb=
-msflip-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_18670/shard-tglb6/igt@kms_frontbuffer_track=
ing@psr-1p-primscrn-indfb-msflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-in=
dfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18670/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p=
-primscrn-spr-indfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18670=
/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-skl6/igt@kms_panel_fitting@atomic-fastset.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i9=
15#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18670/shard-skl2/igt@kms_panel_fitting@atomic-fastset.html">PASS</a> =
+9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18670/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-cons=
tant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-iclb3/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> =
/ <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111=
068</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18670/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18670/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-idle:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-kbl2/igt@kms_vblank@pipe-c-wait-idle.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#19=
82</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18670/shard-kbl7/igt@kms_vblank@pipe-c-wait-idle.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-check-all@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-iclb2/igt@perf_pmu@busy-idle-check-all@vecs0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982"=
>i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18670/shard-iclb4/igt@perf_pmu@busy-idle-check-all@vecs0.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9123/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18670/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-=
7efc.html">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9123 -&gt; Patchwork_18670</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9123: ceff802db76def8e8689580b74df01db3722d8f9 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5807: 48005bda72a06669a73d26a7f6a3cdef4ac22689 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18670: b575fedaccebbcbe5e1ea9380aec8d96ff8ca3c3 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8612026753252038721==--

--===============0579490886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0579490886==--
