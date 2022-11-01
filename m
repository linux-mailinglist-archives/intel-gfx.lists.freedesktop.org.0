Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E60256150D5
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 18:36:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A8410E40F;
	Tue,  1 Nov 2022 17:36:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4607E10E266;
 Tue,  1 Nov 2022 17:36:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3C94FAA01E;
 Tue,  1 Nov 2022 17:36:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7626211005894601187=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Tue, 01 Nov 2022 17:36:25 -0000
Message-ID: <166732418523.13544.8729704838855501251@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221101112120.1138595-1-vinod.govindapillai@intel.com>
In-Reply-To: <20221101112120.1138595-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Enable_SDP_split_for_DP2=2E0_=28rev2=29?=
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

--===============7626211005894601187==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Enable SDP split for DP2.0 (rev2)
URL   : https://patchwork.freedesktop.org/series/109395/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12325_full -> Patchwork_109395v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109395v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109395v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 9)
------------------------------

  Missing    (2): shard-rkl shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109395v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines@basic:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7/igt@gem_exec_parallel@engines@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl3/igt@gem_exec_parallel@engines@basic.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-tglb5/igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-tglb8/igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs.html

  
Known issues
------------

  Here are the changes found in Patchwork_109395v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [FAIL][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51]) ([i915#5032])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl9/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl9/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl9/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl10/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl10/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl10/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl3/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl9/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl9/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl9/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl1/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl10/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl10/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl10/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all@dma_fence_chain:
    - shard-skl:          NOTRUN -> [INCOMPLETE][52] ([i915#6949])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl7/igt@dmabuf@all@dma_fence_chain.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([i915#4525]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb7/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][55] -> [FAIL][56] ([i915#2842])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][57] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#2842])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#4613]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl6/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_softpin@evict-single-offset:
    - shard-tglb:         [PASS][61] -> [FAIL][62] ([i915#4171])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-tglb2/igt@gem_softpin@evict-single-offset.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-tglb7/igt@gem_softpin@evict-single-offset.html

  * igt@i915_module_load@load:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#6227])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl6/igt@i915_module_load@load.html

  * igt@i915_pm_backlight@fade:
    - shard-iclb:         [PASS][64] -> [DMESG-WARN][65] ([i915#402])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb7/igt@i915_pm_backlight@fade.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb2/igt@i915_pm_backlight@fade.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][66] -> [FAIL][67] ([i915#3989] / [i915#454])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][68] ([i915#1886])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl7/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#5286])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#110725] / [fdo#111614])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb8/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#110723])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb8/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#3886]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl9/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109278]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb8/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl7/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109284] / [fdo#111827])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb8/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
    - shard-iclb:         [PASS][76] -> [FAIL][77] ([i915#2346]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][78] -> [FAIL][79] ([i915#4767])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][80] -> [INCOMPLETE][81] ([i915#1982])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][82] -> [FAIL][83] ([i915#2122])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [PASS][84] -> [DMESG-WARN][85] ([i915#180])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [PASS][86] -> [FAIL][87] ([i915#2122])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl3/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#2587] / [i915#2672]) +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#6375])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#3555]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#2672]) +5 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([i915#2672] / [i915#3555])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271]) +117 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109280]) +5 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][95] ([i915#4573]) +5 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl9/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-iclb:         [PASS][96] -> [SKIP][97] ([i915#5176]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][98] -> [SKIP][99] ([i915#5235]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#658])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109642] / [fdo#111068] / [i915#658])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb5/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [FAIL][102] ([i915#5939]) +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb2/igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [PASS][103] -> [SKIP][104] ([fdo#109441]) +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb7/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [PASS][105] -> [SKIP][106] ([i915#5519])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#2437]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl7/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][108] -> [FAIL][109] ([i915#1542])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl3/igt@perf@blocking.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl4/igt@perf@blocking.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#2994])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl6/igt@sysfs_clients@pidname.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [PASS][111] -> [FAIL][112] ([i915#1731])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-iclb:         [INCOMPLETE][113] ([i915#7401]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb5/igt@gem_ctx_persistence@many-contexts.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb8/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][115] ([i915#4525]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-apl:          [FAIL][117] ([i915#2842]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][119] ([i915#2346]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
    - shard-apl:          [FAIL][121] ([i915#79]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html

  * igt@kms_flip@wf_vblank-ts-check@a-edp1:
    - shard-skl:          [FAIL][123] ([i915#2122]) -> [PASS][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl3/igt@kms_flip@wf_vblank-ts-check@a-edp1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl7/igt@kms_flip@wf_vblank-ts-check@a-edp1.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][125] ([fdo#109441]) -> [PASS][126] +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb8/igt@kms_psr@psr2_primary_blt.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [SKIP][127] ([i915#5519]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-tglb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@perf_pmu@all-busy-idle-check-all:
    - shard-skl:          [DMESG-WARN][129] ([i915#1982]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl6/igt@perf_pmu@all-busy-idle-check-all.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl6/igt@perf_pmu@all-busy-idle-check-all.html

  * igt@perf_pmu@interrupts:
    - shard-skl:          [FAIL][131] ([i915#7318]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7/igt@perf_pmu@interrupts.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl9/igt@perf_pmu@interrupts.html

  
#### Warnings ####

  * igt@gem_pread@exhaustion:
    - shard-apl:          [WARN][133] ([i915#2658]) -> [INCOMPLETE][134] ([i915#7248])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl7/igt@gem_pread@exhaustion.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-apl6/igt@gem_pread@exhaustion.html
    - shard-glk:          [INCOMPLETE][135] ([i915#7248]) -> [WARN][136] ([i915#2658])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-glk3/igt@gem_pread@exhaustion.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-glk5/igt@gem_pread@exhaustion.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][137] ([i915#658]) -> [SKIP][138] ([i915#2920])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][139] ([i915#2920]) -> [SKIP][140] ([i915#658])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][141] ([fdo#111068] / [i915#658]) -> [SKIP][142] ([i915#2920])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146]) ([fdo#109271] / [i915#3002] / [i915#4312]) -> ([FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl6/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl6/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl2/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-apl6/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-apl6/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-apl3/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-apl3/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-apl3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][152], [FAIL][153]) ([i915#3002] / [i915#4312]) -> ([FAIL][154], [FAIL][155], [FAIL][156]) ([i915#3002] / [i915#4312] / [i915#6949])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl10/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl7/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl1/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl9/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6375]: https://gitlab.freedesktop.org/drm/intel/issues/6375
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7318]: https://gitlab.freedesktop.org/drm/intel/issues/7318
  [i915#7401]: https://gitlab.freedesktop.org/drm/intel/issues/7401
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12325 -> Patchwork_109395v2

  CI-20190529: 20190529
  CI_DRM_12325: 1a90222aa5e5bb86ffcbde5ba9611659a23f0df6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7032: 372c56225e12578a7a4a6bcc5b79eb40b643fcde @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109395v2: 1a90222aa5e5bb86ffcbde5ba9611659a23f0df6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/index.html

--===============7626211005894601187==
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
<tr><td><b>Series:</b></td><td>drm/i915: Enable SDP split for DP2.0 (rev2)<=
/td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/109395/">https://patchwork.freedesktop.org/series/109395/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109395v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109395v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12325_full -&gt; Patchwork_109395v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109395v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_109395v2_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 9)</h2>
<p>Missing    (2): shard-rkl shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
109395v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-skl7/igt@gem_exec_parallel@engines@basic.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395=
v2/shard-skl3/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-skl9/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v=
2/shard-skl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-tglb5/igt@kms_atomic_transition@modeset-transition-nonb=
locking@1x-outputs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_109395v2/shard-tglb8/igt@kms_atomic_transition@m=
odeset-transition-nonblocking@1x-outputs.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109395v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12325/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12325/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12325/shard-skl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/sha=
rd-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12325/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12325/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12325/shard-skl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12325/shard-skl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-sk=
l1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl10/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12325/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_12325/shard-skl10/boot.html">PASS</a>) -&gt; (<a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl3=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_109395v2/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl9/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/s=
hard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_109395v2/shard-skl9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl7/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09395v2/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_109395v2/shard-skl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109395v2/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/sh=
ard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109395v2/shard-skl4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9395v2/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109395v2/shard-skl3/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109395v2/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/sh=
ard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_109395v2/shard-skl10/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl10/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109395v2/shard-skl10/boot.html">PASS</a>) (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5032">i915#5032</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence_chain:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-skl7/igt@dmabuf@all@dma_fence_chain.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6949">i915#6949</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09395v2/shard-iclb7/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v=
2/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb1/igt@gem_exec_fair@basic-none@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v=
2/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-skl6/igt@gem_lmem_swapping@heavy-ver=
ify-multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-tglb2/igt@gem_softpin@evict-single-offset.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10939=
5v2/shard-tglb7/igt@gem_softpin@evict-single-offset.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#4171</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-skl6/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb7/igt@i915_pm_backlight@fade.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard=
-iclb2/igt@i915_pm_backlight@fade.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-icl=
b7/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3989">i915#3989</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-skl7/igt@i915_selftest@live@gt_pm.ht=
ml">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb8/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb8/igt@kms_big_fb@x-tiled-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb8/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-skl9/igt@kms_ccs@pipe-a-crc-primary-=
basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb8/igt@kms_ccs@pipe-b-missing-ccs=
-buffer-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-skl7/igt@kms_chamelium@hdmi-crc-mult=
iple.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb8/igt@kms_chamelium@hdmi-crc-non=
planar-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@varying-size=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_109395v2/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-=
size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2346">i915#2346</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/sha=
rd-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/sha=
rd-skl4/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_109395v2/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@=
ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_109395v2/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-skl7/igt@kms_flip@plain-flip-ts-check@a-edp1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9395v2/shard-skl3/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb5/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6375">i915#6=
375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb1/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-skl7/igt@kms_frontbuffer_tracking@fb=
c-1p-offscren-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +117 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb8/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +5 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-skl9/igt@kms_plane_alpha_blend@alpha=
-transparent-fb@pipe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4573">i915#4573</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb5/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-pixel-formats@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb3/igt@kms_pl=
ane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5176">i915#5176</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-iclb2/igt@kms_plane_scal=
ing@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-skl6/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb5/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-iclb2/igt@kms_psr2_su@page_flip-p010=
@pipe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5939">i915#5939</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10939=
5v2/shard-iclb7/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb6/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_109395v2/shard-iclb6/igt@kms_psr_stress_test@flip-primary-in=
validate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-skl7/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-skl3/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl4/igt@=
perf@blocking.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109395v2/shard-skl6/igt@sysfs_clients@pidname.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-skl7/igt@sysfs_heartbeat_interval@mixed@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9395v2/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</=
a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb5/igt@gem_ctx_persistence@many-contexts.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7401"=
>i915#7401</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_109395v2/shard-iclb8/igt@gem_ctx_persistence@many-contexts.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i9=
15#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_109395v2/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109395v2/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-glk6/igt@kms_cursor_legacy@=
flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915=
#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109395v2/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-skl3/igt@kms_flip@wf_vblank-ts-check@a-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#=
2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109395v2/shard-skl7/igt@kms_flip@wf_vblank-ts-check@a-edp1.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb8/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1093=
95v2/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109395v2/shard-tglb6/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@all-busy-idle-check-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-skl6/igt@perf_pmu@all-busy-idle-check-all.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i=
915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_109395v2/shard-skl6/igt@perf_pmu@all-busy-idle-check-all.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-skl7/igt@perf_pmu@interrupts.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/7318">i915#7318</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/sha=
rd-skl9/igt@perf_pmu@interrupts.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12325/shard-apl7/igt@gem_pread@exhaustion.html">WARN</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/sha=
rd-apl6/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12325/shard-glk3/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395=
v2/shard-glk5/igt@gem_pread@exhaustion.html">WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_109395v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-co=
ntinuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_109395v2/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_109395v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920"=
>i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12325/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl2/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-apl6/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109395v2/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-apl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_109395v2/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-apl3/igt@=
runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl10/igt@runner@ab=
orted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_109395v2/shard-skl7/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10939=
5v2/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_109395v2/shard-skl9/igt@runner@aborted=
.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/6949">i915#6949</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12325 -&gt; Patchwork_109395v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12325: 1a90222aa5e5bb86ffcbde5ba9611659a23f0df6 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7032: 372c56225e12578a7a4a6bcc5b79eb40b643fcde @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109395v2: 1a90222aa5e5bb86ffcbde5ba9611659a23f0df6 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7626211005894601187==--
