Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2126175C5
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 05:45:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE1B010E227;
	Thu,  3 Nov 2022 04:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 21EC610E227;
 Thu,  3 Nov 2022 04:45:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD3F4A77A5;
 Thu,  3 Nov 2022 04:45:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0834078235201230164=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Thu, 03 Nov 2022 04:45:37 -0000
Message-ID: <166745073779.9191.16318346398015387444@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221102192109.2492625-1-John.C.Harrison@Intel.com>
In-Reply-To: <20221102192109.2492625-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_for_two_GuC_issues_=28rev2=29?=
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

--===============0834078235201230164==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix for two GuC issues (rev2)
URL   : https://patchwork.freedesktop.org/series/110269/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12332_full -> Patchwork_110269v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110269v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110269v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110269v2_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-iclb:         ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [FAIL][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb8/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl10/igt@i915_suspend@fence-restore-untiled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl9/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic:
    - shard-skl:          NOTRUN -> [INCOMPLETE][53]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         [PASS][54] -> [FAIL][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  
Known issues
------------

  Here are the changes found in Patchwork_110269v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([i915#658])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@feature_discovery@psr2.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-skl:          [PASS][58] -> [INCOMPLETE][59] ([i915#4793])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl9/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([i915#4525]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2846])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][64] ([i915#2842])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [PASS][65] -> [DMESG-WARN][66] ([i915#180]) +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@basic:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-glk:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#4613])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk3/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@massive:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#4613]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl8/igt@gem_lmem_swapping@massive.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [INCOMPLETE][70] ([i915#7248])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl7/igt@gem_pread@exhaustion.html

  * igt@gem_tiled_wb:
    - shard-skl:          NOTRUN -> [TIMEOUT][71] ([i915#6990])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl4/igt@gem_tiled_wb.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [PASS][72] -> [DMESG-FAIL][73] ([i915#5334])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl6/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [PASS][74] -> [DMESG-WARN][75] ([i915#5591])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-tglb6/igt@i915_selftest@live@hangcheck.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-tglb2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3886]) +3 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl8/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl8/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_color_chamelium@gamma:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_color_chamelium@gamma.html

  * igt@kms_cursor_legacy@cursor-vs-flip@varying-size:
    - shard-iclb:         [PASS][79] -> [FAIL][80] ([i915#5072])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb3/igt@kms_cursor_legacy@cursor-vs-flip@varying-size.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [PASS][81] -> [FAIL][82] ([i915#79])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][83] ([i915#180]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#2122]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl6/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#2587] / [i915#2672])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([i915#2672]) +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#2672] / [i915#3555])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271]) +35 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         [PASS][90] -> [FAIL][91] ([i915#2546])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271]) +59 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-skl:          [PASS][93] -> [DMESG-WARN][94] ([i915#1982])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render:
    - shard-glk:          NOTRUN -> [SKIP][95] ([fdo#109271]) +4 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#658]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][97] -> [SKIP][98] ([fdo#109441]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [PASS][99] -> [SKIP][100] ([i915#5519])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-tglb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#2437])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@sysfs_clients@busy:
    - shard-glk:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#2994])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk3/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@split-10:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2994])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl9/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [SKIP][104] ([i915#4525]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][106] ([i915#2842]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_mmap_offset@bad-object:
    - shard-skl:          [DMESG-WARN][108] ([i915#1982]) -> [PASS][109] +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl4/igt@gem_mmap_offset@bad-object.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl7/igt@gem_mmap_offset@bad-object.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          [WARN][110] ([i915#1804]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-iclb:         [FAIL][112] -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb3/igt@i915_pm_rpm@basic-pci-d3-state.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_cursor_legacy@cursor-vs-flip@toggle:
    - shard-skl:          [INCOMPLETE][114] -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl6/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][116] ([i915#2346]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-skl:          [FAIL][118] ([i915#2122]) -> [PASS][119] +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][120] ([i915#79]) -> [PASS][121] +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         [SKIP][122] ([i915#3555]) -> [PASS][123] +4 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1:
    - shard-glk:          [DMESG-FAIL][124] ([i915#118]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-glk9/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk8/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:
    - shard-glk:          [FAIL][126] ([i915#7307]) -> [PASS][127] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-glk9/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk8/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][128] ([i915#5176]) -> [PASS][129] +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][130] ([i915#5235]) -> [PASS][131] +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][132] ([fdo#109441]) -> [PASS][133] +2 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [SKIP][134] ([i915#5519]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][136] ([i915#180]) -> [PASS][137] +3 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][138] ([i915#1542]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl9/igt@perf@polling.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl4/igt@perf@polling.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-skl:          [INCOMPLETE][140] ([i915#2295]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl3/igt@prime_mmap_coherency@ioctl-errors.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl4/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@syncobj_wait@wait-all-for-submit-snapshot:
    - shard-skl:          [FAIL][142] ([i915#7109]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl10/igt@syncobj_wait@wait-all-for-submit-snapshot.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl6/igt@syncobj_wait@wait-all-for-submit-snapshot.html

  
#### Warnings ####

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          [WARN][144] ([i915#2658]) -> [INCOMPLETE][145] ([i915#7248])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-glk5/igt@gem_pwrite@basic-exhaustion.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk1/igt@gem_pwrite@basic-exhaustion.html
    - shard-skl:          [TIMEOUT][146] ([i915#7248]) -> [INCOMPLETE][147] ([i915#7248])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-skl3/igt@gem_pwrite@basic-exhaustion.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@gem_pwrite@basic-exhaustion.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][148] ([i915#588]) -> [SKIP][149] ([i915#658])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][150] ([i915#2920]) -> [SKIP][151] ([i915#658])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][152] ([fdo#111068] / [i915#658]) -> [SKIP][153] ([i915#2920])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb1/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164]) ([i915#180] / [i915#3002] / [i915#4312])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl2/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl3/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl3/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl8/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl1/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl6/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl3/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl3/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4793]: https://gitlab.freedesktop.org/drm/intel/issues/4793
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6990]: https://gitlab.freedesktop.org/drm/intel/issues/6990
  [i915#7109]: https://gitlab.freedesktop.org/drm/intel/issues/7109
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7307]: https://gitlab.freedesktop.org/drm/intel/issues/7307
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12332 -> Patchwork_110269v2

  CI-20190529: 20190529
  CI_DRM_12332: 601b2ef606e4b83d5518aa6a5011bb2b1c5954d9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7038: 5389b3f3b9b75df6bd8506e4aa3da357fd0c0ab1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110269v2: 601b2ef606e4b83d5518aa6a5011bb2b1c5954d9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/index.html

--===============0834078235201230164==
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
<tr><td><b>Series:</b></td><td>Fix for two GuC issues (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/110269/">https://patchwork.freedesktop.org/series/110269/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110269v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110269v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12332_full -&gt; Patchwork_110269v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110269v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_110269v2_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
110269v2_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12332/shard-iclb8/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb8/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12332/shard-iclb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12332/shard-iclb7/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb7/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_123=
32/shard-iclb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_12332/shard-iclb6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/sha=
rd-iclb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_12332/shard-iclb5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-icl=
b5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb5/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb3/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_12332/shard-iclb3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12332/shard-iclb3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1233=
2/shard-iclb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_12332/shard-iclb2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shar=
d-iclb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12332/shard-iclb1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-iclb1/boot.html">PASS</a>) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269=
v2/shard-iclb8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110269v2/shard-iclb8/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb8/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_110269v2/shard-iclb8/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/sh=
ard-iclb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_110269v2/shard-iclb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb6/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110269v2/shard-iclb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-i=
clb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_110269v2/shard-iclb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb5/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1102=
69v2/shard-iclb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_110269v2/shard-iclb3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110269v2/shard-iclb3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2=
/shard-iclb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110269v2/shard-iclb2/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb2/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110269v2/shard-iclb1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shar=
d-iclb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_110269v2/shard-iclb1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-skl10/igt@i915_suspend@fence-restore-untiled.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0269v2/shard-skl9/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@atomic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_cursor_legacy@cursor-vs=
-flip@atomic.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/igt@kms_frontbuffer_trackin=
g@psr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110269v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard=
-iclb3/igt@feature_discovery@psr2.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-skl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110269v2/shard-skl9/igt@gem_ctx_isolation@preservation-s3@vecs0.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/479=
3">i915#4793</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110269v2/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-glk8/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/=
shard-glk6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@gem_exec_fair@basic-pace@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v=
2/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@gem_lmem_swapping@basic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-glk3/igt@gem_lmem_swapping@heavy-ver=
ify-multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-apl8/igt@gem_lmem_swapping@massive.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-apl7/igt@gem_pread@exhaustion.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
7248">i915#7248</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_wb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-skl4/igt@gem_tiled_wb.html">TIMEOUT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6990">i915#=
6990</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269=
v2/shard-skl6/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-tglb6/igt@i915_selftest@live@hangcheck.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2=
/shard-tglb2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-apl8/igt@kms_ccs@pipe-a-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-apl8/igt@kms_chamelium@hdmi-edid-cha=
nge-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@gamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_color_chamelium@gamma.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb3/igt@kms_cursor_legacy@cursor-vs-flip@varying-size=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110269v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@varying-=
size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/5072">i915#5072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110269v2/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i=
915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@kms_flip@flip-vs-suspend@b-=
dp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-skl6/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0269v2/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</=
a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-iclb8/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-apl7/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +35 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-s=
pr-indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110269v2/shard-iclb1/igt@kms_frontbuffer_track=
ing@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_frontbuffer_tracking@fb=
cpsr-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a>) +59 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110269v2/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-=
primscrn-cur-indfb-move.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-glk3/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +4 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shar=
d-iclb3/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_110269v2/shard-tglb1/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-skl1/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-glk3/igt@sysfs_clients@busy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110269v2/shard-skl9/igt@sysfs_clients@split-10.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110269v2/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10269v2/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@bad-object:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-skl4/igt@gem_mmap_offset@bad-object.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#19=
82</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110269v2/shard-skl7/igt@gem_mmap_offset@bad-object.html">PASS</a> +3 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915=
#1804</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110269v2/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb3/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269=
v2/shard-iclb1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-skl6/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html">=
INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110269v2/shard-skl1/igt@kms_cursor_legacy@cursor-vs-flip@toggle.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-glk6/igt@kms_cursor_legacy@=
flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-skl5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/212=
2">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110269v2/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-ed=
p1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110269v2/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@b-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bp=
p-linear-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3=
/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe=
-a-default-mode.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-glk9/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html=
">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/118">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110269v2/shard-glk8/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi=
-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-glk9/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7307=
">i915#7307</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110269v2/shard-glk8/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-=
b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-=
format-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5176">i915#5176</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_p=
lane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html=
">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_plan=
e_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11026=
9v2/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110269v2/shard-iclb1/igt@kms_psr_stress_test@invalidat=
e-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110269v2/shard-apl7/igt@kms_vblank@pipe-b-ts-continuation-sus=
pend.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-skl9/igt@perf@polling.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-skl4=
/igt@perf@polling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@ioctl-errors:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-skl3/igt@prime_mmap_coherency@ioctl-errors.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">=
i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110269v2/shard-skl4/igt@prime_mmap_coherency@ioctl-errors.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@wait-all-for-submit-snapshot:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-skl10/igt@syncobj_wait@wait-all-for-submit-snapshot.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/710=
9">i915#7109</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110269v2/shard-skl6/igt@syncobj_wait@wait-all-for-submit-snapsho=
t.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12332/shard-glk5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11026=
9v2/shard-glk1/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>)</=
p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12332/shard-skl3/igt@gem_pwrite@basic-exhaustion.html">TIMEOUT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0269v2/shard-skl1/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>=
)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10269v2/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110269v2/shard-iclb3/igt@kms_psr2_sf@cursor-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12332/shard-iclb1/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110269v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920"=
>i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12332/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12332/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12332/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12332/shard-apl6/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110269v2/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110269v2/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110269v2/shard-apl6/igt=
@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12332 -&gt; Patchwork_110269v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12332: 601b2ef606e4b83d5518aa6a5011bb2b1c5954d9 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7038: 5389b3f3b9b75df6bd8506e4aa3da357fd0c0ab1 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110269v2: 601b2ef606e4b83d5518aa6a5011bb2b1c5954d9 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0834078235201230164==--
