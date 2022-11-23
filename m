Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C92E7635F9F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 14:30:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D1D10E559;
	Wed, 23 Nov 2022 13:30:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EBCC10E1F5;
 Wed, 23 Nov 2022 13:30:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16D11AADE1;
 Wed, 23 Nov 2022 13:30:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6059044873987538274=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Date: Wed, 23 Nov 2022 13:30:42 -0000
Message-ID: <166921024206.15575.6443986484692183892@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221122200915.680629-1-John.C.Harrison@Intel.com>
In-Reply-To: <20221122200915.680629-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgTW9y?=
 =?utf-8?q?e_GuC_firmware_version_improvements?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6059044873987538274==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: More GuC firmware version improvements
URL   : https://patchwork.freedesktop.org/series/111218/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12418_full -> Patchwork_111218v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_111218v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_111218v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111218v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close@many-handles-one-vma:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl10/igt@gem_close@many-handles-one-vma.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl10/igt@gem_close@many-handles-one-vma.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a2:
    - shard-glk:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk2/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk1/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@prime_self_import@reimport-vs-gem_close-race:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-3/igt@prime_self_import@reimport-vs-gem_close-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_111218v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32]) -> ([PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [FAIL][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57]) ([i915#4392])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk5/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk8/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk8/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk9/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk9/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk9/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk6/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk5/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk8/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk8/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk8/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk9/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk9/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][58] ([i915#2842])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#2842]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#4613])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#4613])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-tglb2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [INCOMPLETE][63] ([i915#7248])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl9/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [INCOMPLETE][64] ([i915#7248])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#3323])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@i915_module_load@resize-bar:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#6412])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-tglb2/igt@i915_module_load@resize-bar.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-apl:          NOTRUN -> [FAIL][67] ([i915#7036])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_backlight@fade-with-dpms:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271]) +37 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-apl8/igt@i915_pm_backlight@fade-with-dpms.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][69] ([i915#3989] / [i915#454])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl10/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][70] ([i915#3763])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3886]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl9/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#6095])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-tglb2/igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#3689] / [i915#3886])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-tglb2/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886]) +4 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl10/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_color_chamelium@ctm-limited-range:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109284] / [fdo#111827])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb3/igt@kms_color_chamelium@ctm-limited-range.html
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@kms_color_chamelium@ctm-limited-range.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271]) +76 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl9/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#3555])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-tglb2/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [PASS][80] -> [FAIL][81] ([i915#2346])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][82] -> [FAIL][83] ([i915#79])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#79])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][86] -> [INCOMPLETE][87] ([i915#4839])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl4/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl6/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:
    - shard-glk:          [PASS][88] -> [FAIL][89] ([i915#2122]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk3/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk8/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#2587] / [i915#2672]) +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#2672]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([i915#3555])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#2587] / [i915#2672])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-tglb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109280]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
    - shard-iclb:         [PASS][95] -> [FAIL][96] ([i915#2546])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_plane_alpha_blend@constant-alpha-min@pipe-c-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][97] ([i915#4573]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl10/igt@kms_plane_alpha_blend@constant-alpha-min@pipe-c-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#658])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl10/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][99] -> [SKIP][100] ([fdo#109441]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [PASS][101] -> [SKIP][102] ([i915#5519])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
    - shard-iclb:         [PASS][103] -> [SKIP][104] ([i915#5519])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-iclb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#2437])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-iclb:         NOTRUN -> [SKIP][106] ([i915#2437])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb3/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#2437])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl9/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf_pmu@interrupts:
    - shard-skl:          [PASS][108] -> [FAIL][109] ([i915#7318])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl10/igt@perf_pmu@interrupts.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl9/igt@perf_pmu@interrupts.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:
    - shard-skl:          [PASS][110] -> [DMESG-WARN][111] ([i915#1982]) +2 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl1/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl7/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#2994])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@sysfs_clients@recycle-many.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@hang:
    - {shard-rkl}:        [SKIP][113] ([i915#6252]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-4/igt@gem_ctx_persistence@hang.html

  * igt@gem_exec_balancer@fairslice:
    - {shard-rkl}:        [SKIP][115] ([i915#6259]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][117] ([i915#4525]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-iclb8/igt@gem_exec_balancer@parallel.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][119] ([i915#2846]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk5/igt@gem_exec_fair@basic-deadline.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][121] ([i915#2842]) -> [PASS][122] +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          [FAIL][123] ([i915#2842]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk1/igt@gem_exec_fair@basic-pace@rcs0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - {shard-rkl}:        [SKIP][125] ([i915#3281]) -> [PASS][126] +6 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_pwrite@basic-self:
    - {shard-rkl}:        [SKIP][127] ([i915#3282]) -> [PASS][128] +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-3/igt@gem_pwrite@basic-self.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-5/igt@gem_pwrite@basic-self.html

  * igt@gem_softpin@evict-single-offset:
    - {shard-rkl}:        [FAIL][129] ([i915#4171]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-5/igt@gem_softpin@evict-single-offset.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-4/igt@gem_softpin@evict-single-offset.html

  * igt@gen9_exec_parse@unaligned-jump:
    - {shard-rkl}:        [SKIP][131] ([i915#2527]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-3/igt@gen9_exec_parse@unaligned-jump.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-5/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_hangman@gt-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][133] ([i915#6258]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@i915_hangman@gt-engine-error@bcs0.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][135] ([i915#3989] / [i915#454]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - {shard-rkl}:        [WARN][137] ([i915#2681]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@pm-tiling:
    - {shard-rkl}:        [SKIP][139] ([fdo#109308]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-4/igt@i915_pm_rpm@pm-tiling.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [DMESG-FAIL][141] ([i915#5334]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl6/igt@i915_selftest@live@gt_heartbeat.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_color@ctm-green-to-red@pipe-c-edp-1:
    - shard-skl:          [DMESG-WARN][143] ([i915#1982]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl1/igt@kms_color@ctm-green-to-red@pipe-c-edp-1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl1/igt@kms_color@ctm-green-to-red@pipe-c-edp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-iclb:         [FAIL][145] ([i915#2346]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][147] ([i915#2346]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [FAIL][149] ([i915#79]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][151] ([i915#79]) -> [PASS][152] +2 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][153] ([i915#180]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-tglb:         [DMESG-WARN][155] ([i915#2411] / [i915#2867]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-tglb3/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-tglb3/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc:
    - {shard-rkl}:        [SKIP][157] ([i915#1849] / [i915#4098]) -> [PASS][158] +17 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-glk:          [FAIL][159] ([i915#2546]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_plane@plane-position-covered@pipe-a-planes:
    - {shard-rkl}:        [SKIP][161] ([i915#1849] / [i915#3558]) -> [PASS][162] +1 similar issue
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-5/igt@kms_plane@plane-position-covered@pipe-a-planes.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-a-planes.html

  * igt@kms_psr@sprite_plane_move:
    - {shard-rkl}:        [SKIP][163] ([i915#1072]) -> [PASS][164] +1 similar issue
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-4/igt@kms_psr@sprite_plane_move.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@kms_psr@sprite_plane_move.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - {shard-rkl}:        [SKIP][165] ([i915#5461]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [SKIP][167] ([i915#5519]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b:
    - {shard-rkl}:        [SKIP][169] ([i915#4098]) -> [PASS][170] +1 similar issue
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-3/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html

  * igt@kms_vblank@pipe-b-query-idle:
    - {shard-rkl}:        [SKIP][171] ([i915#1845] / [i915#4098]) -> [PASS][172] +23 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-3/igt@kms_vblank@pipe-b-query-idle.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][173] ([fdo#109289]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-double-start@vecs0:
    - {shard-dg1}:        [FAIL][175] ([i915#4349]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-dg1-13/igt@perf_pmu@busy-double-start@vecs0.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-dg1-17/igt@perf_pmu@busy-double-start@vecs0.html

  * igt@prime_vgem@basic-fence-flip:
    - {shard-rkl}:        [SKIP][177] ([fdo#109295] / [i915#3708] / [i915#4098]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-3/igt@prime_vgem@basic-fence-flip.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-write:
    - {shard-rkl}:        [SKIP][179] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-6/igt@prime_vgem@basic-write.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-5/igt@prime_vgem@basic-write.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglb:         [FAIL][181] ([i915#2842]) -> [SKIP][182] ([i915#2848])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-tglb2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-tglb6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
    - shard-apl:          [DMESG-FAIL][183] ([IGT#6]) -> [FAIL][184] ([i915#4573]) +1 similar issue
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-apl2/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-apl1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][185] ([fdo#111068] / [i915#658]) -> [SKIP][186] ([i915#2920])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][187], [FAIL][188], [FAIL][189]) ([i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][190], [FAIL][191]) ([i915#3002] / [i915#4312])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-apl1/igt@runner@aborted.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-apl7/igt@runner@aborted.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-apl6/igt@runner@aborted.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-apl7/igt@runner@aborted.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2848]: https://gitlab.freedesktop.org/drm/intel/issues/2848
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
  [i915#7318]: https://gitlab.freedesktop.org/drm/intel/issues/7318
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12418 -> Patchwork_111218v1

  CI-20190529: 20190529
  CI_DRM_12418: 22789b788bcaf35826550836b0ad6872d6e85ca6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7071: 0801475083ccb938b1d3b358502ff97fdb435585 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111218v1: 22789b788bcaf35826550836b0ad6872d6e85ca6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/index.html

--===============6059044873987538274==
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
<tr><td><b>Series:</b></td><td>More GuC firmware version improvements</td><=
/tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/111218/">https://patchwork.freedesktop.org/series/111218/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111218v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111218v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12418_full -&gt; Patchwork_111218v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_111218v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_111218v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
111218v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_close@many-handles-one-vma:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-skl10/igt@gem_close@many-handles-one-vma.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218=
v1/shard-skl10/igt@gem_close@many-handles-one-vma.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-glk2/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
218v1/shard-glk1/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html">INCOMPLETE</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v1/shard-tglb8/igt@kms_frontbuffer_tracki=
ng@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@prime_self_import@reimport-vs-gem_close-race:<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-rkl-3/igt@prime_self_import@reimport=
-vs-gem_close-race.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111218v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12418/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk5/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk6/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12418/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12418/shard-glk7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12418/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk8/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12418/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12418/shard-glk8/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk9/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418=
/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12418/shard-glk9/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk9/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2418/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12418/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12418/shard-glk1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
218v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_111218v1/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111218v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/sh=
ard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111218v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1218v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_111218v1/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111218v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/sh=
ard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111218v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1218v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_111218v1/shard-glk8/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111218v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111218v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk9/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4392=
">i915#4392</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-iclb1/igt@gem_exec_fair@basic-none@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1218v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@gem_lmem_swapping@heavy-mul=
ti.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-tglb2/igt@gem_lmem_swapping@heavy-ve=
rify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-skl9/igt@gem_pread@exhaustion.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
7248">i915#7248</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@gem_pwrite@basic-exhaustion=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7248">i915#7248</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-skl9/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-tglb2/igt@i915_module_load@resize-ba=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@i915_pipe_stress@stress-xrg=
b8888-untiled.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7036">i915#7036</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-apl8/igt@i915_pm_backlight@fade-with=
-dpms.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a>) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-skl10/igt@i915_pm_dc@dc6-dpms.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3989">=
i915#3989</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3763">i915#3763</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-skl9/igt@kms_ccs@pipe-a-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-tglb2/igt@kms_ccs@pipe-a-bad-rotatio=
n-90-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-tglb2/igt@kms_ccs@pipe-b-crc-sprite-=
planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@kms_ccs@pipe-c-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-skl10/igt@kms_chamelium@hdmi-hpd-sto=
rm-disable.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-limited-range:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111218v1/shard-iclb3/igt@kms_color_chamelium@ctm-lim=
ited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@kms_color_chamelium@ctm-limi=
ted-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-skl9/igt@kms_cursor_crc@cursor-offsc=
reen-32x10.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a>) +76 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-tglb2/igt@kms_cursor_crc@cursor-rapi=
d-movement-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111218v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_111218v1/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@=
bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111218v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-skl4/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218=
v1/shard-skl6/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4839">i915#4839</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-glk3/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111218v1/shard-glk8/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122"=
>i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-tglb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-iclb3/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-onoff.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111218v1/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-cur-indfb-onoff.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-skl10/igt@kms_plane_alpha_blend@cons=
tant-alpha-min@pipe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-skl10/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218=
v1/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12418/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-ov=
erlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111218v1/shard-tglb5/igt@kms_psr_stress_test@flip-primary-inv=
alidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5519">i915#5519</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12418/shard-iclb8/igt@kms_psr_stress_test@flip-primary-invalidate-ov=
erlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111218v1/shard-iclb1/igt@kms_psr_stress_test@flip-primary-inv=
alidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5519">i915#5519</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@kms_writeback@writeback-inva=
lid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111218v1/shard-iclb3/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2437">i915#2437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-skl9/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-skl10/igt@perf_pmu@interrupts.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-sk=
l9/igt@perf_pmu@interrupts.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/7318">i915#7318</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signal=
ed:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-skl1/igt@syncobj_timeline@invalid-multi-wait-all-availa=
ble-unsubmitted-signaled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-skl7/igt@syncobj_timeline@i=
nvalid-multi-wait-all-available-unsubmitted-signaled.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982<=
/a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@sysfs_clients@recycle-many.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218=
v1/shard-rkl-4/igt@gem_ctx_persistence@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6259">i915#6259</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
218v1/shard-rkl-6/igt@gem_exec_balancer@fairslice.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-iclb8/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1112=
18v1/shard-iclb1/igt@gem_exec_balancer@parallel.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-glk5/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
218v1/shard-glk9/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11218v1/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-glk1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1218v1/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i91=
5#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111218v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PAS=
S</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-3/igt@gem_pwrite@basic-self.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/=
shard-rkl-5/igt@gem_pwrite@basic-self.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-5/igt@gem_softpin@evict-single-offset.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#41=
71</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111218v1/shard-rkl-4/igt@gem_softpin@evict-single-offset.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-3/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#252=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111218v1/shard-rkl-5/igt@gen9_exec_parse@unaligned-jump.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6258">i915#=
6258</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111218v1/shard-rkl-6/igt@i915_hangman@gt-engine-error@bcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1=
/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i91=
5#2681</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111218v1/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-tiling:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-4/igt@i915_pm_rpm@pm-tiling.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v=
1/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-skl6/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i9=
15#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111218v1/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-skl1/igt@kms_color@ctm-green-to-red@pipe-c-edp-1.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111218v1/shard-skl1/igt@kms_color@ctm-green-to-red@pipe-c-edp=
-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-trans=
itions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111218v1/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cur=
sor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-glk9/igt@kms_cursor_legacy@=
flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111218v1/shard-glk7/igt@kms_flip@flip-vs-expired-vblank=
-interruptible@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i91=
5#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111218v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PAS=
S</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111218v1/shard-apl6/igt@kms_flip@flip-vs-suspend-interrupt=
ible@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-tglb3/igt@kms_flip@flip-vs-suspend@b-edp1.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2411">i=
915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
867">i915#2867</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111218v1/shard-tglb3/igt@kms_flip@flip-vs-suspend@b-edp1.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@kms_frontbu=
ffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html">PASS</a> +17 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-glk2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
546">i915#2546</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111218v1/shard-glk7/igt@kms_frontbuffer_tracking@fbc-modesetfr=
ombusy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-5/igt@kms_plane@plane-position-covered@pipe-a-plane=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@kms_plane@plane-position-cov=
ered@pipe-a-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_move:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-4/igt@kms_psr@sprite_plane_move.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11121=
8v1/shard-rkl-6/igt@kms_psr@sprite_plane_move.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-3/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5461">i915#5461</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111218v1/shard-tglb6/igt@kms_psr_stress_test@invalidat=
e-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-3/igt@kms_universal_plane@universal-plane-pageflip-=
windowed-pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111218v1/shard-rkl-6/igt@kms_universal_plane@=
universal-plane-pageflip-windowed-pipe-b.html">PASS</a> +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-idle:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-3/igt@kms_vblank@pipe-b-query-idle.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915=
#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111218v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html">PASS</a> +2=
3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111218v1/shard-rkl-6/igt@perf@gen12-unprivileged-single-ctx-=
counters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-dg1-13/igt@perf_pmu@busy-double-start@vecs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#=
4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111218v1/shard-dg1-17/igt@perf_pmu@busy-double-start@vecs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-3/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i91=
5#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409=
8">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111218v1/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-rkl-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#329=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i9=
15#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111218v1/shard-rkl-5/igt@prime_vgem@basic-write.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-tglb2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111218v1/shard-tglb6/igt@gem_exec_fair@basic-none-solo@rcs0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2848">i915#=
2848</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-apl2/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.=
html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu=
-tools/issues/6">IGT#6</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111218v1/shard-apl1/igt@kms_plane_alpha_blend@alpha-ba=
sic@pipe-c-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4573">i915#4573</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12418/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111218v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12418/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-apl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12418/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v=
1/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_111218v1/shard-apl6/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12418 -&gt; Patchwork_111218v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12418: 22789b788bcaf35826550836b0ad6872d6e85ca6 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7071: 0801475083ccb938b1d3b358502ff97fdb435585 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111218v1: 22789b788bcaf35826550836b0ad6872d6e85ca6 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6059044873987538274==--
