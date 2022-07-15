Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64671575F45
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jul 2022 12:22:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AACF214A680;
	Fri, 15 Jul 2022 10:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A36DA14A680;
 Fri, 15 Jul 2022 10:22:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9BC9DA01BB;
 Fri, 15 Jul 2022 10:22:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6570885376751043886=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Fri, 15 Jul 2022 10:22:37 -0000
Message-ID: <165788055760.10567.9503206111468577424@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220714090807.2340818-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220714090807.2340818-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?es_integer_overflow_or_integer_truncation_issues_in_page_lookup?=
 =?utf-8?q?s=2C_ttm_place_configuration_and_scatterlist_creation_=28rev5?=
 =?utf-8?q?=29?=
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

--===============6570885376751043886==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation (rev5)
URL   : https://patchwork.freedesktop.org/series/104704/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11899_full -> Patchwork_104704v5_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_104704v5_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][1] ([fdo#111827])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@feature_discovery@chamelium.html
    - shard-iclb:         NOTRUN -> [SKIP][2] ([fdo#111827])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@feature_discovery@chamelium.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_eio@in-flight-10ms:
    - shard-tglb:         [PASS][4] -> [TIMEOUT][5] ([i915#3063]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-tglb3/igt@gem_eio@in-flight-10ms.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb2/igt@gem_eio@in-flight-10ms.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][6] -> [TIMEOUT][7] ([i915#3070])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb3/igt@gem_eio@unwedge-stress.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([i915#4525]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][10] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
    - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
    - shard-tglb:         NOTRUN -> [FAIL][12] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-kbl:          [PASS][15] -> [INCOMPLETE][16] ([i915#3614] / [i915#4939])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-kbl4/igt@gem_exec_suspend@basic-s3@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-kbl4/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#2190])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-skl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613]) +3 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl1/igt@gem_lmem_swapping@smem-oom.html
    - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@gem_lmem_swapping@smem-oom.html
    - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#4613])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@gem_lmem_swapping@smem-oom.html
    - shard-glk:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4613])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@gem_lmem_swapping@smem-oom.html
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#4613])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@gem_lmem_swapping@smem-oom.html
    - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#4613])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-kbl1/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-snb:          [PASS][24] -> [INCOMPLETE][25] ([i915#5161])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-x.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_pxp@display-protected-crc:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#4270])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@gem_pxp@display-protected-crc.html
    - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#4270])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@gem_pxp@display-protected-crc.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][28] -> [DMESG-WARN][29] ([i915#5566] / [i915#716])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-apl4/igt@gen9_exec_parse@allowed-single.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@gen9_exec_parse@allowed-single.html
    - shard-glk:          [PASS][30] -> [DMESG-WARN][31] ([i915#5566] / [i915#716])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-glk3/igt@gen9_exec_parse@allowed-single.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-glk6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][32] -> [FAIL][33] ([i915#454])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#3650])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-skl9/igt@i915_pm_sseu@full-enable.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl10/igt@i915_pm_sseu@full-enable.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-snb:          [PASS][36] -> [INCOMPLETE][37] ([i915#4817] / [i915#4939])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-snb7/igt@i915_suspend@fence-restore-untiled.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-snb5/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#5286])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
    - shard-iclb:         NOTRUN -> [SKIP][39] ([i915#5286])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][40] ([i915#3743]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278]) +6 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc.html
    - shard-tglb:         NOTRUN -> [SKIP][42] ([i915#3689] / [i915#6095]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3886])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3689] / [i915#3886])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
    - shard-glk:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278] / [i915#3886])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#3886])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-kbl1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#6095]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#3886]) +10 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl5/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3689]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-glk:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@kms_chamelium@dp-edid-change-during-suspend.html
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_chamelium@dp-edid-change-during-suspend.html
    - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-kbl1/igt@kms_chamelium@dp-edid-change-during-suspend.html
    - shard-snb:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-snb2/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_color_chamelium@pipe-b-ctm-negative:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@kms_color_chamelium@pipe-b-ctm-negative.html
    - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_color_chamelium@pipe-b-ctm-negative.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_cursor_crc@cursor-offscreen@pipe-a-dp-1-512x170:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +57 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@kms_cursor_crc@cursor-offscreen@pipe-a-dp-1-512x170.html

  * igt@kms_cursor_crc@cursor-offscreen@pipe-b-edp-1-32x32:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#4462]) +5 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_cursor_crc@cursor-offscreen@pipe-b-edp-1-32x32.html

  * igt@kms_cursor_crc@cursor-offscreen@pipe-c-edp-1-32x10:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#4462]) +7 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_cursor_crc@cursor-offscreen@pipe-c-edp-1-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen@pipe-c-edp-1-512x170:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#3359]) +5 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_cursor_crc@cursor-offscreen@pipe-c-edp-1-512x170.html

  * igt@kms_cursor_crc@cursor-offscreen@pipe-c-edp-1-512x512:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#3359]) +7 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_cursor_crc@cursor-offscreen@pipe-c-edp-1-512x512.html

  * igt@kms_dsc@dsc-with-bpp:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#3828])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_dsc@dsc-with-bpp.html
    - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#3828])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_dsc@dsc-with-bpp.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          NOTRUN -> [FAIL][65] ([i915#4767])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-glk:          NOTRUN -> [FAIL][66] ([i915#4767])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          NOTRUN -> [FAIL][67] ([i915#4767])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#79])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#109274] / [fdo#111825] / [i915#3637]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_flip@2x-flip-vs-modeset.html
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109274]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#2672]) +7 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +234 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#3555]) +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#2672] / [i915#3555]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([fdo#109280] / [fdo#111825]) +7 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [FAIL][77] ([i915#160]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271]) +53 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-kbl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:
    - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271]) +45 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109280]) +7 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
    - shard-kbl:          [PASS][81] -> [FAIL][82] ([i915#1188])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][83] ([fdo#108145] / [i915#265])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#111615]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#5176]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-d-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#5176]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][87] -> [SKIP][88] ([i915#5235]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#658]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl4/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][90] -> [SKIP][91] ([fdo#109441]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-tglb:         NOTRUN -> [FAIL][92] ([i915#132] / [i915#3467])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_psr@psr2_primary_page_flip.html
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109441])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][94] -> [DMESG-WARN][95] ([i915#180]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vrr@flip-basic:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([i915#3555])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_vrr@flip-basic.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([i915#2530])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
    - shard-iclb:         NOTRUN -> [SKIP][98] ([i915#2530])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([fdo#109289])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@perf@per-context-mode-unprivileged.html
    - shard-iclb:         NOTRUN -> [SKIP][100] ([fdo#109289])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@perf@per-context-mode-unprivileged.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [PASS][101] -> [FAIL][102] ([i915#5639])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-tglb7/igt@perf@polling-parameterized.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb8/igt@perf@polling-parameterized.html

  * igt@prime_nv_test@i915_nv_sharing:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([fdo#109291])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@prime_nv_test@i915_nv_sharing.html
    - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109291])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@prime_nv_test@i915_nv_sharing.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#2994]) +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl5/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@sema-50:
    - shard-snb:          NOTRUN -> [SKIP][106] ([fdo#109271]) +81 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-snb2/igt@sysfs_clients@sema-50.html
    - shard-apl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#2994])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@sysfs_clients@sema-50.html
    - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#2994])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@sysfs_clients@sema-50.html
    - shard-glk:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2994])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@sysfs_clients@sema-50.html
    - shard-iclb:         NOTRUN -> [SKIP][110] ([i915#2994])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@sysfs_clients@sema-50.html
    - shard-kbl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#2994])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-kbl1/igt@sysfs_clients@sema-50.html

  * igt@sysfs_preempt_timeout@timeout@rcs0:
    - shard-skl:          [PASS][112] -> [FAIL][113] ([i915#3259])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-skl4/igt@sysfs_preempt_timeout@timeout@rcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl7/igt@sysfs_preempt_timeout@timeout@rcs0.html

  
#### Possible fixes ####

  * igt@fbdev@eof:
    - {shard-rkl}:        [SKIP][114] ([i915#2582]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-5/igt@fbdev@eof.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-6/igt@fbdev@eof.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][116] ([i915#658]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb8/igt@feature_discovery@psr2.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_create@create-massive:
    - shard-apl:          [DMESG-WARN][118] ([i915#4991]) -> [PASS][119] +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-apl6/igt@gem_create@create-massive.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@gem_create@create-massive.html
    - shard-tglb:         [DMESG-WARN][120] ([i915#4991]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-tglb2/igt@gem_create@create-massive.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb7/igt@gem_create@create-massive.html
    - shard-glk:          [DMESG-WARN][122] ([i915#4991]) -> [PASS][123] +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-glk8/igt@gem_create@create-massive.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-glk9/igt@gem_create@create-massive.html
    - {shard-tglu}:       [DMESG-WARN][124] ([i915#4991]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-tglu-8/igt@gem_create@create-massive.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglu-6/igt@gem_create@create-massive.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-iclb:         [TIMEOUT][126] ([i915#3070]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb4/igt@gem_eio@in-flight-contexts-10ms.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb3/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][128] ([i915#4525]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][130] ([i915#2842]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglu-1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][132] ([i915#2842]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [FAIL][134] ([i915#2842]) -> [PASS][135] +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][136] ([i915#2842]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - {shard-rkl}:        [SKIP][138] ([i915#3281]) -> [PASS][139] +6 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-cpu.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_mmap_gtt@coherency:
    - {shard-rkl}:        [SKIP][140] ([fdo#111656]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-1/igt@gem_mmap_gtt@coherency.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-5/igt@gem_mmap_gtt@coherency.html

  * igt@gem_readwrite@beyond-eob:
    - {shard-rkl}:        [SKIP][142] ([i915#3282]) -> [PASS][143] +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-6/igt@gem_readwrite@beyond-eob.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-5/igt@gem_readwrite@beyond-eob.html

  * igt@gem_userptr_blits@input-checking:
    - shard-iclb:         [DMESG-WARN][144] ([i915#4991]) -> [PASS][145] +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb6/igt@gem_userptr_blits@input-checking.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@gem_userptr_blits@input-checking.html
    - shard-kbl:          [DMESG-WARN][146] ([i915#4991]) -> [PASS][147] +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-kbl1/igt@gem_userptr_blits@input-checking.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-kbl1/igt@gem_userptr_blits@input-checking.html
    - {shard-rkl}:        [DMESG-WARN][148] ([i915#4991]) -> [PASS][149] +1 similar issue
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-6/igt@gem_userptr_blits@input-checking.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-5/igt@gem_userptr_blits@input-checking.html
    - shard-snb:          [DMESG-WARN][150] ([i915#4991]) -> [PASS][151] +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-snb4/igt@gem_userptr_blits@input-checking.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-snb2/igt@gem_userptr_blits@input-checking.html
    - shard-skl:          [DMESG-WARN][152] ([i915#4991]) -> [PASS][153] +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-skl7/igt@gem_userptr_blits@input-checking.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl1/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-single:
    - {shard-rkl}:        [SKIP][154] ([i915#2527]) -> [PASS][155] +2 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-6/igt@gen9_exec_parse@allowed-single.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc5-psr:
    - {shard-rkl}:        [SKIP][156] ([i915#658]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-5/igt@i915_pm_dc@dc5-psr.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - {shard-rkl}:        [WARN][158] ([i915#6405]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - {shard-rkl}:        [SKIP][160] ([i915#1397]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-5/igt@i915_pm_rpm@dpms-lpsp.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-kbl:          [DMESG-FAIL][162] ([i915#5334]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-kbl4/igt@i915_selftest@live@gt_heartbeat.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-kbl7/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][164] ([i915#3921]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - {shard-rkl}:        [SKIP][166] ([i915#1845] / [i915#4098]) -> [PASS][167] +18 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:
    - shard-skl:          [INCOMPLETE][168] ([i915#4939]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-skl10/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl1/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
    - {shard-rkl}:        [SKIP][170] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][171] +2 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][172] ([i915#79]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][174] ([i915#180]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][176] ([i915#2122]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - {shard-rkl}:        [SKIP][178] ([i915#1849] / [i915#4098]) -> [PASS][179] +13 similar issues
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_plane@plane-panning-top-left@pipe-b-planes:
    - {shard-rkl}:        [SKIP][180] ([i915#1849] / [i915#3558]) -> [PASS][181] +3 similar issues
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-5/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-6/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][182] ([i915#5235]) -> [PASS][183] +2 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [SKIP][184] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][185]
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb8/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][186] ([fdo#109441]) -> [PASS][187] +1 similar issue
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr@sprite_mmap_gtt:
    - {shard-rkl}:        [SKIP][188] ([i915#1072]) -> [PASS][189] +1 similar issue
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-rkl-5/igt@kms_psr@sprite_mmap_gtt.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-6/igt@kms_psr@sprite_mmap_gtt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [SKIP][190] ([i915#5519]) -> [PASS][191]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-tglb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [SKIP][192] ([fdo#109271]) -> [FAIL][193] ([i915#2842])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_gttfill@engines@vecs0:
    - shard-skl:          [SKIP][194] ([fdo#109271] / [i915#1888]) -> [SKIP][195] ([fdo#109271])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-skl4/igt@gem_exec_gttfill@engines@vecs0.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-skl4/igt@gem_exec_gttfill@engines@vecs0.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][196] ([i915#2920]) -> [SKIP][197] ([i915#658]) +2 similar issues
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][198] ([fdo#111068] / [i915#658]) -> [SKIP][199] ([i915#2920])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][200] ([i915#2920]) -> [SKIP][201] ([fdo#111068] / [i915#658])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-snb:          ([FAIL][202], [FAIL][203]) ([i915#3002] / [i915#4312]) -> [FAIL][204] ([i915#4312])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-snb4/igt@runner@aborted.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-snb5/igt@runner@aborted.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-snb4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][205], [FAIL][206], [FAIL][207]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][208], [FAIL][209], [FAIL][210]) ([fdo#109271] / [i915#180] / [i915#4312] / [i915#5257])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-apl8/igt@runner@aborted.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-apl6/igt@runner@aborted.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-apl2/igt@runner@aborted.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@runner@aborted.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl3/igt@runner@aborted.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl6/igt@runner@aborted.html
    - shard-glk:          ([FAIL][211], [FAIL][212]) ([i915#3002] / [i915#4312] / [i915#5257]) -> [FAIL][213] ([i915#4312] / [i915#5257])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-glk8/igt@runner@aborted.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-glk6/igt@runner@aborted.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-glk6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#160]: https://gitlab.freedesktop.org/drm/intel/issues/160
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3259]: https://gitlab.freedesktop.org/drm/intel/issues/3259
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3650]: https://gitlab.freedesktop.org/drm/intel/issues/3650
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
  [i915#6405]: https://gitlab.freedesktop.org/drm/intel/issues/6405
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11899 -> Patchwork_104704v5

  CI-20190529: 20190529
  CI_DRM_11899: 129221b1b68994b3721271ef9438823411f55556 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6585: 1b15ce5ec4cb6693daa9dff042e32f675ba8af76 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104704v5: 129221b1b68994b3721271ef9438823411f55556 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/index.html

--===============6570885376751043886==
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
<tr><td><b>Series:</b></td><td>Fixes integer overflow or integer truncation=
 issues in page lookups, ttm place configuration and scatterlist creation (=
rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/104704/">https://patchwork.freedesktop.org/series/104704/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104704v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11899_full -&gt; Patchwork_104704v=
5_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104704v5_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@chamelium:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@feature_discovery@chamelium=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@feature_discovery@chamelium=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-snb2/igt@gem_ctx_persistence@legacy-=
engines-queued.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-10ms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-tglb3/igt@gem_eio@in-flight-10ms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard=
-tglb2/igt@gem_eio@in-flight-10ms.html">TIMEOUT</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb3/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard=
-iclb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3070">i915#3070</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v5/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@gem_exec_fair@basic-none-rru=
l@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@gem_exec_fair@basic-none-rr=
ul@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@gem_exec_fair@basic-none-rr=
ul@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v5/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-kbl4/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v=
5/shard-kbl4/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3614">i915#3614</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-skl1/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-skl1/igt@gem_lmem_swapping@smem-oom.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@gem_lmem_swapping@smem-oom.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@gem_lmem_swapping@smem-oom.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@gem_lmem_swapping@smem-oom.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@gem_lmem_swapping@smem-oom.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-kbl1/igt@gem_lmem_swapping@smem-oom.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-x.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704=
v5/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5161">i915#5161</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@gem_pxp@display-protected-c=
rc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4270">i915#4270</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@gem_pxp@display-protected-c=
rc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4270">i915#4270</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11899/shard-apl4/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5=
/shard-apl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a=
>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11899/shard-glk3/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5=
/shard-glk6/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a=
>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-icl=
b3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-skl9/igt@i915_pm_sseu@full-enable.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shar=
d-skl10/igt@i915_pm_sseu@full-enable.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3650">i915#3650</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-snb7/igt@i915_suspend@fence-restore-untiled.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
704v5/shard-snb5/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#48=
17</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i=
915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_big_fb@4-tiled-32bpp-ro=
tate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5286">i915#5286</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_big_fb@4-tiled-32bpp-ro=
tate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5286">i915#5286</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-s=
tride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_ccs@pipe-a-crc-primary-=
rotation-180-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +6 similar issues=
</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary-=
rotation-180-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar is=
sue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@kms_ccs@pipe-b-crc-sprite-pl=
anes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_ccs@pipe-b-crc-sprite-p=
lanes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@kms_ccs@pipe-b-crc-sprite-pl=
anes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_ccs@pipe-b-crc-sprite-p=
lanes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-kbl1/igt@kms_ccs@pipe-b-crc-sprite-pl=
anes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-skl5/igt@kms_ccs@pipe-c-random-ccs-d=
ata-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +10 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_ccs@pipe-d-bad-rotatio=
n-90-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-change-during-suspend:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@kms_chamelium@dp-edid-change=
-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_chamelium@dp-edid-chang=
e-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-kbl1/igt@kms_chamelium@dp-edid-change=
-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-snb2/igt@kms_chamelium@dp-edid-change=
-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-negative:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@kms_color_chamelium@pipe-b-c=
tm-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_color_chamelium@pipe-b-=
ctm-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-skl1/igt@kms_color_chamelium@pipe-d-=
ctm-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen@pipe-a-dp-1-512x170:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@kms_cursor_crc@cursor-offsc=
reen@pipe-a-dp-1-512x170.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen@pipe-b-edp-1-32x32:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_cursor_crc@cursor-offs=
creen@pipe-b-edp-1-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4462">i915#4462</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen@pipe-c-edp-1-32x10:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_cursor_crc@cursor-offs=
creen@pipe-c-edp-1-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4462">i915#4462</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen@pipe-c-edp-1-512x170:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_cursor_crc@cursor-offs=
creen@pipe-c-edp-1-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3359">i915#3359</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen@pipe-c-edp-1-512x512:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_cursor_crc@cursor-offs=
creen@pipe-c-edp-1-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3359">i915#3359</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpp:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_dsc@dsc-with-bpp.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3828">=
i915#3828</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_dsc@dsc-with-bpp.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3828">=
i915#3828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/47=
67">i915#4767</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@kms_fbcon_fbt@fbc-suspend.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/47=
67">i915#4767</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/47=
67">i915#4767</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_104704v5/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@=
ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_flip@2x-flip-vs-modeset=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3637">i915#3637</a>) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_flip@2x-flip-vs-modeset=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109274">fdo#109274</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-iclb4/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-skl9/igt@kms_flip_scaled_crc@flip-64=
bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1=
09271</a>) +234 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555=
</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +7 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-indfb-draw-pwrite.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/160">i915#160</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-kbl1/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +53 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:</=
p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +45 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +7 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v=
5/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-skl5/igt@kms_plane_alpha_blend@pipe-=
b-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_plane_multiple@atomic-=
pipe-b-tiling-yf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111615">fdo#111615</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe=
-c-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_plane_scaling@plane-do=
wnscale-with-pixel-format-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe=
-d-edp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_plane_scaling@plane-do=
wnscale-with-pixel-format-factor-0-25@pipe-d-edp-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb8/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb2/igt@kms_plane_scal=
ing@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-skl4/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5=
/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_psr@psr2_primary_page_f=
lip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3467">i915#3467</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@kms_psr@psr2_primary_page_f=
lip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109441">fdo#109441</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104704v5/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_vrr@flip-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@nouveau_crc@pipe-b-ctx-flip=
-skip-current-frame.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2530">i915#2530</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@nouveau_crc@pipe-b-ctx-flip=
-skip-current-frame.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2530">i915#2530</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@perf@per-context-mode-unpri=
vileged.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@perf@per-context-mode-unpri=
vileged.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-tglb7/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/s=
hard-tglb8/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_nv_sharing:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@prime_nv_test@i915_nv_shari=
ng.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109291">fdo#109291</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@prime_nv_test@i915_nv_shari=
ng.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109291">fdo#109291</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v5/shard-skl5/igt@sysfs_clients@pidname.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-snb2/igt@sysfs_clients@sema-50.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a>) +81 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-apl1/igt@sysfs_clients@sema-50.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-tglb1/igt@sysfs_clients@sema-50.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994"=
>i915#2994</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-glk7/igt@sysfs_clients@sema-50.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-iclb7/igt@sysfs_clients@sema-50.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994"=
>i915#2994</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v5/shard-kbl1/igt@sysfs_clients@sema-50.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-skl4/igt@sysfs_preempt_timeout@timeout@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
704v5/shard-skl7/igt@sysfs_preempt_timeout@timeout@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3259">i915#3259</a>=
)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-rkl-5/igt@fbdev@eof.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-6=
/igt@fbdev@eof.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb8/igt@feature_discovery@psr2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/s=
hard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11899/shard-apl6/igt@gem_create@create-massive.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v5/shard-apl1/igt@gem_create@create-massive.html">PASS</a> +1 similar =
issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11899/shard-tglb2/igt@gem_create@create-massive.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#499=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104704v5/shard-tglb7/igt@gem_create@create-massive.html">PASS</a> +1 simila=
r issue</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11899/shard-glk8/igt@gem_create@create-massive.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v5/shard-glk9/igt@gem_create@create-massive.html">PASS</a> +1 similar =
issue</p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11899/shard-tglu-8/igt@gem_create@create-massive.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#49=
91</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104704v5/shard-tglu-6/igt@gem_create@create-massive.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb4/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3070">i915=
#3070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104704v5/shard-iclb3/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i9=
15#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104704v5/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104704v5/shard-tglu-1/igt@gem_exec_fair@basic-none-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104704v5/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v5/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104704v5/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4704v5/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html">PASS</a> +6 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-rkl-1/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#111656</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704=
v5/shard-rkl-5/igt@gem_mmap_gtt@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-rkl-6/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704=
v5/shard-rkl-5/igt@gem_readwrite@beyond-eob.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11899/shard-iclb6/igt@gem_userptr_blits@input-checking.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i=
915#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104704v5/shard-iclb7/igt@gem_userptr_blits@input-checking.html">PASS=
</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11899/shard-kbl1/igt@gem_userptr_blits@input-checking.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i9=
15#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104704v5/shard-kbl1/igt@gem_userptr_blits@input-checking.html">PASS</=
a> +1 similar issue</p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11899/shard-rkl-6/igt@gem_userptr_blits@input-checking.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i=
915#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104704v5/shard-rkl-5/igt@gem_userptr_blits@input-checking.html">PASS=
</a> +1 similar issue</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11899/shard-snb4/igt@gem_userptr_blits@input-checking.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i9=
15#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104704v5/shard-snb2/igt@gem_userptr_blits@input-checking.html">PASS</=
a> +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11899/shard-skl7/igt@gem_userptr_blits@input-checking.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i9=
15#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104704v5/shard-skl1/igt@gem_userptr_blits@input-checking.html">PASS</=
a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-rkl-6/igt@gen9_exec_parse@allowed-single.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#252=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104704v5/shard-rkl-5/igt@gen9_exec_parse@allowed-single.html">PASS</a> +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-rkl-5/igt@i915_pm_dc@dc5-psr.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard=
-rkl-6/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6405">i91=
5#6405</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104704v5/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-rkl-5/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/=
shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-kbl4/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i9=
15#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104704v5/shard-kbl7/igt@i915_selftest@live@gt_heartbeat.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-snb2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#=
3921</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104704v5/shard-snb5/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104704v5/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">P=
ASS</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-skl10/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4939">i915#4939</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104704v5/shard-skl1/igt@kms_cursor_crc@cursor-suspend@pip=
e-c-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu=
-ytiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-6/igt@kms_draw_crc@d=
raw-method-xrgb2101010-mmap-cpu-ytiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104704v5/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104704v5/shard-apl2/igt@kms_flip@flip-vs-suspend-interrupt=
ible@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104704v5/shard-skl10/igt@kms_flip@plain-flip-fb-recrea=
te-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-rkl-6/igt@kms_frontb=
uffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> +13 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-rkl-5/igt@kms_plane@plane-panning-top-left@pipe-b-plane=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_104704v5/shard-rkl-6/igt@kms_plane@plane-panning-top-=
left@pipe-b-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-iclb1/igt@kms_plan=
e_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb8/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#1=
09642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11106=
8">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_104704v5/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104704v5/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_mmap_gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-rkl-5/igt@kms_psr@sprite_mmap_gtt.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v=
5/shard-rkl-6/igt@kms_psr@sprite_mmap_gtt.html">PASS</a> +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-tglb2/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104704v5/shard-tglb1/igt@kms_psr_stress_test@invalidat=
e-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104704v5/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@engines@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-skl4/igt@gem_exec_gttfill@engines@vecs0.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1092=
71</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i=
915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104704v5/shard-skl4/igt@gem_exec_gttfill@engines@vecs0.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10=
9271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104704v5/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104704v5/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920"=
>i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_104704v5/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-snb4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-snb5/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_104704v5/shard-snb4/igt@runner@aborted.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915=
#4312</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11899/shard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4704v5/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v5/shard-apl3/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104704v5/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915=
#5257</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11899/shard-glk8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11899/shard-glk6/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_104704v5/shard-glk6/igt@runner@aborted.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312=
">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11899 -&gt; Patchwork_104704v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11899: 129221b1b68994b3721271ef9438823411f55556 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6585: 1b15ce5ec4cb6693daa9dff042e32f675ba8af76 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104704v5: 129221b1b68994b3721271ef9438823411f55556 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6570885376751043886==--
