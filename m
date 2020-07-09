Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2B221A737
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 20:45:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30B816EAD2;
	Thu,  9 Jul 2020 18:45:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 50DB56EAD2;
 Thu,  9 Jul 2020 18:45:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 496D6A66C9;
 Thu,  9 Jul 2020 18:45:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 09 Jul 2020 18:45:30 -0000
Message-ID: <159432033026.31094.6165207079404422619@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200527130310.27099-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200527130310.27099-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/edid=3A_Allow_looking_for_ext_b?=
 =?utf-8?q?locks_starting_from_a_specified_index_=28rev2=29?=
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

Series: series starting with [1/3] drm/edid: Allow looking for ext blocks starting from a specified index (rev2)
URL   : https://patchwork.freedesktop.org/series/77699/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8708_full -> Patchwork_18081_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18081_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_read@short-buffer-block:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2] ([i915#1982]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@drm_read@short-buffer-block.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl10/igt@drm_read@short-buffer-block.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-skl:          [PASS][3] -> ([PASS][4], [FAIL][5]) ([i915#1528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][6] -> ([FAIL][7], [FAIL][8]) ([i915#1930])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][9] -> ([DMESG-WARN][10], [DMESG-WARN][11]) ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk1/igt@gem_exec_whisper@basic-contexts-forked.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-glk:          [PASS][12] -> ([INCOMPLETE][13], [PASS][14]) ([i915#58] / [k.org#198133])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-glk:          [PASS][15] -> ([DMESG-WARN][16], [PASS][17]) ([i915#118] / [i915#95]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk7/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk9/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk4/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_unfence_active_buffers:
    - shard-kbl:          [PASS][18] -> ([DMESG-WARN][19], [DMESG-WARN][20]) ([i915#93] / [i915#95]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_unfence_active_buffers.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl6/igt@gem_unfence_active_buffers.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl7/igt@gem_unfence_active_buffers.html

  * igt@kms_color@pipe-a-gamma:
    - shard-skl:          [PASS][21] -> ([PASS][22], [FAIL][23]) ([i915#71])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@kms_color@pipe-a-gamma.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl10/igt@kms_color@pipe-a-gamma.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl8/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][24] -> ([DMESG-WARN][25], [PASS][26]) ([i915#180]) +6 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-snb:          [PASS][27] -> ([PASS][28], [DMESG-WARN][29]) ([i915#42])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-snb2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-snb5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [PASS][30] -> ([PASS][31], [FAIL][32]) ([IGT#5])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-iclb:         [PASS][33] -> ([FAIL][34], [PASS][35]) ([i915#926])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb8/igt@kms_fbcon_fbt@fbc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-iclb2/igt@kms_fbcon_fbt@fbc.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-iclb8/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][36] -> ([PASS][37], [FAIL][38]) ([i915#79])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][39] -> ([PASS][40], [INCOMPLETE][41]) ([i915#198])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl8/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl10/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-apl:          [PASS][42] -> [DMESG-WARN][43] ([i915#1635] / [i915#95]) +4 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-iclb:         [PASS][44] -> ([PASS][45], [DMESG-WARN][46]) ([i915#1982]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-kbl:          [PASS][47] -> ([DMESG-WARN][48], [PASS][49]) ([i915#165] / [i915#78])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl6/igt@kms_hdr@bpc-switch-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl2/igt@kms_hdr@bpc-switch-dpms.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_lease@lease-uevent:
    - shard-apl:          [PASS][50] -> ([PASS][51], [DMESG-WARN][52]) ([i915#1635] / [i915#95]) +13 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl3/igt@kms_lease@lease-uevent.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl3/igt@kms_lease@lease-uevent.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl6/igt@kms_lease@lease-uevent.html

  * igt@kms_plane@plane-panning-top-left-pipe-c-planes:
    - shard-skl:          [PASS][53] -> ([DMESG-WARN][54], [PASS][55]) ([i915#1982]) +12 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl3/igt@kms_plane@plane-panning-top-left-pipe-c-planes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl5/igt@kms_plane@plane-panning-top-left-pipe-c-planes.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl6/igt@kms_plane@plane-panning-top-left-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][56] -> ([PASS][57], [FAIL][58]) ([fdo#108145] / [i915#265]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][59] -> ([PASS][60], [INCOMPLETE][61]) ([i915#69])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][62] -> ([PASS][63], [FAIL][64]) ([i915#1542])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@perf@blocking-parameterized.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-iclb3/igt@perf@blocking-parameterized.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-iclb8/igt@perf@blocking-parameterized.html

  * igt@template@b:
    - shard-snb:          [PASS][65] -> ([TIMEOUT][66], [PASS][67]) ([i915#1958] / [i915#2119]) +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@template@b.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-snb4/igt@template@b.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-snb5/igt@template@b.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [DMESG-WARN][68] ([i915#180]) -> ([PASS][69], [PASS][70]) +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [FAIL][71] ([i915#1528]) -> ([PASS][72], [PASS][73])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_fence@parallel@vcs0:
    - shard-glk:          [DMESG-WARN][74] ([i915#118] / [i915#95]) -> ([PASS][75], [PASS][76])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk4/igt@gem_exec_fence@parallel@vcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk5/igt@gem_exec_fence@parallel@vcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk6/igt@gem_exec_fence@parallel@vcs0.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-apl:          [DMESG-WARN][77] ([i915#1635] / [i915#95]) -> ([PASS][78], [PASS][79]) +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl6/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl4/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl2/igt@gem_userptr_blits@unsync-unmap-after-close.html
    - shard-kbl:          [DMESG-WARN][80] ([i915#93] / [i915#95]) -> ([PASS][81], [PASS][82])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl6/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl7/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][83] ([i915#402]) -> ([PASS][84], [PASS][85])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb1/igt@i915_module_load@reload.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-tglb7/igt@i915_module_load@reload.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-tglb5/igt@i915_module_load@reload.html

  * igt@kms_addfb_basic@bad-pitch-32:
    - shard-apl:          [DMESG-WARN][86] ([i915#1635] / [i915#95]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl6/igt@kms_addfb_basic@bad-pitch-32.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl8/igt@kms_addfb_basic@bad-pitch-32.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][88] ([i915#118] / [i915#95]) -> ([PASS][89], [PASS][90])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][91] ([i915#1982]) -> ([PASS][92], [PASS][93]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_color@pipe-b-ctm-0-25.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl2/igt@kms_color@pipe-b-ctm-0-25.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl8/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement:
    - shard-tglb:         [INCOMPLETE][94] ([i915#750]) -> ([PASS][95], [PASS][96])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][97] ([i915#54]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:
    - shard-glk:          [DMESG-WARN][99] ([i915#1982]) -> ([PASS][100], [PASS][101])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-iclb:         [INCOMPLETE][102] ([i915#1185]) -> ([PASS][103], [PASS][104])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@kms_fbcon_fbt@psr-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-iclb4/igt@kms_fbcon_fbt@psr-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-iclb7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-apl:          [FAIL][105] ([i915#79]) -> ([PASS][106], [PASS][107])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][108] ([i915#46]) -> ([PASS][109], [PASS][110])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-tglb:         [INCOMPLETE][111] ([i915#456]) -> ([PASS][112], [PASS][113])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-tglb3/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-tglb6/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [DMESG-WARN][114] ([i915#1982]) -> ([PASS][115], [PASS][116])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][117] ([i915#1188]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_hdr@bpc-switch.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [SKIP][119] ([fdo#109441]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb7/igt@kms_psr@psr2_primary_render.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-iclb2/igt@kms_psr@psr2_primary_render.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][121] ([i915#1930]) -> ([TIMEOUT][122], [FAIL][123]) ([i915#1930] / [i915#1958] / [i915#2119])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-glk:          [DMESG-WARN][124] ([i915#118] / [i915#95]) -> ([DMESG-WARN][125], [PASS][126]) ([i915#118] / [i915#95])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk3/igt@gem_exec_whisper@basic-contexts-priority.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk4/igt@gem_exec_whisper@basic-contexts-priority.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk7/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][127] ([i915#588]) -> ([SKIP][128], [SKIP][129]) ([i915#658])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_selftest@mock@requests:
    - shard-tglb:         [INCOMPLETE][130] ([i915#2110]) -> ([PASS][131], [INCOMPLETE][132]) ([i915#2110])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb6/igt@i915_selftest@mock@requests.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-tglb6/igt@i915_selftest@mock@requests.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-tglb3/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][133] ([i915#118] / [i915#95]) -> ([PASS][134], [DMESG-FAIL][135]) ([i915#118] / [i915#95])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-apl:          [SKIP][136] ([fdo#109271] / [fdo#111827]) -> ([SKIP][137], [SKIP][138]) ([fdo#109271] / [fdo#111827] / [i915#1635]) +3 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl1/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl2/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [DMESG-FAIL][139] ([fdo#110321] / [i915#95]) -> ([DMESG-FAIL][140], [TIMEOUT][141]) ([fdo#110321] / [i915#1319] / [i915#1958] / [i915#2119] / [i915#95])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@kms_content_protection@atomic.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl2/igt@kms_content_protection@atomic.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl4/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-apl:          [SKIP][142] ([fdo#109271]) -> [SKIP][143] ([fdo#109271] / [i915#1635]) +3 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - shard-apl:          [DMESG-WARN][144] ([i915#1635] / [i915#95]) -> ([PASS][145], [DMESG-WARN][146]) ([i915#1635] / [i915#95]) +13 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][147] ([i915#180]) -> ([DMESG-WARN][148], [PASS][149]) ([i915#180]) +4 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
    - shard-apl:          [SKIP][150] ([fdo#109271] / [i915#1635]) -> ([SKIP][151], [SKIP][152]) ([fdo#109271])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-tglb:         [DMESG-WARN][153] ([i915#1982]) -> ([PASS][154], [DMESG-WARN][155]) ([i915#1982])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-apl:          [SKIP][156] ([fdo#109271]) -> ([SKIP][157], [SKIP][158]) ([fdo#109271] / [i915#1635]) +4 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-apl:          [SKIP][159] ([fdo#109271] / [i915#1635]) -> [SKIP][160] ([fdo#109271])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-apl8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-snb:          [SKIP][161] ([fdo#109271]) -> ([SKIP][162], [TIMEOUT][163]) ([fdo#109271] / [i915#1958] / [i915#2119]) +1 similar issue
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-snb4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][164] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][165] ([i915#1982])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][166] ([fdo#109441]) -> ([PASS][167], [SKIP][168]) ([fdo#109441]) +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
   [167]: https://int

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18081/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
