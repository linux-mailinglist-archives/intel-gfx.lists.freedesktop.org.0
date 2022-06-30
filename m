Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E43561E84
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 16:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D2A11BC4F;
	Thu, 30 Jun 2022 14:57:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6383511BC4C;
 Thu, 30 Jun 2022 14:57:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58A56A7DFF;
 Thu, 30 Jun 2022 14:57:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3882806181195334554=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 30 Jun 2022 14:57:38 -0000
Message-ID: <165660105831.26515.14104960514911048488@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220628191016.3899428-1-lucas.demarchi@intel.com>
In-Reply-To: <20220628191016.3899428-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_iosys-map=3A_Add_per-word_read?=
 =?utf-8?q?_=28rev2=29?=
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

--===============3882806181195334554==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/2] iosys-map: Add per-word read (rev2)
URL   : https://patchwork.freedesktop.org/series/105746/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11823_full -> Patchwork_105746v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105746v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105746v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105746v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  
Known issues
------------

  Here are the changes found in Patchwork_105746v2_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [FAIL][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#4392]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk5/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk5/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk6/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk5/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk8/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk8/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk8/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk9/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk9/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk9/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk9/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk9/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@drm_buddy@all@buddy_alloc_smoke:
    - shard-skl:          [PASS][53] -> [INCOMPLETE][54] ([i915#5800])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl1/igt@drm_buddy@all@buddy_alloc_smoke.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl3/igt@drm_buddy@all@buddy_alloc_smoke.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([i915#658])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb2/igt@feature_discovery@psr2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb8/igt@feature_discovery@psr2.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][57] -> [FAIL][58] ([i915#6268])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][59] ([i915#6310])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl3/igt@gem_ctx_persistence@smoketest.html
    - shard-skl:          [PASS][60] -> [INCOMPLETE][61] ([i915#6310])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl1/igt@gem_ctx_persistence@smoketest.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl10/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@hibernate:
    - shard-glk:          [PASS][62] -> [DMESG-WARN][63] ([i915#118])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk8/igt@gem_eio@hibernate.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk8/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([i915#4525])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][66] -> [FAIL][67] ([i915#2842]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][68] ([i915#2842])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][69] -> [FAIL][70] ([i915#2842])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][71] -> [FAIL][72] ([i915#2842])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#4613])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@gem_lmem_swapping@heavy-multi.html
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#4613])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@gem_lmem_swapping@heavy-multi.html
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#4613])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-glk:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#4613])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271]) +28 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
    - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271]) +46 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3323])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +167 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl1/igt@gen7_exec_parse@basic-allocation.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-iclb:         [PASS][81] -> [INCOMPLETE][82] ([i915#2910] / [i915#5096] / [i915#5420])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb4/igt@i915_pm_rpm@system-suspend-modeset.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb4/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][83] -> [DMESG-WARN][84] ([i915#180]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_3d:
    - shard-skl:          [PASS][85] -> [DMESG-WARN][86] ([i915#1982])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl7/igt@kms_3d.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl4/igt@kms_3d.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([fdo#111614])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglb:         [PASS][88] -> [FAIL][89] ([i915#3743])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][90] ([i915#3743]) +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3886]) +9 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3886]) +9 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#3886]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271]) +113 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl3/igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@vga-hpd:
    - shard-glk:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([fdo#109284] / [fdo#111827])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-gamma:
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@kms_color_chamelium@pipe-a-gamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][100] ([i915#1319])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
    - shard-apl:          [PASS][101] -> [DMESG-WARN][102] ([i915#180]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-apl2/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:
    - shard-iclb:         [PASS][103] -> [FAIL][104] ([i915#5072])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb1/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-tglb:         [PASS][105] -> [FAIL][106] ([i915#2346])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [PASS][107] -> [FAIL][108] ([i915#2346])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          NOTRUN -> [FAIL][109] ([i915#4767])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#2122])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [PASS][112] -> [FAIL][113] ([i915#79])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-iclb:         [PASS][114] -> [SKIP][115] ([i915#3701])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-glk:          [PASS][116] -> [FAIL][117] ([i915#1888] / [i915#2546])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][118] ([i915#180])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([fdo#109280] / [fdo#111825])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-kbl:          [PASS][120] -> [FAIL][121] ([i915#1188])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][122] ([fdo#108145] / [i915#265])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
    - shard-skl:          NOTRUN -> [FAIL][123] ([fdo#108145] / [i915#265]) +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
    - shard-apl:          NOTRUN -> [FAIL][124] ([fdo#108145] / [i915#265])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling:
    - shard-snb:          NOTRUN -> [SKIP][125] ([fdo#109271])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-snb6/igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][126] -> [SKIP][127] ([i915#5235]) +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb8/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [PASS][128] -> [SKIP][129] ([fdo#109642] / [fdo#111068] / [i915#658])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-kbl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#658])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@kms_psr2_su@page_flip-nv12.html
    - shard-skl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#658])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@kms_psr2_su@page_flip-nv12.html
    - shard-apl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#658])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][133] -> [SKIP][134] ([fdo#109441]) +3 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@nouveau_crc@pipe-a-source-rg:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#2530])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@nouveau_crc@pipe-a-source-rg.html

  * igt@perf@polling-small-buf:
    - shard-skl:          NOTRUN -> [FAIL][136] ([i915#1722])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@perf@polling-small-buf.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#2994])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@sysfs_clients@recycle-many.html
    - shard-skl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#2994])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-25:
    - shard-kbl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#2994]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - {shard-rkl}:        [SKIP][140] ([i915#658]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@feature_discovery@psr2.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@feature_discovery@psr2.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][142] ([i915#6268]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
    - {shard-tglu}:       [FAIL][144] ([i915#6268]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-apl:          [DMESG-WARN][146] ([i915#180]) -> [PASS][147] +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html
    - shard-kbl:          [DMESG-WARN][148] ([i915#180]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@hostile:
    - {shard-tglu}:       [FAIL][150] ([i915#2410]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglu-3/igt@gem_ctx_persistence@hostile.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglu-3/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_persistence@legacy-engines-hang@bsd1:
    - {shard-dg1}:        [FAIL][152] ([i915#4883]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-dg1-17/igt@gem_ctx_persistence@legacy-engines-hang@bsd1.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-dg1-19/igt@gem_ctx_persistence@legacy-engines-hang@bsd1.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - {shard-tglu}:       [TIMEOUT][154] ([i915#3063]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglu-5/igt@gem_eio@in-flight-contexts-10ms.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglu-4/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][156] ([i915#4525]) -> [PASS][157] +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][158] ([i915#2842]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][160] ([i915#2842]) -> [PASS][161] +2 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_parallel@fds@bcs0:
    - shard-kbl:          [INCOMPLETE][162] ([i915#6310]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl6/igt@gem_exec_parallel@fds@bcs0.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@gem_exec_parallel@fds@bcs0.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - {shard-rkl}:        [SKIP][164] ([i915#3281]) -> [PASS][165] +8 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_schedule@semaphore-power:
    - {shard-rkl}:        [SKIP][166] ([fdo#110254]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-glk:          [DMESG-WARN][168] ([i915#118]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk5/igt@gem_exec_whisper@basic-fds-forked-all.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk8/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - {shard-rkl}:        [SKIP][170] ([i915#3282]) -> [PASS][171] +7 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_softpin@evict-single-offset:
    - {shard-rkl}:        [FAIL][172] ([i915#4171]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@gem_softpin@evict-single-offset.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-2/igt@gem_softpin@evict-single-offset.html

  * igt@gem_workarounds@suspend-resume-context:
    - {shard-rkl}:        [FAIL][174] ([fdo#103375]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@gem_workarounds@suspend-resume-context.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-kbl:          [DMESG-WARN][176] ([i915#5566] / [i915#716]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl3/igt@gen9_exec_parse@allowed-single.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@shadow-peek:
    - {shard-rkl}:        [SKIP][178] ([i915#2527]) -> [PASS][179] +3 similar issues
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_rpm@i2c:
    - {shard-rkl}:        [SKIP][180] ([fdo#109308]) -> [PASS][181]
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@i915_pm_rpm@i2c.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@i915_pm_rpm@i2c.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [DMESG-WARN][182] ([i915#5591]) -> [PASS][183]
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb5/igt@i915_selftest@live@hangcheck.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb7/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [INCOMPLETE][184] ([i915#4939]) -> [PASS][185]
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-apl7/igt@i915_suspend@sysfs-reader.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-tglb:         [FAIL][186] ([i915#3743]) -> [PASS][187] +2 similar issues
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - {shard-rkl}:        [SKIP][188] ([i915#1845] / [i915#4098]) -> [PASS][189] +26 similar issues
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - {shard-rkl}:        [SKIP][190] ([i915#1149] / [i915#1849] / [i915#4098]) -> [PASS][191] +1 similar issue
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:
    - {shard-rkl}:        [SKIP][192] ([i915#4070]) -> [PASS][193] +1 similar issue
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][194] ([i915#72]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_dp_aux_dev:
    - {shard-rkl}:        [SKIP][196] ([i915#1257]) -> [PASS][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_dp_aux_dev.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled:
    - {shard-rkl}:        [SKIP][198] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][199] +10 similar issues
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][200] ([i915#2122]) -> [PASS][201]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-skl:          [FAIL][202] ([i915#1888] / [i915#2122]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][204] ([i915#79]) -> [PASS][205] +1 similar issue
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-tglb:         [FAIL][206] ([i915#79]) -> [PASS][207]
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [FAIL][208] ([i915#2122]) -> [PASS][209]
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [FAIL][210] ([i915#4911]) -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - {shard-rkl}:        [SKIP][212] ([i915#1849] / [i915#4098]) -> [PASS][213] +34 similar issues
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_plane@pixel-format@pipe-a-planes:
    - {shard-rkl}:        [SKIP][214] ([i915#3558]) -> [PASS][215] +1 similar issue
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_plane@pixel-format@pipe-a-planes.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid:
    - {shard-rkl}:        [SKIP][216] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-iclb:         [SKIP][218] ([i915#5176]) -> [PASS][219] +4 similar issues
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_properties@crtc-properties-legacy:
    - {shard-rkl}:        [SKIP][220] ([i915#1849]) -> [PASS][221] +2 similar issues
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-iclb:         [SKIP][222] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb8/igt@kms_psr2_su@page_flip-xrgb8888.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@primary_mmap_gtt:
    - {shard-rkl}:        [SKIP][224] ([i915#1072]) -> [PASS][225] +1 similar issue
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@kms_psr@primary_mmap_gtt.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [SKIP][226] ([fdo#109441]) -> [PASS][227] +2 similar issues
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb8/igt@kms_psr@psr2_primary_render.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@kms_psr@psr2_primary_render.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][228] ([fdo#109289]) -> [PASS][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-2/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-skl:          [DMESG-FAIL][230] ([i915#6310]) -> [PASS][231]
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl10/igt@prime_mmap_coherency@ioctl-errors.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@prime_vgem@basic-write:
    - {shard-rkl}:        [SKIP][232] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][233]
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@prime_vgem@basic-write.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@prime_vgem@basic-write.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [FAIL][234] ([i915#6117]) -> [SKIP][235] ([i915#4525])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglb:         [FAIL][236] ([i915#2842]) -> [SKIP][237] ([i915#2848])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglb:         [SKIP][238] ([i915#2848]) -> [FAIL][239] ([i915#2842])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb1/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb7/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][240] ([i915#588]) -> [SKIP][241] ([i915#658])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [DMESG-WARN][242] ([i915#180]) -> [DMESG-WARN][243] ([i915#165]) +1 similar issue
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][244] ([fdo#111068] / [i915#658]) -> [SKIP][245] ([i915#2920])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][246] ([i915#2920]) -> [SKIP][247] ([i915#658])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][248], [FAIL][249], [FAIL][250], [FAIL][251], [FAIL][252]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][253], [FAIL][254], [FAIL][255]) ([i915#3002] / [i915#4312] / [i915#5257])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl10/igt@runner@aborted.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl3/igt@runner@aborted.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl9/igt@runner@aborted.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl7/igt@runner@aborted.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl5/igt@runner@aborted.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl10/igt@runner@aborted.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl1/igt@runner@aborted.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl1/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][256], [FAIL][257], [FAIL][258], [FAIL][259], [FAIL][260], [FAIL][261], [FAIL][262], [FAIL][263], [FAIL][264]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#716]) -> ([FAIL][265], [FAIL][266], [FAIL][267], [FAIL][268], [FAIL][269], [FAIL][270], [FAIL][271], [FAIL][272], [FAIL][273]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl1/igt@runner@aborted.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl6/igt@runner@aborted.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl6/igt@runner@aborted.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl1/igt@runner@aborted.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl6/igt@runner@aborted.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl3/igt@runner@aborted.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl4/igt@runner@aborted.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl1/igt@runner@aborted.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl4/igt@runner@aborted.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl1/igt@runner@aborted.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@runner@aborted.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl6/igt@runner@aborted.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl1/igt@runner@aborted.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl6/igt@runner@aborted.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl6/igt@runner@aborted.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl1/igt@runner@aborted.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl1/igt@runner@aborted.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl3/igt@runner@aborted.html

  

### Piglit changes ###

#### Issues hit ####

  * spec@!opengl 1.1@teximage-colors gl_rgba32f:
    - pig-skl-6260u:      NOTRUN -> [INCOMPLETE][274] ([i915#6322])
   [274]: None

  * spec@glsl-1.10@execution@variable-indexing@vs-varying-mat2-rd:
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][275] ([i915#6322])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/pig-glk-j5005/spec@glsl-1.10@execution@variable-indexing@vs-varying-mat2-rd.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2848]: https://gitlab.freedesktop.org/drm/intel/issues/2848
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2910]: https://gitlab.freedesktop.org/drm/intel/issues/2910
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5096]: https://gitlab.freedesktop.org/drm/intel/issues/5096
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5420]: https://gitlab.freedesktop.org/drm/intel/issues/5420
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5800]: https://gitlab.freedesktop.org/drm/intel/issues/5800
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6310]: https://gitlab.freedesktop.org/drm/intel/issues/6310
  [i915#6322]: https://gitlab.freedesktop.org/drm/intel/issues/6322
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11823 -> Patchwork_105746v2

  CI-20190529: 20190529
  CI_DRM_11823: 1b87a9522ba4fd2f67837df06e1f7e6d8d23e21a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6549: 9b9371c8da32533022ad700a7c023b4c3a085fbc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105746v2: 1b87a9522ba4fd2f67837df06e1f7e6d8d23e21a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/index.html

--===============3882806181195334554==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/2] iosys-map: Add=
 per-word read (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/105746/">https://patchwork.freedesktop.org/series/105746/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105746v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11823_full -&gt; Patchwork_105746v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105746v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_105746v2_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
105746v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:<u=
l>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-trans=
itions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_105746v2/shard-tglb1/igt@kms_cursor_legacy@flip=
-vs-cursor@atomic-transitions-varying-size.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105746v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11823/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk5/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk6/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11823/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11823/shard-glk6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11823/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk8/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11823/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11823/shard-glk8/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823=
/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11823/shard-glk9/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk9/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-gl=
k9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1823/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11823/shard-glk2/boot.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11823/shard-glk1/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4392">i915#4392</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105746v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-g=
lk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105746v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v=
2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105746v2/shard-glk3/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105746v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105746v2/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105746v2/shard-glk5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105746v2/shard-glk6/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk7/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105746v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_105746v2/shard-glk7/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk=
8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105746v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk8/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_105746v2/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk9/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_buddy@all@buddy_alloc_smoke:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-skl1/igt@drm_buddy@all@buddy_alloc_smoke.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746=
v2/shard-skl3/igt@drm_buddy@all@buddy_alloc_smoke.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5800">i915#5800</a>=
)</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard=
-iclb8/igt@feature_discovery@psr2.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746=
v2/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v2/shard-kbl3/igt@gem_ctx_persistence@smoketes=
t.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6310">i915#6310</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11823/shard-skl1/igt@gem_ctx_persistence@smoketest.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/=
shard-skl10/igt@gem_ctx_persistence@smoketest.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6310">i915#6310</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-glk8/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk8/=
igt@gem_eio@hibernate.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105746v2/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05746v2/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@gem_exec_fair@basic-none-so=
lo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1057=
46v2/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5746v2/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@gem_lmem_swapping@heavy-mult=
i.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@gem_lmem_swapping@heavy-mult=
i.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@gem_lmem_swapping@heavy-mult=
i.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-glk1/igt@gem_lmem_swapping@smem-oom.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@gem_pxp@reject-modify-conte=
xt-protection-off-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a>) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-glk1/igt@gem_render_copy@y-tiled-ccs=
-to-yf-tiled-mc-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a>) +46 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-skl7/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-skl1/igt@gen7_exec_parse@basic-alloc=
ation.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a>) +167 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb4/igt@i915_pm_rpm@system-suspend-modeset.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5746v2/shard-iclb4/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2910">i915#=
2910</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5096"=
>i915#5096</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5420">i915#5420</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
746v2/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_3d:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-skl7/igt@kms_3d.html">PASS</a> -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl4/igt@kms_3d.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@kms_big_fb@linear-16bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-tglb3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate=
-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-=
stride-64bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@kms_ccs@pipe-a-ccs-on-anoth=
er-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +9 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@kms_ccs@pipe-b-random-ccs-d=
ata-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_ccs@pipe-c-crc-primary-=
rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-kbl3/igt@kms_ccs@pipe-c-random-ccs-d=
ata-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +113 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_chamelium@dp-crc-multip=
le.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-glk1/igt@kms_chamelium@vga-hpd.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@kms_color_chamelium@pipe-a=
-ctm-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-gamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@kms_color_chamelium@pipe-a-=
gamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@kms_color_chamelium@pipe-b-=
ctm-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@kms_content_protection@lic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-apl2/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105746v2/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb1/igt@kms_cursor_legacy@cursor-vs-flip@atomic-trans=
itions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_105746v2/shard-iclb7/igt@kms_cursor_legacy@curs=
or-vs-flip@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5072">i915#5072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105746v2/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor@at=
omic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_105746v2/shard-glk2/igt@kms_cursor_legacy@flip-v=
s-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@=
ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_105746v2/shard-glk9/igt@kms_flip@2x-plain-flip-t=
s-check-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105746v2/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@b-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-64bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-glk1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-i=
ndfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_105746v2/shard-glk6/igt@kms_frontbuffer_tracking=
@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_frontbuffer_tracking@fb=
c-suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105746v2/shard-kbl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#=
1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a=
-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/265">i915#265</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@kms_plane_alpha_blend@pipe-a=
-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/265">i915#265</a>) +2 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_plane_alpha_blend@pipe-a=
-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/265">i915#265</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-snb6/igt@kms_plane_scaling@plane-sca=
ler-with-rotation-unity-scaling.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb8/igt@kms_plane_scaling@planes-downscale-factor-0-5=
@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@kms_plane_scaling@planes-dow=
nscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1057=
46v2/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a>=
 / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#11=
1068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">=
i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@kms_psr2_su@page_flip-nv12.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@kms_psr2_su@page_flip-nv12.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_psr2_su@page_flip-nv12.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2=
/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-rg:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@nouveau_crc@pipe-a-source-=
rg.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@perf@polling-small-buf.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722=
">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@sysfs_clients@recycle-many.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2994">i915#2994</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@sysfs_clients@recycle-many.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2994">i915#2994</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@sysfs_clients@split-25.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-1/igt@feature_discovery@psr2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/s=
hard-rkl-6/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11823/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05746v2/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11823/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105746v2/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11823/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105746v2/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vecs0.=
html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11823/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105746v2/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.=
html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-tglu-3/igt@gem_ctx_persistence@hostile.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#2410<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5746v2/shard-tglu-3/igt@gem_ctx_persistence@hostile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@bsd1:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-dg1-17/igt@gem_ctx_persistence@legacy-engines-hang@bsd1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4883">i915#4883</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105746v2/shard-dg1-19/igt@gem_ctx_persistence@legacy-engines=
-hang@bsd1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-tglu-5/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOU=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i91=
5#3063</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105746v2/shard-tglu-4/igt@gem_eio@in-flight-contexts-10ms.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i9=
15#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105746v2/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05746v2/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105746v2/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a=
> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@fds@bcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-kbl6/igt@gem_exec_parallel@fds@bcs0.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6310">i915#63=
10</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105746v2/shard-kbl4/igt@gem_exec_parallel@fds@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i9=
15#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105746v2/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">P=
ASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110254">fdo#=
110254</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105746v2/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-glk5/igt@gem_exec_whisper@basic-fds-forked-all.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/11=
8">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105746v2/shard-glk8/igt@gem_exec_whisper@basic-fds-forked-all.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-u=
ncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@gem_partial_pwrite_pread@wri=
tes-after-reads-uncached.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-5/igt@gem_softpin@evict-single-offset.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#41=
71</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105746v2/shard-rkl-2/igt@gem_softpin@evict-single-offset.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-5/igt@gem_workarounds@suspend-resume-context.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375"=
>fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105746v2/shard-rkl-5/igt@gem_workarounds@suspend-resume-context.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-kbl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105746v2/shard-kbl4/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
746v2/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html">PASS</a> +3 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-5/igt@i915_pm_rpm@i2c.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shar=
d-rkl-6/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-tglb5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915=
#5591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105746v2/shard-tglb7/igt@i915_selftest@live@hangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-apl7/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#493=
9</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105746v2/shard-apl2/igt@i915_suspend@sysfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate=
-180-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@kms_big_fb@x-t=
iled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a> +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-1/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_big_fb@y-tiled-addfb-size=
-offset-overflow.html">PASS</a> +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-5/igt@kms_color@pipe-a-ctm-blue-to-red.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1=
149</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_105746v2/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-red.htm=
l">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-1/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
0">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105746v2/shard-rkl-5/igt@kms_color@pipe-c-invalid-ctm-matrix-siz=
es.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legac=
y.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/72">i915#72</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105746v2/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-curso=
r-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-1/igt@kms_dp_aux_dev.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1257">i915#1257</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-r=
kl-6/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtil=
ed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_draw_crc@draw-=
method-xrgb8888-pwrite-xtiled.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-=
hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105746v2/shard-glk3/igt@kms_flip@2x-flip-vs-expired-v=
blank@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-skl6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/188=
8">i915#1888</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105746v2/shard-skl6/igt@kms_flip@flip-vs-absolute-wf_vblan=
k@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105746v2/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105746v2/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@a-e=
dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105746v2/shard-skl7/igt@kms_flip@plain-flip-ts-check-inte=
rruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-=
ytile-upscaling.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4911">i915#4911</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105746v2/shard-glk3/igt@kms_flip_scaled_crc@f=
lip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-dra=
w-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_frontbuffer_trac=
king@fbcpsr-rgb101010-draw-mmap-wc.html">PASS</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-1/igt@kms_plane@pixel-format@pipe-a-planes.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3558">i9=
15#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105746v2/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-m=
id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_plane_alpha_blend=
@pipe-b-constant-alpha-mid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-pixel-formats@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb8/igt@=
kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-=
edp-1.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i=
915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105746v2/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html"=
>PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb8/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109=
642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068"=
>fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_105746v2/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-5/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746=
v2/shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb8/igt@kms_psr@psr2_primary_render.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05746v2/shard-iclb2/igt@kms_psr@psr2_primary_render.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105746v2/shard-rkl-2/igt@perf@gen12-unprivileged-single-ctx-=
counters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@ioctl-errors:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-skl10/igt@prime_mmap_coherency@ioctl-errors.html">DMESG=
-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6310"=
>i915#6310</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105746v2/shard-skl9/igt@prime_mmap_coherency@ioctl-errors.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-rkl-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#329=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i9=
15#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105746v2/shard-rkl-5/igt@prime_vgem@basic-write.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105746v2/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-tglb7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105746v2/shard-tglb1/igt@gem_exec_fair@basic-none-solo@rcs0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2848">i915#=
2848</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-tglb1/igt@gem_exec_fair@basic-none-vip@rcs0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2848">i915#=
2848</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105746v2/shard-tglb7/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05746v2/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105746v2/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i915#1=
65</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-=
update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105746v2/shard-iclb8/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11823/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11823/shard-skl5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5746v2/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105746v2/shard-skl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257=
</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11823/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11823/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl1/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11823/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl3/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1823/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl1/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1182=
3/shard-kbl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#7=
16</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105746v2/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105746v2/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl1/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105746v2/shard-kbl6/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/sh=
ard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl1/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5746v2/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl3/igt@runner@abor=
ted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>spec@!opengl 1.1@teximage-colors gl_rgba32f:</p>
<ul>
<li>pig-skl-6260u:      NOTRUN -&gt; <a href=3D"None">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6322">i915#6322</a>)<=
/li>
</ul>
</li>
<li>
<p>spec@glsl-1.10@execution@variable-indexing@vs-varying-mat2-rd:</p>
<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v2/pig-glk-j5005/spec@glsl-1.10@execution@var=
iable-indexing@vs-varying-mat2-rd.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/6322">i915#6322</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11823 -&gt; Patchwork_105746v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11823: 1b87a9522ba4fd2f67837df06e1f7e6d8d23e21a @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6549: 9b9371c8da32533022ad700a7c023b4c3a085fbc @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105746v2: 1b87a9522ba4fd2f67837df06e1f7e6d8d23e21a @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3882806181195334554==--
