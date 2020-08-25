Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2538C251F4A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 20:51:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E5646E976;
	Tue, 25 Aug 2020 18:50:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 023A46E974;
 Tue, 25 Aug 2020 18:50:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF6E7AA3D7;
 Tue, 25 Aug 2020 18:50:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 25 Aug 2020 18:50:55 -0000
Message-ID: <159838145594.23679.16093481191917344710@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200825171331.17971-1-jose.souza@intel.com>
In-Reply-To: <20200825171331.17971-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/3=5D_drm/i915/display=3A_Compute_ha?=
 =?utf-8?q?s=5Fdrrs_after_compute_has=5Fpsr?=
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
Content-Type: multipart/mixed; boundary="===============1467118411=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1467118411==
Content-Type: multipart/alternative;
 boundary="===============7048601493011736892=="

--===============7048601493011736892==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v3,1/3] drm/i915/display: Compute has_drrs after compute has_psr
URL   : https://patchwork.freedesktop.org/series/80989/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8924_full -> Patchwork_18398_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18398_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18398_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18398_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-tglb5/igt@gem_sync@basic-store-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-tglb7/igt@gem_sync@basic-store-all.html

  
Known issues
------------

  Here are the changes found in Patchwork_18398_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-apl:          [PASS][3] -> [TIMEOUT][4] ([i915#1635] / [i915#1958]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-apl8/igt@gem_exec_reloc@basic-concurrent0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-kbl:          [PASS][5] -> [TIMEOUT][6] ([i915#1958]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl4/igt@gem_exec_whisper@basic-fds-forked-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl2/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [PASS][7] -> [TIMEOUT][8] ([i915#1958]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-glk7/igt@gem_exec_whisper@basic-queues-priority-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-glk6/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#198])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl5/igt@i915_pm_dc@dc5-psr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl7/igt@i915_pm_dc@dc5-psr.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][11] -> [DMESG-FAIL][12] ([i915#118] / [i915#95]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1635] / [i915#1982]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-apl3/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-apl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#96])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#2346])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#1635] / [i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [PASS][23] -> [INCOMPLETE][24] ([i915#2055])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-hsw1/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#49])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +7 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1982]) +7 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-iclb8/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#1542])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-iclb2/igt@perf@blocking-parameterized.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-iclb8/igt@perf@blocking-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@all:
    - shard-apl:          [TIMEOUT][39] ([i915#1635] / [i915#1958]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-apl7/igt@gem_exec_gttfill@all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-apl8/igt@gem_exec_gttfill@all.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [TIMEOUT][41] ([i915#1958]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-tglb1/igt@gem_exec_nop@basic-sequential.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-tglb8/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@engines@basic:
    - shard-kbl:          [INCOMPLETE][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl1/igt@gem_exec_parallel@engines@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl1/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-skl:          [TIMEOUT][45] ([i915#1958]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl7/igt@gem_exec_reloc@basic-concurrent0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl5/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [TIMEOUT][47] ([i915#1958]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-glk9/igt@gem_exec_whisper@basic-contexts.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-glk4/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-iclb:         [TIMEOUT][49] ([i915#1958]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-iclb3/igt@gem_exec_whisper@basic-forked.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-iclb8/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-kbl:          [TIMEOUT][51] ([i915#1958]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl2/igt@gem_exec_whisper@basic-normal.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl2/igt@gem_exec_whisper@basic-normal.html

  * igt@gem_sync@basic-store-all:
    - shard-apl:          [FAIL][53] ([i915#1635]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-apl4/igt@gem_sync@basic-store-all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-apl3/igt@gem_sync@basic-store-all.html
    - shard-kbl:          [FAIL][55] -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl2/igt@gem_sync@basic-store-all.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl1/igt@gem_sync@basic-store-all.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][57] ([i915#198] / [i915#2278]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl2/igt@i915_selftest@mock@requests.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl10/igt@i915_selftest@mock@requests.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - shard-skl:          [DMESG-FAIL][59] ([i915#1982] / [i915#54]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_flip@2x-wf_vblank-ts-check@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-hsw1/igt@kms_flip@2x-wf_vblank-ts-check@ab-vga1-hdmi-a1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-hsw8/igt@kms_flip@2x-wf_vblank-ts-check@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +6 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][65] ([i915#2122]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-kbl:          [DMESG-WARN][67] ([i915#1982]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [DMESG-WARN][69] ([i915#1982]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][71] ([i915#1188]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][73] ([i915#1982]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-iclb7/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-skl:          [DMESG-WARN][77] ([i915#1982]) -> [PASS][78] +10 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl2/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl3/igt@perf@gen8-unprivileged-single-ctx-counters.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [FAIL][79] ([i915#1635]) -> [FAIL][80] ([i915#1635] / [i915#2389])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-apl8/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-snb:          [SKIP][81] ([fdo#109271]) -> [INCOMPLETE][82] ([i915#82])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-snb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-snb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][83] ([i915#1319]) -> [TIMEOUT][84] ([i915#1319] / [i915#1958])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl1/igt@kms_content_protection@atomic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl4/igt@kms_content_protection@atomic.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][85] ([i915#1911]) -> [SKIP][86] ([fdo#109642] / [fdo#111068])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-iclb8/igt@kms_psr2_su@page_flip.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][87] ([i915#1542]) -> [DMESG-FAIL][88] ([i915#1982])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl2/igt@perf@polling-parameterized.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl10/igt@perf@polling-parameterized.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][89], [FAIL][90]) ([i915#1436] / [i915#2029]) -> [FAIL][91] ([i915#1436])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl2/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl3/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl10/igt@runner@aborted.html

  
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
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8924 -> Patchwork_18398

  CI-20190529: 20190529
  CI_DRM_8924: a8c0611e412aab46eab5475b0117d074892b96e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5770: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18398: 7d42e19c12ea5344d13aa31756cf847649e9985b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/index.html

--===============7048601493011736892==
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
<tr><td><b>Series:</b></td><td>series starting with [v3,1/3] drm/i915/display: Compute has_drrs after compute has_psr</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80989/">https://patchwork.freedesktop.org/series/80989/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8924_full -&gt; Patchwork_18398_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18398_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18398_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18398_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_sync@basic-store-all:<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-tglb5/igt@gem_sync@basic-store-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-tglb7/igt@gem_sync@basic-store-all.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18398_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-apl8/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl4/igt@gem_exec_whisper@basic-fds-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl2/igt@gem_exec_whisper@basic-fds-forked-all.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-glk7/igt@gem_exec_whisper@basic-queues-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-glk6/igt@gem_exec_whisper@basic-queues-priority-all.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl5/igt@i915_pm_dc@dc5-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl7/igt@i915_pm_dc@dc5-psr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-apl3/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-apl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/96">i915#96</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-hsw1/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-iclb8/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-iclb2/igt@perf@blocking-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-iclb8/igt@perf@blocking-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-apl7/igt@gem_exec_gttfill@all.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-apl8/igt@gem_exec_gttfill@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-sequential:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-tglb1/igt@gem_exec_nop@basic-sequential.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-tglb8/igt@gem_exec_nop@basic-sequential.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl1/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl1/igt@gem_exec_parallel@engines@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl7/igt@gem_exec_reloc@basic-concurrent0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl5/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-glk9/igt@gem_exec_whisper@basic-contexts.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-glk4/igt@gem_exec_whisper@basic-contexts.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-iclb3/igt@gem_exec_whisper@basic-forked.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-iclb8/igt@gem_exec_whisper@basic-forked.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl2/igt@gem_exec_whisper@basic-normal.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl2/igt@gem_exec_whisper@basic-normal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-apl4/igt@gem_sync@basic-store-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-apl3/igt@gem_sync@basic-store-all.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl2/igt@gem_sync@basic-store-all.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl1/igt@gem_sync@basic-store-all.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl2/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl10/igt@i915_selftest@mock@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-hsw1/igt@kms_flip@2x-wf_vblank-ts-check@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-hsw8/igt@kms_flip@2x-wf_vblank-ts-check@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-iclb7/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl2/igt@perf@gen8-unprivileged-single-ctx-counters.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl3/igt@perf@gen8-unprivileged-single-ctx-counters.html">PASS</a> +10 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-apl8/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-snb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-snb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-kbl1/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-kbl4/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-iclb2/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1911">i915#1911</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-iclb8/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl2/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl10/igt@perf@polling-parameterized.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/shard-skl10/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8924 -&gt; Patchwork_18398</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8924: a8c0611e412aab46eab5475b0117d074892b96e2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5770: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18398: 7d42e19c12ea5344d13aa31756cf847649e9985b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7048601493011736892==--

--===============1467118411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1467118411==--
