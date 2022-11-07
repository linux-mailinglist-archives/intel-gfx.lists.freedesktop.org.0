Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C0961EB2F
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 07:50:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354D010E1EE;
	Mon,  7 Nov 2022 06:50:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95D5F10E0C8;
 Mon,  7 Nov 2022 06:50:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 306D2AA01E;
 Mon,  7 Nov 2022 06:50:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0540613419476956427=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Riana Tauro" <riana.tauro@intel.com>
Date: Mon, 07 Nov 2022 06:50:47 -0000
Message-ID: <166780384716.17761.5777696685080527958@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221107045240.4164358-1-riana.tauro@intel.com>
In-Reply-To: <20221107045240.4164358-1-riana.tauro@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_hwmon_support_for_dgfx_selftests_=28rev2=29?=
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

--===============0540613419476956427==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add hwmon support for dgfx selftests (rev2)
URL   : https://patchwork.freedesktop.org/series/109850/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12347_full -> Patchwork_109850v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109850v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109850v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109850v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@mman:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb7/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@i915_selftest@live@mman.html

  * igt@kms_atomic_transition@modeset-transition@1x-outputs:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-tglb2/igt@kms_atomic_transition@modeset-transition@1x-outputs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-tglb8/igt@kms_atomic_transition@modeset-transition@1x-outputs.html

  
