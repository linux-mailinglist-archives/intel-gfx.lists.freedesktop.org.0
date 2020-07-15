Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8FE22185B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 01:25:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 996D56EAA8;
	Wed, 15 Jul 2020 23:25:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 99E676E083;
 Wed, 15 Jul 2020 23:25:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72646A66C9;
 Wed, 15 Jul 2020 23:25:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Jul 2020 23:25:08 -0000
Message-ID: <159485550843.3436.10264053069777835708@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200715172935.24586-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200715172935.24586-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Only_transfer_the_virtual_context_to_the_new_engine?=
 =?utf-8?q?_if_active?=
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
Content-Type: multipart/mixed; boundary="===============0614004337=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0614004337==
Content-Type: multipart/alternative;
 boundary="===============8251737176051709724=="

--===============8251737176051709724==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Only transfer the virtual context to the new engine if active
URL   : https://patchwork.freedesktop.org/series/79524/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8751_full -> Patchwork_18182_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18182_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18182_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18182_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb1/igt@gem_exec_whisper@basic-fds-priority-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb7/igt@gem_exec_whisper@basic-fds-priority-all.html

  
Known issues
------------

  Here are the changes found in Patchwork_18182_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-glk6/igt@gem_sync@basic-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-glk9/igt@gem_sync@basic-all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1436] / [i915#1635] / [i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-apl6/igt@gen9_exec_parse@allowed-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-apl8/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#636] / [i915#69])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl7/igt@i915_suspend@forcewake.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl1/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-glk3/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-snb:          [PASS][11] -> [DMESG-WARN][12] ([i915#42])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-snb5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-snb2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1635] / [i915#1982]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-apl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +7 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl9/igt@kms_flip@basic-plain-flip@a-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl5/igt@kms_flip@basic-plain-flip@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-iclb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#173])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb2/igt@kms_psr@no_drrs.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb1/igt@kms_psr@psr2_dpms.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-skl:          [FAIL][29] ([i915#1528]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [DMESG-WARN][31] ([i915#118] / [i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-glk3/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-glk3/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-skl:          [FAIL][33] ([i915#54]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][35] ([i915#300]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][37] ([i915#79]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-panning-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +9 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl10/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl1/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +9 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][45] ([fdo#108145] / [i915#265]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][47] ([fdo#109642] / [fdo#111068]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb4/igt@kms_psr2_su@page_flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_dpms:
    - shard-tglb:         [DMESG-WARN][49] ([i915#402]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-tglb6/igt@kms_psr@psr2_dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-tglb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][53] ([i915#31]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-hsw1/igt@kms_setmode@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-hsw2/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][55] ([i915#31]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl3/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][57] ([i915#69]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][59] ([i915#1542]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb5/igt@perf@blocking-parameterized.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb4/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [DMESG-WARN][61] ([i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb8/igt@perf_pmu@module-unload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb7/igt@perf_pmu@module-unload.html

  * igt@testdisplay:
    - shard-kbl:          [TIMEOUT][63] ([i915#1692] / [i915#1958] / [i915#2119]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl7/igt@testdisplay.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl1/igt@testdisplay.html

  
#### Warnings ####

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [DMESG-WARN][66] ([i915#165])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl6/igt@i915_suspend@debugfs-reader.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl2/igt@i915_suspend@debugfs-reader.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][67] ([i915#1319] / [i915#2119]) -> [TIMEOUT][68] ([i915#1319] / [i915#1958] / [i915#2119])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl4/igt@kms_content_protection@atomic-dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][69] ([i915#1319] / [i915#1958] / [i915#2119]) -> [TIMEOUT][70] ([i915#1319] / [i915#2119])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl7/igt@kms_content_protection@srm.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [INCOMPLETE][71] ([i915#155]) -> [DMESG-WARN][72] ([i915#180])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [DMESG-FAIL][73] ([fdo#108145] / [i915#1635] / [i915#1982]) -> [FAIL][74] ([fdo#108145] / [i915#1635] / [i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@runner@aborted:
    - shard-tglb:         [FAIL][75] ([i915#2110]) -> [FAIL][76] ([i915#1764] / [i915#2110])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-tglb8/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-tglb3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1692]: https://gitlab.freedesktop.org/drm/intel/issues/1692
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8751 -> Patchwork_18182

  CI-20190529: 20190529
  CI_DRM_8751: 5c4e78b5b9bac486fa56fb3305a789e61164a497 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18182: f736e550c1ab66d36e523dd9cf77f87d331e52a5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/index.html

--===============8251737176051709724==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Only transfer the virtual context to the new engine if active</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79524/">https://patchwork.freedesktop.org/series/79524/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8751_full -&gt; Patchwork_18182_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18182_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18182_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18182_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_whisper@basic-fds-priority-all:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb1/igt@gem_exec_whisper@basic-fds-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb7/igt@gem_exec_whisper@basic-fds-priority-all.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18182_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-glk6/igt@gem_sync@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-glk9/igt@gem_sync@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-apl6/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-apl8/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl7/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl1/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/636">i915#636</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/69">i915#69</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-glk3/igt@kms_big_fb@linear-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-snb5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-snb2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/42">i915#42</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-apl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl9/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl5/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb2/igt@kms_psr@no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb1/igt@kms_psr@no_drrs.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/173">i915#173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb1/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1528">i915#1528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-glk3/igt@gem_exec_whisper@basic-contexts-priority-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-glk3/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl10/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl1/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb4/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-tglb6/igt@kms_psr@psr2_dpms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-tglb2/igt@kms_psr@psr2_dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-hsw1/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-hsw2/igt@kms_setmode@basic.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl3/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl1/igt@kms_setmode@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/69">i915#69</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb5/igt@perf@blocking-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb4/igt@perf@blocking-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-iclb8/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-iclb7/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl7/igt@testdisplay.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1692">i915#1692</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl1/igt@testdisplay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl6/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl2/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl4/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl1/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl7/igt@kms_content_protection@srm.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl1/igt@kms_content_protection@srm.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8751/shard-tglb8/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18182/shard-tglb3/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1764">i915#1764</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8751 -&gt; Patchwork_18182</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8751: 5c4e78b5b9bac486fa56fb3305a789e61164a497 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18182: f736e550c1ab66d36e523dd9cf77f87d331e52a5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8251737176051709724==--

--===============0614004337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0614004337==--
