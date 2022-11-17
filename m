Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7E462D85F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 11:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CEF710E543;
	Thu, 17 Nov 2022 10:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D583F10E541;
 Thu, 17 Nov 2022 10:49:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CEACBA00E6;
 Thu, 17 Nov 2022 10:49:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3101434082057990416=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 17 Nov 2022 10:49:08 -0000
Message-ID: <166868214880.12185.16343840138272339049@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Finish_=28de=29gamma_readout_=28rev9=29?=
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

--===============3101434082057990416==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Finish (de)gamma readout (rev9)
URL   : https://patchwork.freedesktop.org/series/79614/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12390_full -> Patchwork_79614v9_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_79614v9_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_79614v9_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_79614v9_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@syncobj-invalid-flags:
    - shard-skl:          [PASS][1] -> [WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl7/igt@gem_exec_fence@syncobj-invalid-flags.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl9/igt@gem_exec_fence@syncobj-invalid-flags.html

  
Known issues
------------

  Here are the changes found in Patchwork_79614v9_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [FAIL][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45]) ([i915#5032])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl10/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl10/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl10/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl5/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl5/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl10/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl10/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-2x:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#1839])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@feature_discovery@display-2x.html

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][47] ([i915#4991])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl1/igt@gem_create@create-massive.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][48] -> [SKIP][49] ([i915#4525])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +141 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#4613]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl2/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][52] ([i915#3318])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109289]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][54] -> [DMESG-WARN][55] ([i915#5566] / [i915#716])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-apl7/igt@gen9_exec_parse@allowed-single.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-apl7/igt@gen9_exec_parse@allowed-single.html
    - shard-glk:          [PASS][56] -> [DMESG-WARN][57] ([i915#5566] / [i915#716])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-glk3/igt@gen9_exec_parse@allowed-single.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-glk2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@load:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#6227])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl1/igt@i915_module_load@load.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         NOTRUN -> [FAIL][59] ([i915#3989] / [i915#454])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          NOTRUN -> [WARN][60] ([i915#1804])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          [PASS][61] -> [DMESG-WARN][62] ([i915#1982])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#111615])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([i915#2705])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#3886]) +9 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl9/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([fdo#111615] / [i915#3689])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_ccs@pipe-b-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([i915#3689]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_color_chamelium@ctm-limited-range:
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl2/igt@kms_color_chamelium@ctm-limited-range.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#3555])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions:
    - shard-iclb:         [PASS][71] -> [FAIL][72] ([i915#5072])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-iclb3/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [PASS][73] -> [FAIL][74] ([i915#2346]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@toggle:
    - shard-skl:          [PASS][75] -> [FAIL][76] ([i915#2346])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#109274])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-tglb:         NOTRUN -> [FAIL][78] ([i915#4767])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][79] -> [INCOMPLETE][80] ([i915#1982])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl2/igt@kms_fbcon_fbt@psr-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][81] ([i915#79])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][82] -> [DMESG-WARN][83] ([i915#180])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#2587] / [i915#2672])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#2587] / [i915#2672]) +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#2672]) +5 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([i915#2672] / [i915#3555])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-glk:          [PASS][89] -> [FAIL][90] ([i915#2546])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-glk3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-glk2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#6497]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@constant-alpha-min@pipe-c-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][92] ([i915#4573]) +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl1/igt@kms_plane_alpha_blend@constant-alpha-min@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][93] -> [SKIP][94] ([i915#5235]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-iclb6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#658]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl1/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([i915#2920])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-tglb:         NOTRUN -> [FAIL][97] ([i915#132] / [i915#3467])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2994]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl6/igt@sysfs_clients@fair-3.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][99] ([i915#4525]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-iclb5/igt@gem_exec_balancer@parallel-out-fence.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][101] ([i915#2842]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][103] ([i915#4281]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rps@engine-order:
    - shard-tglb:         [FAIL][105] ([i915#6537]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-tglb8/igt@i915_pm_rps@engine-order.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@i915_pm_rps@engine-order.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs:
    - shard-tglb:         [INCOMPLETE][107] ([i915#6453]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-tglb8/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:
    - shard-skl:          [INCOMPLETE][109] ([i915#6951]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl9/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl7/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][111] ([i915#2122]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:
    - shard-skl:          [INCOMPLETE][113] -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl3/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl9/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][115] ([fdo#109441]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-iclb6/igt@kms_psr@psr2_sprite_plane_onoff.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [SKIP][117] ([i915#5519]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  
#### Warnings ####

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          [INCOMPLETE][119] ([i915#7248]) -> [WARN][120] ([i915#2658])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-glk7/igt@gem_pwrite@basic-exhaustion.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-glk8/igt@gem_pwrite@basic-exhaustion.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
    - shard-apl:          [FAIL][121] ([i915#4573]) -> [DMESG-FAIL][122] ([IGT#6]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-apl1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-apl8/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][123] ([i915#2920]) -> [SKIP][124] ([i915#658])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][125] ([fdo#111068] / [i915#658]) -> [SKIP][126] ([i915#2920])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][127] ([i915#2920]) -> [SKIP][128] ([fdo#111068] / [i915#658])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][129] ([i915#658]) -> [SKIP][130] ([i915#2920])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][131], [FAIL][132]) ([i915#3002] / [i915#4312]) -> ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-apl2/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-apl7/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-apl2/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-apl1/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-apl3/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-apl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6453]: https://gitlab.freedesktop.org/drm/intel/issues/6453
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6951]: https://gitlab.freedesktop.org/drm/intel/issues/6951
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12390 -> Patchwork_79614v9

  CI-20190529: 20190529
  CI_DRM_12390: b7288a4715c68710aadbd63112b699356e8a2b65 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7062: 6539ea5fe17fce683133c45f07fac316593ee1f7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_79614v9: b7288a4715c68710aadbd63112b699356e8a2b65 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/index.html

--===============3101434082057990416==
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
<tr><td><b>Series:</b></td><td>drm/i915: Finish (de)gamma readout (rev9)</t=
d></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/79614/">https://patchwork.freedesktop.org/series/79614/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v9/index.html">https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_79614v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12390_full -&gt; Patchwork_79614v9=
_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_79614v9_full absolutely ne=
ed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_79614v9_full, please notify your bug team to allo=
w them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
79614v9_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_fence@syncobj-invalid-flags:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-skl7/igt@gem_exec_fence@syncobj-invalid-flags.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7=
9614v9/shard-skl9/igt@gem_exec_fence@syncobj-invalid-flags.html">WARN</a></=
li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_79614v9_full that come from know=
n issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12390/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12390/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12390/shard-skl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/sha=
rd-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12390/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl5/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12390/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12390/shard-skl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390=
/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12390/shard-skl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-sk=
l1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-skl10/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12390/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_12390/shard-skl10/boot.html">PASS</a>) -&gt; (<a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_79614v9/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl7/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard=
-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v9/shard-skl6/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9=
/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_79614v9/shard-skl5/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl5/boot.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7=
9614v9/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_79614v9/shard-skl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_79614v9/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl2/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-=
skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_79614v9/shard-skl1/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl1/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/=
shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_79614v9/shard-skl10/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-skl10/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
79614v9/shard-skl10/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5032">i915#5032</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-2x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@feature_discovery@display-2=
x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-skl1/igt@gem_create@create-massive.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_79614v9/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">=
i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-skl7/igt@gem_exec_fair@basic-pace@vec=
s0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +141 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-skl2/igt@gem_lmem_swapping@random-eng=
ines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-skl2/igt@gem_userptr_blits@vma-merge.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@gen7_exec_parse@chained-bat=
ch.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12390/shard-apl7/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/=
shard-apl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>=
)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12390/shard-glk3/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/=
shard-glk2/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>=
)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-skl1/igt@i915_module_load@load.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3989">i=
915#3989</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
54">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-skl4/igt@i915_pm_rc6_residency@rc6-id=
le@vcs0.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1804">i915#1804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-=
180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v9/shard-skl5/igt@kms_big_fb@x-tiled-max-hw-str=
ide-64bpp-rotate-180-async-flip.html">DMESG-WARN</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-=
stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_big_joiner@invalid-mode=
set.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-skl9/igt@kms_ccs@pipe-a-bad-pixel-for=
mat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_ccs@pipe-b-bad-aux-stri=
de-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_ccs@pipe-c-random-ccs-d=
ata-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3689">i915#3689</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_chamelium@dp-hpd-storm-=
disable.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-limited-range:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-skl2/igt@kms_color_chamelium@ctm-limi=
ted-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_cursor_crc@cursor-rapid=
-movement-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-iclb3/igt@kms_cursor_legacy@cursor-vs-flip@atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_79614v9/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@ato=
mic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5072">i915#5072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_79614v9/shard-glk7/igt@kms_cursor_legacy@flip-vs=
-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_79614v9/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i915=
#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_display_modes@extended-=
mode-basic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_fbcon_fbt@fbc.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i91=
5#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-skl2/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shar=
d-skl6/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-skl2/igt@kms_flip@flip-vs-expired-vbl=
ank@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_79614v9/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_flip_scaled_crc@flip-64=
bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-iclb7/igt@kms_flip_scaled_crc@flip-64=
bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-iclb3/igt@kms_flip_scaled_crc@flip-64=
bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-iclb5/igt@kms_flip_scaled_crc@flip-64=
bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_frontbuffer_tracking@fb=
c-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-glk3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrit=
e.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_79614v9/shard-glk2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-p=
write.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_frontbuffer_tracking@fb=
cpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/6497">i915#6497</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-skl1/igt@kms_plane_alpha_blend@consta=
nt-alpha-min@pipe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-iclb6/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-iclb2/igt@kms_plane_scali=
ng@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-skl1/igt@kms_psr2_sf@overlay-plane-mo=
ve-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_psr@psr2_sprite_plane_o=
noff.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3467">i915#3467</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v9/shard-skl6/igt@sysfs_clients@fair-3.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-iclb5/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i9=
15#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_79614v9/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_79614v9/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/s=
hard-iclb7/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-tglb8/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/6537">i915#6537</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v=
9/shard-tglb5/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-tglb8/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_=
rc_ccs.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/6453">i915#6453</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_79614v9/shard-tglb5/igt@kms_ccs@pipe-a-bad-rotat=
ion-90-y_tiled_gen12_rc_ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-skl9/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6951">i915#6951</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_79614v9/shard-skl7/igt@kms_cursor_crc@cursor-suspend@pipe-=
c-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i=
915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_79614v9/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-skl3/igt@kms_plane@pixel-format-source-clamping@pipe-a-=
planes.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_79614v9/shard-skl9/igt@kms_plane@pixel-format-source-c=
lamping@pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-iclb6/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10=
9441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_79614v9/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_79614v9/shard-iclb1/igt@kms_psr_stress_test@flip-prima=
ry-invalidate-overlay.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-glk7/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7=
248</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_79614v9/shard-glk8/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-apl1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4573">i915#4573</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v9/shard-apl8/igt@kms_plane_alpha_blend@alpha-basic@pipe=
-c-dp-1.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/igt-gpu-tools/issues/6">IGT#6</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_79614v9/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move=
-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_79614v9/shard-iclb2/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v9/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-d=
mg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12390/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_79614v9/shard-iclb2/igt@kms_psr2_sf@primary-plane-update=
-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12390/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/shard-apl7/igt@runner@ab=
orted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_79614v9/shard-apl2/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v=
9/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_79614v9/shard-apl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_79614v9/shard-apl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12390 -&gt; Patchwork_79614v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12390: b7288a4715c68710aadbd63112b699356e8a2b65 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7062: 6539ea5fe17fce683133c45f07fac316593ee1f7 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_79614v9: b7288a4715c68710aadbd63112b699356e8a2b65 @ git://anong=
it.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3101434082057990416==--
