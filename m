Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C874E2FADE9
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 01:06:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A37F56E5C0;
	Tue, 19 Jan 2021 00:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 690E16E5B9;
 Tue, 19 Jan 2021 00:06:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 60C6BA47EB;
 Tue, 19 Jan 2021 00:06:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Tue, 19 Jan 2021 00:06:15 -0000
Message-ID: <161101477535.4868.2542772938630578125@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210118131420.15874-1-tzimmermann@suse.de>
In-Reply-To: <20210118131420.15874-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Move_struct_drm=5Fdevice=2Epdev_to_legacy_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============0664503623=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0664503623==
Content-Type: multipart/alternative;
 boundary="===============4596168171306108269=="

--===============4596168171306108269==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Move struct drm_device.pdev to legacy (rev4)
URL   : https://patchwork.freedesktop.org/series/84205/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9636_full -> Patchwork_19395_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19395_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19395_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19395_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic@plane-immutable-zpos:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb4/igt@kms_atomic@plane-immutable-zpos.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-iclb6/igt@kms_atomic@plane-immutable-zpos.html

  
Known issues
------------

  Here are the changes found in Patchwork_19395_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@render-ccs:
    - shard-glk:          [PASS][3] -> [INCOMPLETE][4] ([i915#2405] / [i915#2499])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk6/igt@api_intel_bb@render-ccs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-glk4/igt@api_intel_bb@render-ccs.html

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-hsw:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-hsw5/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][10] ([i915#2389])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-iclb1/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk2/igt@gem_exec_whisper@basic-normal.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-glk1/igt@gem_exec_whisper@basic-normal.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-hsw:          NOTRUN -> [SKIP][13] ([fdo#109271]) +110 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-hsw5/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [PASS][14] -> [INCOMPLETE][15] ([i915#146] / [i915#198] / [i915#2295])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl1/igt@gem_workarounds@suspend-resume-context.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_selftest@live@gt_pm:
    - shard-glk:          [PASS][16] -> [DMESG-FAIL][17] ([i915#1886] / [i915#2291])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk5/igt@i915_selftest@live@gt_pm.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-glk6/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][18] -> [INCOMPLETE][19] ([i915#198])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl10/igt@i915_suspend@debugfs-reader.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl2/igt@i915_suspend@debugfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#2521])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-hsw:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-hsw7/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#54]) +8 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
    - shard-iclb:         [PASS][26] -> [DMESG-FAIL][27] ([i915#1226])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-iclb6/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#2122]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-dp1:
    - shard-kbl:          [PASS][30] -> [FAIL][31] ([i915#2122])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate@c-dp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271]) +21 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][35] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-iclb5/igt@kms_psr@psr2_suspend.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#1542])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl8/igt@perf@blocking.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl9/igt@perf@blocking.html

  
#### Possible fixes ####

  * igt@gem_exec_capture@pi@vecs0:
    - shard-skl:          [INCOMPLETE][40] ([i915#198] / [i915#2624]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl2/igt@gem_exec_capture@pi@vecs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl1/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][42] ([i915#2842]) -> [PASS][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html

  * {igt@gem_exec_fair@basic-none@vecs0}:
    - shard-kbl:          [FAIL][44] ([i915#2842]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html
    - shard-apl:          [FAIL][46] ([i915#2842]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html

  * {igt@gem_exec_fair@basic-pace-share@rcs0}:
    - shard-glk:          [FAIL][48] ([i915#2842]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * {igt@gem_exec_schedule@u-fairslice@rcs0}:
    - shard-skl:          [DMESG-WARN][50] ([i915#1610] / [i915#2803]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl10/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl4/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-hsw:          [INCOMPLETE][52] -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [FAIL][56] ([i915#54]) -> [PASS][57] +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
    - shard-glk:          [DMESG-WARN][58] ([i915#118] / [i915#95]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk6/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-glk4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html

  * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
    - shard-apl:          [FAIL][60] ([i915#79]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][62] ([i915#1188]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl7/igt@kms_hdr@bpc-switch.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][64] ([fdo#108145] / [i915#265]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][66] ([fdo#109441]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][68] ([i915#51]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl2/igt@perf@short-reads.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl4/igt@perf@short-reads.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-iclb:         [FAIL][70] -> [FAIL][71] ([i915#2389]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb6/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-iclb1/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][72], [FAIL][73], [FAIL][74]) ([i915#2029] / [i915#2295] / [i915#2426]) -> ([FAIL][75], [FAIL][76]) ([i915#2029] / [i915#2295])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl5/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl10/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl3/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl3/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl3/igt@runner@aborted.html

  

### Piglit changes ###

#### Issues hit ####

  * spec@ext_framebuffer_multisample_blit_scaled@blit-scaled samples=2:
    - pig-glk-j5005:      NOTRUN -> [WARN][77] ([mesa#1797]) +1 similar issue
   [77]: None

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2499]: https://gitlab.freedesktop.org/drm/intel/issues/2499
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2624]: https://gitlab.freedesktop.org/drm/intel/issues/2624
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [mesa#1797]: https://gitlab.freedesktop.org/mesa/mesa/issues/1797


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9636 -> Patchwork_19395

  CI-20190529: 20190529
  CI_DRM_9636: f560ac388c527f2f166897c9091f7b9ad652050f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5960: ace82fcd5f3623f8dde7c220a825873dc53dfae4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19395: e41c3e17039b0daa9f8f657a3a29bb62bcd6822d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/index.html

--===============4596168171306108269==
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
<tr><td><b>Series:</b></td><td>drm: Move struct drm_device.pdev to legacy (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84205/">https://patchwork.freedesktop.org/series/84205/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9636_full -&gt; Patchwork_19395_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19395_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19395_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19395_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_atomic@plane-immutable-zpos:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb4/igt@kms_atomic@plane-immutable-zpos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-iclb6/igt@kms_atomic@plane-immutable-zpos.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19395_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk6/igt@api_intel_bb@render-ccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-glk4/igt@api_intel_bb@render-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2499">i915#2499</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-hsw5/igt@gem_ctx_persistence@engines-mixed.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-iclb1/igt@gem_exec_reloc@basic-many-active@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk2/igt@gem_exec_whisper@basic-normal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-glk1/igt@gem_exec_whisper@basic-normal.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-hsw5/igt@gem_render_copy@y-tiled-to-vebox-linear.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +110 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl1/igt@gem_workarounds@suspend-resume-context.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl2/igt@gem_workarounds@suspend-resume-context.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk5/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-glk6/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl10/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl2/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-hsw7/igt@kms_color_chamelium@pipe-d-ctm-max.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-iclb6/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-iclb5/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl8/igt@perf@blocking.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl9/igt@perf@blocking.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl2/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2624">i915#2624</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl1/igt@gem_exec_capture@pi@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none@vecs0}:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace-share@rcs0}:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@rcs0}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl10/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2803</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl4/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk6/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-glk4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl7/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl8/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl2/igt@perf@short-reads.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/51">i915#51</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl4/igt@perf@short-reads.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb6/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-iclb1/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19395/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Issues hit</h4>
<ul>
<li>spec@ext_framebuffer_multisample_blit_scaled@blit-scaled samples=2:<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href="None">WARN</a> (<a href="https://gitlab.freedesktop.org/mesa/mesa/issues/1797">mesa#1797</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9636 -&gt; Patchwork_19395</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9636: f560ac388c527f2f166897c9091f7b9ad652050f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5960: ace82fcd5f3623f8dde7c220a825873dc53dfae4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19395: e41c3e17039b0daa9f8f657a3a29bb62bcd6822d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4596168171306108269==--

--===============0664503623==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0664503623==--