Known issues
------------

  Here are the changes found in Patchwork_109850v2_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([FAIL][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) ([i915#4392]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk9/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk9/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk9/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk8/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk8/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk5/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk9/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk9/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([i915#5327])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][56] ([i915#4991])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@gem_create@create-massive.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][57] ([i915#4991])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl4/igt@gem_create@create-massive.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][58] ([i915#2846])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#2846])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/igt@gem_exec_fair@basic-deadline.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk8/igt@gem_exec_fair@basic-deadline.html
    - shard-skl:          NOTRUN -> [FAIL][61] ([i915#2846])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][62] -> [FAIL][63] ([i915#2842])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][64] ([i915#2842])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][65] ([i915#2842])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [PASS][66] -> [FAIL][67] ([i915#2842])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk3/igt@gem_exec_fair@basic-none@vecs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][68] -> [FAIL][69] ([i915#2842])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2190])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#4613]) +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl7/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#4613])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-glk:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#4613])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +64 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl2/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#768])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][76] -> [DMESG-WARN][77] ([i915#180])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271]) +222 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl6/igt@gem_userptr_blits@unsync-overlap.html
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#3297])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen3_mixed_blits:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109289]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#2856])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][82] ([i915#3989] / [i915#454]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][83] ([i915#1886])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl10/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@perf:
    - shard-tglb:         [PASS][84] -> [DMESG-WARN][85] ([i915#2867])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-tglb5/igt@i915_selftest@live@perf.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-tglb3/igt@i915_selftest@live@perf.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#5286]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3886]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109278]) +4 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3886]) +11 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl10/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3886]) +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109278] / [i915#3886]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-after-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109284] / [fdo#111827])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_chamelium@dp-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl7/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl4/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-hpd:
    - shard-glk:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@ctm-0-25@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [FAIL][96] ([i915#315] / [i915#6946]) +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_color@ctm-0-25@pipe-b-edp-1.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [INCOMPLETE][97] ([i915#7121] / [i915#7173])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl7/igt@kms_content_protection@atomic-dpms@pipe-a-dp-1.html

  * igt@kms_content_protection@lic:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([i915#7118])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([i915#3359])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1:
    - shard-skl:          [PASS][100] -> [INCOMPLETE][101] ([i915#6951])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl7/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.html

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][102] ([i915#5072])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl6/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [PASS][103] -> [FAIL][104] ([i915#2346])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor@legacy:
    - shard-skl:          [PASS][105] -> [FAIL][106] ([i915#2346]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109274]) +5 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][108] -> [FAIL][109] ([i915#2122])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([i915#6375])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][111] ([i915#2587] / [i915#2672]) +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([i915#2672]) +3 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([i915#2672] / [i915#3555])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][114] ([fdo#109271]) +61 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-skl:          [PASS][115] -> [DMESG-WARN][116] ([i915#1982])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([fdo#109280]) +8 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][118] ([i915#3555]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-iclb:         NOTRUN -> [SKIP][119] ([i915#1839])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1:
    - shard-skl:          [PASS][120] -> [INCOMPLETE][121] ([i915#7266])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][122] ([i915#4573]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-dp-1.html

  * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
    - shard-skl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#5776]) +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl4/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][124] -> [SKIP][125] ([i915#5235]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-apl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#658])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#658])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [FAIL][128] ([i915#5939]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@kms_psr2_su@page_flip-nv12@pipe-b-edp-1.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         NOTRUN -> [SKIP][129] ([fdo#109642] / [fdo#111068] / [i915#658])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb3/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#658]) +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][131] -> [SKIP][132] ([fdo#109441]) +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109441])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [PASS][134] -> [SKIP][135] ([i915#5519])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#2437]) +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl4/igt@kms_writeback@writeback-fb-id.html
    - shard-apl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#2437])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@kms_writeback@writeback-fb-id.html

  * igt@sysfs_clients@busy:
    - shard-glk:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#2994]) +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@split-25:
    - shard-skl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#2994]) +4 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl7/igt@sysfs_clients@split-25.html

  * igt@sysfs_clients@split-50:
    - shard-iclb:         NOTRUN -> [SKIP][140] ([i915#2994])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [FAIL][141] ([i915#2842]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
    - shard-glk:          [FAIL][143] ([i915#2842]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-iclb:         [INCOMPLETE][145] ([i915#6453]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb6/igt@gem_exec_whisper@basic-queues-priority.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [DMESG-WARN][147] ([i915#5566] / [i915#716]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][149] ([i915#4281]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [DMESG-WARN][151] ([i915#5591]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-tglb5/igt@i915_selftest@live@hangcheck.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-tglb3/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-apl:          [FAIL][153] ([i915#2346]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
    - shard-glk:          [FAIL][155] ([i915#2346]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
    - shard-iclb:         [FAIL][157] ([i915#2346]) -> [PASS][158] +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@busy-flip@c-edp1:
    - shard-skl:          [FAIL][159] ([i915#7200]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl3/igt@kms_flip@busy-flip@c-edp1.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl9/igt@kms_flip@busy-flip@c-edp1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][161] ([i915#2122]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-skl9/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-apl:          [DMESG-WARN][163] ([i915#180]) -> [PASS][164] +4 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-a-dp-1:
    - shard-apl:          [DMESG-WARN][165] -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl6/igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-a-dp-1.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl7/igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-a-dp-1.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][167] ([fdo#109441]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb8/igt@kms_psr@psr2_primary_mmap_gtt.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [SKIP][169] ([i915#5519]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][171] ([i915#4525]) -> [FAIL][172] ([i915#6117])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_pread@exhaustion:
    - shard-tglb:         [INCOMPLETE][173] ([i915#7248]) -> [WARN][174] ([i915#2658])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-tglb6/igt@gem_pread@exhaustion.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-tglb1/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          [INCOMPLETE][175] ([i915#7248]) -> [WARN][176] ([i915#2658])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl1/igt@gem_pwrite@basic-exhaustion.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl6/igt@gem_pwrite@basic-exhaustion.html
    - shard-glk:          [INCOMPLETE][177] ([i915#7248]) -> [WARN][178] ([i915#2658])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk7/igt@gem_pwrite@basic-exhaustion.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk7/igt@gem_pwrite@basic-exhaustion.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][179] ([i915#658]) -> [SKIP][180] ([i915#2920])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb8/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][181] ([fdo#111068] / [i915#658]) -> [SKIP][182] ([i915#2920])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][183], [FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][188], [FAIL][189], [FAIL][190]) ([i915#180] / [i915#3002] / [i915#4312])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl1/igt@runner@aborted.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl2/igt@runner@aborted.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl8/igt@runner@aborted.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl8/igt@runner@aborted.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl6/igt@runner@aborted.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@runner@aborted.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@runner@aborted.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl6/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5776]: https://gitlab.freedesktop.org/drm/intel/issues/5776
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6375]: https://gitlab.freedesktop.org/drm/intel/issues/6375
  [i915#6453]: https://gitlab.freedesktop.org/drm/intel/issues/6453
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6951]: https://gitlab.freedesktop.org/drm/intel/issues/6951
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7121]: https://gitlab.freedesktop.org/drm/intel/issues/7121
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7200]: https://gitlab.freedesktop.org/drm/intel/issues/7200
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7266]: https://gitlab.freedesktop.org/drm/intel/issues/7266
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768


Build changes
-------------

  * Linux: CI_DRM_12347 -> Patchwork_109850v2

  CI-20190529: 20190529
  CI_DRM_12347: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109850v2: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/index.html

--===============0540613419476956427==
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
<tr><td><b>Series:</b></td><td>Add hwmon support for dgfx selftests (rev2)<=
/td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/109850/">https://patchwork.freedesktop.org/series/109850/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109850v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109850v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12347_full -&gt; Patchwork_109850v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109850v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_109850v2_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
109850v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb7/igt@i915_selftest@live@mman.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shar=
d-iclb2/igt@i915_selftest@live@mman.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition@1x-outputs:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-tglb2/igt@kms_atomic_transition@modeset-transition@1x-o=
utputs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_109850v2/shard-tglb8/igt@kms_atomic_transition@modeset-trans=
ition@1x-outputs.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109850v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12347/shard-glk1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12347/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12347/shard-glk1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/sha=
rd-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12347/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk8/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk8/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12347/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12347/shard-glk7/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12347/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk5/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2347/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12347/shard-glk3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-glk3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12347/shard-glk2/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4392">i915#4392</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109850v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk1/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-g=
lk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109850v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v=
2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109850v2/shard-glk3/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109850v2/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_109850v2/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109850v2/shard-glk6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109850v2/shard-glk7/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk7/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109850v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_109850v2/shard-glk8/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk=
8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_109850v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk8/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_109850v2/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk9/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@gem_ccs@ctrl-surf-copy-new=
-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/5327">i915#5327</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@gem_create@create-massive.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4991">i915#4991</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109850v2/shard-skl4/igt@gem_create@create-massive.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4991">i915#4991</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@gem_exec_fair@basic-deadline=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2846">i915#2846</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-glk6/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/s=
hard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109850v2/shard-skl4/igt@gem_exec_fair@basic-deadline=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2846">i915#2846</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v=
2/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-glk5/igt@gem_exec_fair@basic-none-sh=
are@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@gem_exec_fair@basic-none-s=
olo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-glk3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v=
2/shard-glk1/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109=
850v2/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-skl7/igt@gem_lmem_swapping@heavy-ver=
ify-multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@gem_lmem_swapping@parallel-=
random-engines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@gem_lmem_swapping@smem-oom.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-apl2/igt@gem_render_copy@x-tiled-to-=
vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +64 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@gem_render_copy@yf-tiled-m=
c-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/768">i915#768</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-apl6/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-=
apl3/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109850v2/shard-skl6/igt@gem_userptr_blits@unsync-ove=
rlap.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +222 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@gem_userptr_blits@unsync-ov=
erlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@gen3_mixed_blits.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289">fd=
o#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@gen9_exec_parse@bb-start-p=
aram.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-skl6/igt@i915_pm_dc@dc6-dpms.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3989">i=
915#3989</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
54">i915#454</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-skl10/igt@i915_selftest@live@gt_pm.h=
tml">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-tglb5/igt@i915_selftest@live@perf.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shar=
d-tglb3/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-apl2/igt@kms_ccs@pipe-a-bad-rotation=
-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_ccs@pipe-b-ccs-on-anot=
her-bo-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-skl10/igt@kms_ccs@pipe-b-random-ccs-=
data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +11 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@kms_ccs@pipe-c-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_ccs@pipe-c-crc-sprite-=
planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-after-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_chamelium@dp-hpd-after=
-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-apl7/igt@kms_chamelium@hdmi-edid-rea=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-skl4/igt@kms_chamelium@hdmi-hpd-with=
-enabled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@kms_chamelium@vga-hpd.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_color@ctm-0-25@pipe-b-=
edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/315">i915#315</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/6946">i915#6946</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-apl7/igt@kms_content_protection@atom=
ic-dpms@pipe-a-dp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/7121">i915#7121</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_content_protection@lic=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-skl7/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109850v2/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6951">i915#6951</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-skl6/igt@kms_cursor_legacy@cursor-vs=
-flip@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5072">i915#5072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_109850v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109850v2/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i91=
5#2346</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_flip@2x-flip-vs-dpms-o=
ff-vs-modeset.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109274">fdo#109274</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_109850v2/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@=
ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6375">i915#6=
375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#=
2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672"=
>i915#2672</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +61 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-i=
ndfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_109850v2/shard-skl3/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-pri-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +8 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_hdr@bpc-switch-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp=
-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109850v2/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe=
-c-edp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7266">i915#7266</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-apl7/igt@kms_plane_alpha_blend@alpha=
-basic@pipe-a-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scale=
rs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-skl4/igt@kms_plane_scaling@invalid-n=
um-scalers@pipe-a-edp-1-invalid-num-scalers.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5776">i915#5776</a>) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb8/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@kms_plan=
e_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235=
">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-apl7/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12@pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@kms_psr2_su@page_flip-nv12=
@pipe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5939">i915#5939</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb3/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8=
888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shar=
d-iclb7/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@kms_psr@psr2_primary_page_=
flip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb2/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_109850v2/shard-iclb1/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109850v2/shard-skl4/igt@kms_writeback@writeback-fb-i=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@kms_writeback@writeback-fb-i=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-glk1/igt@sysfs_clients@busy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-skl7/igt@sysfs_clients@split-25.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109850v2/shard-iclb1/igt@sysfs_clients@split-50.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/299=
4">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109850v2/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a>=
</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109850v2/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a>=
</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb6/igt@gem_exec_whisper@basic-queues-priority.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
6453">i915#6453</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_109850v2/shard-iclb1/igt@gem_exec_whisper@basic-queues-priori=
ty.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-glk6/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_109850v2/shard-glk5/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/=
shard-iclb6/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-tglb5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915=
#5591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109850v2/shard-tglb3/igt@i915_selftest@live@hangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@kms_cursor_legacy@f=
lip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_109850v2/shard-glk2/igt@kms_cursor_legacy@f=
lip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-iclb5/igt@kms_cursor_legacy=
@flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a> +1 similar i=
ssue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@busy-flip@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-skl3/igt@kms_flip@busy-flip@c-edp1.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/7200">i915#7200</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109850=
v2/shard-skl9/igt@kms_flip@busy-flip@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_109850v2/shard-skl9/igt@kms_flip@flip-vs-absolute-=
wf_vblank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109850v2/shard-apl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.h=
tml">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-apl6/igt@kms_plane_scaling@plane-upscale-with-modifiers=
-20x20@pipe-a-dp-1.html">DMESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl7/igt@kms_plane_scaling@=
plane-upscale-with-modifiers-20x20@pipe-a-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb8/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109850v2/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109850v2/shard-tglb5/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109850v2/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-tglb6/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1098=
50v2/shard-tglb1/igt@gem_pread@exhaustion.html">WARN</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-apl1/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#72=
48</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109850v2/shard-apl6/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</=
p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12347/shard-glk7/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#72=
48</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109850v2/shard-glk7/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</=
p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb8/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_109850v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12347/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109850v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12347/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl2/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12347/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/shard-apl8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12347/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9850v2/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_109850v2/shard-apl3/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_109850v2/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12347 -&gt; Patchwork_109850v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12347: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109850v2: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0540613419476956427==--
