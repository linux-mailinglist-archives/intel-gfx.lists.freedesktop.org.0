Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB6E54BE39
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 01:17:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6D8E113539;
	Tue, 14 Jun 2022 23:17:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AA7E9113539;
 Tue, 14 Jun 2022 23:17:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A02BDAA0EB;
 Tue, 14 Jun 2022 23:17:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4059338445833783654=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 14 Jun 2022 23:17:06 -0000
Message-ID: <165524862664.12486.8638198767017650411@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220611005711.596098-1-matthew.d.roper@intel.com>
In-Reply-To: <20220611005711.596098-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_Extract=2C_polish=2C_and_document_multicast_handling?=
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

--===============4059338445833783654==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: Extract, polish, and document multicast handling
URL   : https://patchwork.freedesktop.org/series/105015/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11755_full -> Patchwork_105015v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (12 -> 11)
------------------------------

  Missing    (1): shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105015v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_cdclk@mode-transition-all-outputs}:
    - shard-iclb:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_cdclk@mode-transition-all-outputs.html

  
Known issues
------------

  Here are the changes found in Patchwork_105015v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [FAIL][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20]) ([i915#5032]) -> ([PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl10/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl2/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl1/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl10/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl9/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl9/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl9/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl7/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl6/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl1/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl1/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl10/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@drm_buddy@all@buddy_alloc_smoke:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#5800])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl9/igt@drm_buddy@all@buddy_alloc_smoke.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl7/igt@drm_buddy@all@buddy_alloc_smoke.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#5327])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-snb:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#1099])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-snb6/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([i915#4525])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_endless@dispatch@vecs0:
    - shard-tglb:         [PASS][49] -> [INCOMPLETE][50] ([i915#3778])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglb8/igt@gem_exec_endless@dispatch@vecs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-tglb8/igt@gem_exec_endless@dispatch@vecs0.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][51] -> [FAIL][52] ([i915#2842])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][53] ([i915#2842]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html
    - shard-kbl:          [PASS][54] -> [FAIL][55] ([i915#2842]) +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-iclb:         [PASS][56] -> [FAIL][57] ([i915#2842])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_params@no-vebox:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109283])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@gem_exec_params@no-vebox.html

  * igt@gem_lmem_swapping@basic:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#4613]) +5 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl10/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#4613])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#4613])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#3297])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][63] -> [DMESG-WARN][64] ([i915#5566] / [i915#716])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl5/igt@gen9_exec_parse@allowed-all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@load:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#6227])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl9/igt@i915_module_load@load.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][66] ([i915#454])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl9/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][67] ([i915#2684])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [PASS][68] -> [DMESG-WARN][69] ([i915#5591])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglb6/igt@i915_selftest@live@hangcheck.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-tglb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#5286]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#110725] / [fdo#111614])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglb:         [PASS][72] -> [FAIL][73] ([i915#3743]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +72 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][75] ([i915#3763])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][76] ([i915#3743]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109278] / [i915#3886]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3886]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-glk3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3886]) +12 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3886])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl6/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109278]) +13 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-glk:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-glk3/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-edid-read:
    - shard-snb:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-snb6/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_chamelium@hdmi-hpd.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl6/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl9/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_color_chamelium@pipe-d-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][88] ([i915#180])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-random:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_cursor_crc@pipe-c-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#1888])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl10/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:
    - shard-glk:          NOTRUN -> [SKIP][91] ([fdo#109271]) +28 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-glk3/igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271]) +372 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl10/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][93] ([i915#2346] / [i915#533])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-render-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#5287])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@kms_draw_crc@draw-method-rgb565-render-4tiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][95] -> [FAIL][96] ([i915#4767])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109274])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][98] -> [FAIL][99] ([i915#79]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [PASS][100] -> [DMESG-WARN][101] ([i915#180]) +3 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@wf_vblank-ts-check@a-edp1:
    - shard-skl:          [PASS][102] -> [FAIL][103] ([i915#2122])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl6/igt@kms_flip@wf_vblank-ts-check@a-edp1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl2/igt@kms_flip@wf_vblank-ts-check@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#3701]) +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-iclb:         [PASS][105] -> [SKIP][106] ([i915#3701])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109280]) +12 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([i915#3555])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#533]) +3 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl10/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][110] ([fdo#108145] / [i915#265])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][111] ([fdo#108145] / [i915#265])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([i915#5176]) +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-edp-1.html

  * igt@kms_prime@basic-crc@first-to-second:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([i915#1836])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@kms_prime@basic-crc@first-to-second.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-tglb:         NOTRUN -> [SKIP][114] ([i915#2920])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-tglb3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-apl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#658])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl1/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#658]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][117] -> [SKIP][118] ([fdo#109441])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb3/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-snb:          NOTRUN -> [SKIP][119] ([fdo#109271]) +78 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-snb6/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [PASS][120] -> [SKIP][121] ([i915#5519])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-iclb:         NOTRUN -> [SKIP][122] ([i915#2437])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#2437]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl4/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-c-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][124] ([i915#2530])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@nouveau_crc@pipe-c-source-outp-complete.html

  * igt@nouveau_crc@pipe-d-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][125] ([fdo#109278] / [i915#2530])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@nouveau_crc@pipe-d-source-outp-inactive.html

  * igt@prime_nv_test@nv_write_i915_gtt_mmap_read:
    - shard-iclb:         NOTRUN -> [SKIP][126] ([fdo#109291]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@prime_nv_test@nv_write_i915_gtt_mmap_read.html

  * igt@sw_sync@sync_merge:
    - shard-skl:          NOTRUN -> [FAIL][127] ([i915#6140])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl10/igt@sw_sync@sync_merge.html

  * igt@sysfs_clients@create:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([i915#2994])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@sysfs_clients@create.html

  * igt@sysfs_clients@split-25:
    - shard-skl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#2994]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl2/igt@sysfs_clients@split-25.html

  * igt@sysfs_clients@split-50:
    - shard-glk:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#2994])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-glk3/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@core_setmaster@master-drop-set-user:
    - shard-iclb:         [INCOMPLETE][131] -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb4/igt@core_setmaster@master-drop-set-user.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@core_setmaster@master-drop-set-user.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][133] ([i915#658]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb7/igt@feature_discovery@psr2.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][135] ([i915#4525]) -> [PASS][136] +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][137] ([i915#2842]) -> [PASS][138] +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][139] ([i915#2842]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][141] ([i915#2842]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [FAIL][143] ([i915#2842]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][145] ([i915#2849]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][147] ([i915#180]) -> [PASS][148] +3 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl6/igt@gem_workarounds@suspend-resume.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl1/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][149] ([i915#5566] / [i915#716]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [DMESG-WARN][151] ([i915#6201]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][153] ([i915#454]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglb:         [FAIL][155] ([i915#3743]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-tglb8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][157] ([i915#2346] / [i915#533]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-kbl:          [FAIL][159] ([i915#79]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [FAIL][161] ([i915#79]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][163] ([fdo#109441]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [FAIL][165] ([i915#5784]) -> [TIMEOUT][166] ([i915#3063])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][167] ([i915#2852]) -> [FAIL][168] ([i915#2842])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglb:         [FAIL][169] ([i915#2842]) -> [SKIP][170] ([i915#2848]) +1 similar issue
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglb1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-tglb2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-skl:          [SKIP][171] ([fdo#109271] / [i915#1888]) -> [SKIP][172] ([fdo#109271])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl2/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl1/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-skl:          [SKIP][173] ([fdo#109271]) -> [SKIP][174] ([fdo#109271] / [i915#1888]) +1 similar issue
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl4/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl7/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][175] ([i915#658]) -> [SKIP][176] ([i915#2920])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb4/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180], [FAIL][181]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl6/igt@runner@aborted.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl2/igt@runner@aborted.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl6/igt@runner@aborted.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl4/igt@runner@aborted.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl2/igt@runner@aborted.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl1/igt@runner@aborted.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl1/igt@runner@aborted.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl4/igt@runner@aborted.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl3/igt@runner@aborted.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl7/igt@runner@aborted.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2848]: https://gitlab.freedesktop.org/drm/intel/issues/2848
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5800]: https://gitlab.freedesktop.org/drm/intel/issues/5800
  [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
  [i915#6201]: https://gitlab.freedesktop.org/drm/intel/issues/6201
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11755 -> Patchwork_105015v1

  CI-20190529: 20190529
  CI_DRM_11755: 65b93b94d6bc932ed60bb3fd9d68242db25b1f3b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6522: 5be5a1a1f168a59614101b77385f05f12ec7d30a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105015v1: 65b93b94d6bc932ed60bb3fd9d68242db25b1f3b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/index.html

--===============4059338445833783654==
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
<tr><td><b>Series:</b></td><td>i915: Extract, polish, and document multicas=
t handling</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/105015/">https://patchwork.freedesktop.org/series/105015/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105015v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105015v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11755_full -&gt; Patchwork_105015v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
105015v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_cdclk@mode-transition-all-outputs}:<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105015v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11755/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl9/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl9/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11755/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_11755/shard-skl7/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl7/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/sh=
ard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_11755/shard-skl6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl5/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11755/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_11755/shard-skl4/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl3/boot.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1175=
5/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_11755/shard-skl2/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl1/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-s=
kl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11755/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl10/boot.html">PASS</a>) (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5032">i915#5032</a>)=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10501=
5v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105015v1/shard-skl9/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl9/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105015v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-=
skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_105015v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015=
v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105015v1/shard-skl5/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl5/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105015v1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl4/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-s=
kl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105015v1/shard-skl3/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v=
1/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105015v1/shard-skl1/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105015v1/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105015v1/shard-skl10/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-s=
kl10/boot.html">PASS</a>)</li>
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
/CI_DRM_11755/shard-skl9/igt@drm_buddy@all@buddy_alloc_smoke.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015=
v1/shard-skl7/igt@drm_buddy@all@buddy_alloc_smoke.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5800">i915#5800</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@gem_ccs@block-copy-compres=
sed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5327">i915#5327</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-snb6/igt@gem_ctx_persistence@smokete=
st.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105015v1/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#45=
25</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-tglb8/igt@gem_exec_endless@dispatch@vecs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10501=
5v1/shard-tglb8/igt@gem_exec_endless@dispatch@vecs0.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v=
1/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105015v1/shard-iclb1/igt@gem_exec_fair@basic-none@vc=
s1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2842">i915#2842</a>) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11755/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/=
shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +3 simila=
r issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v=
1/shard-iclb2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@gem_exec_params@no-vebox.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9283">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl10/igt@gem_lmem_swapping@basic.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-apl1/igt@gem_lmem_swapping@heavy-ver=
ify-random-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@gem_lmem_swapping@verify-r=
andom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@gem_userptr_blits@invalid-=
mmap-offset-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-skl5/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/s=
hard-skl7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl9/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl9/igt@i915_pm_dc@dc6-psr.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i91=
5#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@i915_pm_rc6_residency@rc6-=
idle.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2684">i915#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-tglb6/igt@i915_selftest@live@hangcheck.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1=
/shard-tglb5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@kms_big_fb@4-tiled-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5286">i915#5286</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_big_fb@x-tiled-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-=
stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-s=
tride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +72 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-s=
tride-64bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3763">i915#3763</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@kms_ccs@pipe-a-bad-rotatio=
n-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-glk3/igt@kms_ccs@pipe-a-crc-sprite-p=
lanes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl2/igt@kms_ccs@pipe-b-ccs-on-anoth=
er-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +12 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-apl6/igt@kms_ccs@pipe-c-crc-primary-=
rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_ccs@pipe-d-crc-primary=
-rotation-180-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +13 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-glk3/igt@kms_chamelium@dp-edid-chang=
e-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-snb6/igt@kms_chamelium@hdmi-edid-rea=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_chamelium@hdmi-hpd.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
84">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-apl6/igt@kms_chamelium@hdmi-hpd-stor=
m-disable.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl9/igt@kms_color_chamelium@pipe-a-=
ctm-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_color_chamelium@pipe-d=
-ctm-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-apl1/igt@kms_cursor_crc@pipe-a-curso=
r-suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_cursor_crc@pipe-c-curs=
or-512x170-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109279">fdo#109279</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl10/igt@kms_cursor_crc@pipe-d-curs=
or-128x128-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-glk3/igt@kms_cursor_crc@pipe-d-curso=
r-64x21-rapid-movement.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl10/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +372 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl5/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-render-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@kms_draw_crc@draw-method-r=
gb565-render-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/sha=
rd-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_flip@2x-plain-flip-fb-=
recreate-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_105015v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-int=
erruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/79">i915#79</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v=
1/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-skl6/igt@kms_flip@wf_vblank-ts-check@a-edp1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
015v1/shard-skl2/igt@kms_flip@wf_vblank-ts-check@a-edp1.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl5/igt@kms_flip_scaled_crc@flip-32=
bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>) +=
2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-64bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +12 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl10/igt@kms_pipe_crc_basic@hang-re=
ad-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/533">i915#533</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-apl1/igt@kms_plane_alpha_blend@pipe-=
a-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-=
b-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@kms_plane_scaling@plane-do=
wnscale-with-rotation-factor-0-75@pipe-b-edp-1.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@first-to-second:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@kms_prime@basic-crc@first-=
to-second.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1836">i915#1836</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-tglb3/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-apl1/igt@kms_psr2_su@page_flip-nv12.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8=
888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-iclb=
3/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-snb6/igt@kms_psr@psr2_sprite_plane_o=
noff.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +78 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105015v1/shard-iclb4/igt@kms_psr_stress_test@flip-primary-in=
validate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@kms_writeback@writeback-in=
valid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl4/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@nouveau_crc@pipe-c-source-=
outp-complete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb2/igt@nouveau_crc@pipe-d-source-=
outp-inactive.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_write_i915_gtt_mmap_read:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@prime_nv_test@nv_write_i91=
5_gtt_mmap_read.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109291">fdo#109291</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl10/igt@sw_sync@sync_merge.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6140">i=
915#6140</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-iclb5/igt@sysfs_clients@create.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994"=
>i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-skl2/igt@sysfs_clients@split-25.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105015v1/shard-glk3/igt@sysfs_clients@split-50.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_setmaster@master-drop-set-user:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb4/igt@core_setmaster@master-drop-set-user.html">INC=
OMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105015v1/shard-iclb5/igt@core_setmaster@master-drop-set-user.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb7/igt@feature_discovery@psr2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/s=
hard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105015v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105015v1/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05015v1/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5015v1/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105015v1/shard-iclb2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#=
2849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105015v1/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-apl6/igt@gem_workarounds@suspend-resume.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105015v1/shard-apl1/igt@gem_workarounds@suspend-resume.html">PASS</a> +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-glk7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5=
566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i=
915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105015v1/shard-glk3/igt@gen9_exec_parse@allowed-all.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-snb7/igt@i915_module_load@reload-with-fault-injection.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6201">i915#6201</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_105015v1/shard-snb6/igt@i915_module_load@reload-with-fau=
lt-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard=
-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-180-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-tglb8/igt@kms_big_fb@x-t=
iled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/533">i915#533</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-glk5/igt@kms_cursor_leg=
acy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915=
#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105015v1/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">=
i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105015v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105015v1/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a></l=
i>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-tglb5/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1=
/shard-tglb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915=
#2852</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105015v1/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-tglb1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105015v1/shard-tglb2/igt@gem_exec_fair@basic-none-solo@rcs0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2848">i915#=
2848</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-skl2/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/188=
8">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105015v1/shard-skl1/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-skl4/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_m=
c_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105015v1/shard-skl7/igt@kms_ccs@pipe-d-random-ccs-dat=
a-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1888">i915#1888</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11755/shard-iclb4/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_105015v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11755/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl2/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11755/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11755/shard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#=
5257</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105015v1/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl1/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_105015v1/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/shard-apl3/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105015v1/shard-apl7/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105015v1/sh=
ard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11755 -&gt; Patchwork_105015v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11755: 65b93b94d6bc932ed60bb3fd9d68242db25b1f3b @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6522: 5be5a1a1f168a59614101b77385f05f12ec7d30a @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105015v1: 65b93b94d6bc932ed60bb3fd9d68242db25b1f3b @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4059338445833783654==--
