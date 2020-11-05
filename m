Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8992A892E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 22:40:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A05656EDEB;
	Thu,  5 Nov 2020 21:40:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 573B26EDE9;
 Thu,  5 Nov 2020 21:40:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E991A47EA;
 Thu,  5 Nov 2020 21:40:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 05 Nov 2020 21:40:50 -0000
Message-ID: <160461245029.14959.5509643052396660703@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201105154934.16022-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201105154934.16022-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gem=3A_Allow_backends?=
 =?utf-8?q?_to_override_pread_implementation?=
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
Content-Type: multipart/mixed; boundary="===============0908676352=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0908676352==
Content-Type: multipart/alternative;
 boundary="===============7131916873216497537=="

--===============7131916873216497537==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/2] drm/i915/gem: Allow backends to override pread implementation
URL   : https://patchwork.freedesktop.org/series/83541/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9271_full -> Patchwork_18861_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_9271_full and Patchwork_18861_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 199 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18861_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-hsw:          [PASS][1] -> [FAIL][2] ([i915#2389])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw2/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1635] / [i915#1982]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-apl3/igt@gem_exec_reloc@basic-wc-cpu-active.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-apl3/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#54]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#300])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#96]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-toggle:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-glk4/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-glk8/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
    - shard-hsw:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw1/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html

  * igt@kms_flip@basic-plain-flip@a-dp1:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-kbl7/igt@kms_flip@basic-plain-flip@a-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-kbl4/igt@kms_flip@basic-plain-flip@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#2122]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#49])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-glk8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +9 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html

  
#### Possible fixes ####

  * igt@gem_exec_create@madvise:
    - shard-hsw:          [FAIL][31] ([i915#1888]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw2/igt@gem_exec_create@madvise.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw6/igt@gem_exec_create@madvise.html

  * igt@gem_exec_fence@syncobj-unused-fence:
    - shard-skl:          [WARN][33] -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl9/igt@gem_exec_fence@syncobj-unused-fence.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl8/igt@gem_exec_fence@syncobj-unused-fence.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [INCOMPLETE][35] ([i915#82]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-snb2/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][37] ([i915#1436] / [i915#716]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][39] ([i915#2521]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-kbl2/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-kbl3/igt@kms_async_flips@async-flip-with-page-flip-events.html
    - shard-apl:          [FAIL][41] ([i915#1635] / [i915#2521]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-apl3/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-apl4/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-skl:          [FAIL][43] ([i915#54]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +7 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
    - shard-apl:          [DMESG-WARN][47] ([i915#1635] / [i915#1982]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-apl7/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-apl3/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-glk7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-glk2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][55] ([fdo#108145] / [i915#265]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][59] ([i915#31]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw7/igt@kms_setmode@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw8/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-a:
    - shard-hsw:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-kbl:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-kbl2/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-kbl3/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][65] ([i915#198]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-query-idle-hang:
    - shard-hsw:          [INCOMPLETE][67] ([i915#2055]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw1/igt@kms_vblank@pipe-c-query-idle-hang.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw2/igt@kms_vblank@pipe-c-query-idle-hang.html

  * igt@kms_vblank@pipe-c-wait-busy:
    - shard-iclb:         [DMESG-WARN][69] ([i915#1982]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-iclb5/igt@kms_vblank@pipe-c-wait-busy.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-iclb8/igt@kms_vblank@pipe-c-wait-busy.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][71] ([i915#51]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl10/igt@perf@short-reads.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl9/igt@perf@short-reads.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [DMESG-WARN][73] ([i915#1982] / [k.org#205379]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-tglb2/igt@perf_pmu@module-unload.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-tglb1/igt@perf_pmu@module-unload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9271 -> Patchwork_18861

  CI-20190529: 20190529
  CI_DRM_9271: 3e0f3e5a1c3f6fe6e03c1fa210ef262ce03c8148 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5836: 4c2ec0ad123b82f42f9fe2297e1a41fec73c9229 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18861: 5499c92b4eeeca8dbed5eb84ba33e78bb269dca0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/index.html

--===============7131916873216497537==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/2] drm/i915/gem: Allow backends to override pread implementation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83541/">https://patchwork.freedesktop.org/series/83541/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9271_full -&gt; Patchwork_18861_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9271_full and Patchwork_18861_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 199 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18861_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw2/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-active:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-apl3/igt@gem_exec_reloc@basic-wc-cpu-active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-apl3/igt@gem_exec_reloc@basic-wc-cpu-active.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/96">i915#96</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-toggle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-glk4/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-glk8/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw1/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-kbl7/igt@kms_flip@basic-plain-flip@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-kbl4/igt@kms_flip@basic-plain-flip@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-glk8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_create@madvise:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw2/igt@gem_exec_create@madvise.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw6/igt@gem_exec_create@madvise.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-unused-fence:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl9/igt@gem_exec_fence@syncobj-unused-fence.html">WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl8/igt@gem_exec_fence@syncobj-unused-fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-snb2/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl8/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-kbl2/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-kbl3/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-apl3/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-apl4/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-apl7/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-apl3/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-glk7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-glk2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw7/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw8/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-a:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-kbl2/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-kbl3/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-query-idle-hang:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-hsw1/igt@kms_vblank@pipe-c-query-idle-hang.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-hsw2/igt@kms_vblank@pipe-c-query-idle-hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-busy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-iclb5/igt@kms_vblank@pipe-c-wait-busy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-iclb8/igt@kms_vblank@pipe-c-wait-busy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-skl10/igt@perf@short-reads.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/51">i915#51</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-skl9/igt@perf@short-reads.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/shard-tglb2/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/shard-tglb1/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9271 -&gt; Patchwork_18861</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9271: 3e0f3e5a1c3f6fe6e03c1fa210ef262ce03c8148 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5836: 4c2ec0ad123b82f42f9fe2297e1a41fec73c9229 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18861: 5499c92b4eeeca8dbed5eb84ba33e78bb269dca0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7131916873216497537==--

--===============0908676352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0908676352==--
