Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3271621CBE
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 20:13:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14EAF10E4F5;
	Tue,  8 Nov 2022 19:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBEA210E4F5;
 Tue,  8 Nov 2022 19:13:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B514EAADDD;
 Tue,  8 Nov 2022 19:13:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3211651759399085708=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 08 Nov 2022 19:13:09 -0000
Message-ID: <166793478970.2235.5056552239619140103@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221107133027.38740-1-matthew.auld@intel.com>
In-Reply-To: <20221107133027.38740-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_never_purge_busy_objects?=
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

--===============3211651759399085708==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ttm: never purge busy objects
URL   : https://patchwork.freedesktop.org/series/110601/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12351_full -> Patchwork_110601v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110601v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110601v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110601v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rps@engine-order:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-tglb1/igt@i915_pm_rps@engine-order.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-tglb1/igt@i915_pm_rps@engine-order.html

  
Known issues
------------

  Here are the changes found in Patchwork_110601v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [FAIL][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [FAIL][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#4392])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk7/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk3/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk3/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk5/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk9/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk9/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk8/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk8/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([i915#4525])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_endless@dispatch@vcs1:
    - shard-tglb:         [PASS][55] -> [INCOMPLETE][56] ([i915#3778])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-tglb7/igt@gem_exec_endless@dispatch@vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-tglb7/igt@gem_exec_endless@dispatch@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +170 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#4613])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][61] ([i915#2658])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl2/igt@gem_pread@exhaustion.html
    - shard-skl:          NOTRUN -> [INCOMPLETE][62] ([i915#7248])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@gem_pread@exhaustion.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271]) +152 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl2/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-apl:          NOTRUN -> [FAIL][64] ([i915#7036])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          [PASS][65] -> [WARN][66] ([i915#1804])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#6991])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-skl1/igt@i915_pm_sseu@full-enable.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl7/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [PASS][69] -> [DMESG-WARN][70] ([i915#5591])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-tglb2/igt@i915_selftest@live@hangcheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-tglb8/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][71] ([i915#3763])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#3886]) +6 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3886]) +5 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:
    - shard-snb:          NOTRUN -> [SKIP][74] ([fdo#109271]) +11 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-snb6/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl1/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-frame-dump:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl2/igt@kms_chamelium@vga-frame-dump.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1:
    - shard-apl:          [PASS][77] -> [DMESG-WARN][78] ([i915#180])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl2/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][79] ([i915#2346]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#7205])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl1/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][81] -> [FAIL][82] ([i915#2122])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#3555])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#6375])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#2672]) +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#2672] / [i915#3555])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([i915#2587] / [i915#2672]) +7 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#658]) +3 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#658]) +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl3/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][90] -> [SKIP][91] ([fdo#109441])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [PASS][92] -> [SKIP][93] ([i915#5519])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][94] -> [INCOMPLETE][95] ([i915#7404])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#533])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl8/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2437])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl2/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2437]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][99] -> [FAIL][100] ([i915#1542])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-skl7/igt@perf@blocking.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@perf@blocking.html

  * igt@perf@polling-small-buf:
    - shard-skl:          NOTRUN -> [FAIL][101] ([i915#1722])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@perf@polling-small-buf.html

  * igt@sysfs_clients@recycle-many:
    - shard-skl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#2994]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-skl:          [PASS][103] -> [FAIL][104] ([i915#1731]) +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-skl:          [INCOMPLETE][105] ([i915#4793]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-skl9/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl10/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][107] ([i915#4525]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][109] ([i915#2842]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [FAIL][111] ([i915#2842]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-iclb6/igt@gem_exec_fair@basic-pace@vecs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][113] ([i915#180]) -> [PASS][114] +3 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_selftest@live@sanitycheck:
    - shard-snb:          [SKIP][115] ([fdo#109271]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-snb2/igt@i915_selftest@live@sanitycheck.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-snb6/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-skl:          [FAIL][117] ([i915#2521]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait@pipe-a-hdmi-a-1:
    - shard-glk:          [DMESG-WARN][119] ([i915#118]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk2/igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait@pipe-a-hdmi-a-1.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk1/igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait@pipe-a-hdmi-a-1.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][121] ([i915#79]) -> [PASS][122] +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][123] ([i915#2122]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][125] ([i915#79]) -> [PASS][126] +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         [SKIP][127] ([i915#3555]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [SKIP][129] ([i915#5235]) -> [PASS][130] +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][131] ([fdo#109441]) -> [PASS][132] +4 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_sequence@queue-idle@edp-1-pipe-c:
    - shard-skl:          [FAIL][133] ([i915#7413]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-skl2/igt@kms_sequence@queue-idle@edp-1-pipe-c.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl10/igt@kms_sequence@queue-idle@edp-1-pipe-c.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][135] ([i915#4525]) -> [FAIL][136] ([i915#6117])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          [WARN][137] ([i915#2658]) -> [INCOMPLETE][138] ([i915#7248])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk1/igt@gem_pread@exhaustion.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk3/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglb:         [INCOMPLETE][139] ([i915#7248]) -> [WARN][140] ([i915#2658])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-tglb6/igt@gem_pwrite@basic-exhaustion.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-tglb3/igt@gem_pwrite@basic-exhaustion.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-iclb:         [FAIL][141] ([i915#2684]) -> [WARN][142] ([i915#2684])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][143] ([i915#4767]) -> [INCOMPLETE][144] ([i915#180])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][145] ([i915#2920]) -> [SKIP][146] ([i915#658]) +1 similar issue
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][147] ([i915#2920]) -> [SKIP][148] ([fdo#111068] / [i915#658]) +2 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158]) ([i915#180] / [i915#3002] / [i915#4312])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-apl8/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-apl8/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-apl2/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-apl3/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-apl8/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-apl3/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl3/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl3/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl2/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl3/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4793]: https://gitlab.freedesktop.org/drm/intel/issues/4793
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6375]: https://gitlab.freedesktop.org/drm/intel/issues/6375
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6991]: https://gitlab.freedesktop.org/drm/intel/issues/6991
  [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
  [i915#7205]: https://gitlab.freedesktop.org/drm/intel/issues/7205
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7404]: https://gitlab.freedesktop.org/drm/intel/issues/7404
  [i915#7413]: https://gitlab.freedesktop.org/drm/intel/issues/7413
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12351 -> Patchwork_110601v1

  CI-20190529: 20190529
  CI_DRM_12351: 74d8166a994863d1f83e842c1822506a8f6aa806 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7046: c58d96d0fe237474b074e3472ce09c57c830d5de @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110601v1: 74d8166a994863d1f83e842c1822506a8f6aa806 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/index.html

--===============3211651759399085708==
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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: never purge busy objects</td><=
/tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/110601/">https://patchwork.freedesktop.org/series/110601/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110601v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110601v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12351_full -&gt; Patchwork_110601v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110601v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_110601v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
110601v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rps@engine-order:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-tglb1/igt@i915_pm_rps@engine-order.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/sha=
rd-tglb1/igt@i915_pm_rps@engine-order.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110601v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12351/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk3/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk3/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12351/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12351/shard-glk5/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/sha=
rd-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12351/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk8/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12351/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12351/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12351/shard-glk7/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2351/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12351/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shar=
d-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12351/shard-glk3/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
601v1/shard-glk9/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_110601v1/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110601v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/sh=
ard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110601v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0601v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110601v1/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110601v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/sh=
ard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110601v1/shard-glk3/boot.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0601v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110601v1/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110601v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/sh=
ard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110601v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk1/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4392=
">i915#4392</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10601v1/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-tglb7/igt@gem_exec_endless@dispatch@vcs1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601=
v1/shard-tglb7/igt@gem_exec_endless@dispatch@vcs1.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0601v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-skl1/igt@gem_exec_fair@basic-pace@ve=
cs0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +170 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@gem_lmem_swapping@parallel-=
random-verify.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110601v1/shard-apl2/igt@gem_pread@exhaustion.html">W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i=
915#2658</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@gem_pread@exhaustion.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7=
248">i915#7248</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-apl2/igt@gen7_exec_parse@oacontrol-t=
racking.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +152 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-apl1/igt@i915_pipe_stress@stress-xrg=
b8888-untiled.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7036">i915#7036</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0601v1/shard-skl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-skl1/igt@i915_pm_sseu@full-enable.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shar=
d-skl7/igt@i915_pm_sseu@full-enable.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/6991">i915#6991</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-tglb2/igt@i915_selftest@live@hangcheck.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1=
/shard-tglb8/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-s=
tride-64bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3763">i915#3763</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-apl1/igt@kms_ccs@pipe-a-ccs-on-anoth=
er-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +6 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@kms_ccs@pipe-a-crc-sprite-p=
lanes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-snb6/igt@kms_ccs@pipe-b-random-ccs-d=
ata-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-skl1/igt@kms_chamelium@dp-hpd-enable=
-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-frame-dump:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-apl2/igt@kms_chamelium@vga-frame-dum=
p.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110601v1/shard-apl2/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@kms_cursor_legacy@flip-vs-c=
ursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-apl1/igt@kms_dsc@dsc-with-bpc-format=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7205">i915#7205</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_110601v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-inte=
rruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6375">i915#6=
375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672=
</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i=
915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#=
2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672"=
>i915#2672</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-skl1/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-apl3/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11060=
1v1/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_110601v1/shard-iclb6/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-suspend.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110601v1/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/7404">i915#7404</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-apl8/igt@kms_vblank@pipe-d-wait-idle=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-apl2/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-skl7/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@=
perf@blocking.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@perf@polling-small-buf.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722=
">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110601v1/shard-skl6/igt@sysfs_clients@recycle-many.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0601v1/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</=
a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-skl9/igt@gem_ctx_isolation@preservation-s3@vcs0.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
793">i915#4793</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_110601v1/shard-skl10/igt@gem_ctx_isolation@preservation-s3@vcs=
0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110601v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10601v1/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-iclb6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
110601v1/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-apl2/igt@gem_workarounds@suspend-resume-context.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110601v1/shard-apl8/igt@gem_workarounds@suspend-resume-context.h=
tml">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-snb2/igt@i915_selftest@live@sanitycheck.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1092=
71</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110601v1/shard-snb6/igt@i915_selftest@live@sanitycheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110601v1/shard-skl4/igt@kms_async_flips@alternate-sy=
nc-async-flip@pipe-b-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait@pipe-a-h=
dmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-glk2/igt@kms_atomic_transition@plane-primary-toggle-wit=
h-vblank-wait@pipe-a-hdmi-a-1.html">DMESG-WARN</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/118">i915#118</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-glk1/igt@kms=
_atomic_transition@plane-primary-toggle-with-vblank-wait@pipe-a-hdmi-a-1.ht=
ml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-=
hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_110601v1/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblan=
k@bc-hdmi-a1-hdmi-a2.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110601v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblan=
k-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i91=
5#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110601v1/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bp=
p-linear-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb3=
/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe=
-a-default-mode.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-iclb6/igt@km=
s_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-=
1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-iclb8/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v=
1/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@queue-idle@edp-1-pipe-c:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-skl2/igt@kms_sequence@queue-idle@edp-1-pipe-c.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7413">i91=
5#7413</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110601v1/shard-skl10/igt@kms_sequence@queue-idle@edp-1-pipe-c.html">PA=
SS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110601v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-glk1/igt@gem_pread@exhaustion.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/=
shard-glk3/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-tglb6/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#=
7248</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110601v1/shard-tglb3/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110601v1/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601=
v1/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110601v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12351/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110601v1/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12351/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-apl8/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12351/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12351/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/shard-apl3/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110601v1/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/shard-apl2/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110601v1/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#43=
12</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12351 -&gt; Patchwork_110601v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12351: 74d8166a994863d1f83e842c1822506a8f6aa806 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7046: c58d96d0fe237474b074e3472ce09c57c830d5de @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110601v1: 74d8166a994863d1f83e842c1822506a8f6aa806 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3211651759399085708==--
