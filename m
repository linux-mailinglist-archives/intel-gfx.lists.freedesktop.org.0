Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7525453CB90
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 16:33:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9766410E02D;
	Fri,  3 Jun 2022 14:33:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A5FA310E7DC;
 Fri,  3 Jun 2022 14:33:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97FF7A7E03;
 Fri,  3 Jun 2022 14:33:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6553081211124466222=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Fri, 03 Jun 2022 14:33:46 -0000
Message-ID: <165426682660.17721.13470563506990721631@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220603093830.1529520-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220603093830.1529520-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?es_integer_overflow_or_integer_truncation_issues_in_page_lookup?=
 =?utf-8?q?s=2C_ttm_place_configuration_and_scatterlist_creation_=28rev2?=
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

--===============6553081211124466222==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation (rev2)
URL   : https://patchwork.freedesktop.org/series/104704/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11726_full -> Patchwork_104704v2_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104704v2_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_properties@crtc-properties-legacy:
    - {shard-rkl}:        [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - {shard-rkl}:        [SKIP][3] ([i915#2920]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@prime_self_import@reimport-vs-gem_close-race:
    - {shard-rkl}:        [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-1/igt@prime_self_import@reimport-vs-gem_close-race.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-5/igt@prime_self_import@reimport-vs-gem_close-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_104704v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - shard-skl:          NOTRUN -> [SKIP][7] ([fdo#109271]) +196 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_eio@kms:
    - shard-tglb:         NOTRUN -> [FAIL][9] ([i915#5784])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([i915#4525]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][12] ([i915#6141])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          NOTRUN -> [FAIL][13] ([i915#2842]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#2842]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][20] ([i915#2842])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         NOTRUN -> [FAIL][21] ([i915#2849])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-tglb:         NOTRUN -> [FAIL][22] ([i915#2842])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#4613]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk7/igt@gem_lmem_swapping@random-engines.html
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#4613])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@gem_lmem_swapping@random-engines.html
    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#4613])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@gem_lmem_swapping@random-engines.html
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#4613])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl6/igt@gem_lmem_swapping@random-engines.html
    - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#4613])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#4613]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([i915#4270]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
    - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#4270]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3323])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][33] ([i915#3318])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl4/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180]) +6 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-apl1/igt@gem_workarounds@suspend-resume.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl6/igt@gem_workarounds@suspend-resume.html

  * igt@gen3_render_linear_blits:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109289])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@gen3_render_linear_blits.html
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#109289])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([i915#2856])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@gen9_exec_parse@batch-without-end.html
    - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#2527] / [i915#2856])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#110892])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#111644] / [i915#1397] / [i915#2411])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109506] / [i915#2411])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109293] / [fdo#109506])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#5723])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@i915_query@test-query-geometry-subslices.html
    - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#5723])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([i915#5286])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
    - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#5286])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][48] ([i915#3763])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#110723])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#3886]) +10 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl4/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#6095])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#111615] / [i915#3689])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#3886]) +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#3689]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#3689] / [i915#3886])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
    - shard-glk:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#3886]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk7/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109278] / [i915#3886]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#3886]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +112 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl6/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-glk:          NOTRUN -> [SKIP][60] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk4/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109284] / [fdo#111827])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html
    - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109284] / [fdo#111827])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-snb:          NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-snb5/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][67] ([i915#1319])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109278]) +12 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][69] -> [INCOMPLETE][70] ([i915#4939])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#3359]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#3319]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-32x32-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#109279] / [i915#3359])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109274] / [fdo#109278])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][76] ([i915#2346])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][77] -> [FAIL][78] ([i915#2346] / [i915#533])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#533]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_draw_crc@draw-method-rgb565-render-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#5287])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_draw_crc@draw-method-rgb565-render-4tiled.html
    - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#5287])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_draw_crc@draw-method-rgb565-render-4tiled.html

  * igt@kms_flip@2x-plain-flip:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109274])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#2587])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-iclb:         [PASS][84] -> [SKIP][85] ([i915#3701])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][86] -> [DMESG-WARN][87] ([i915#180]) +5 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109280]) +7 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271]) +68 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-snb:          NOTRUN -> [SKIP][90] ([fdo#109271]) +184 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [PASS][91] -> [DMESG-WARN][92] ([i915#1982])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([fdo#109280] / [fdo#111825]) +7 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#533])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][95] ([fdo#108145] / [i915#265])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][96] ([i915#265]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][97] ([fdo#108145] / [i915#265]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][98] ([i915#265])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-glk:          NOTRUN -> [FAIL][99] ([i915#265])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][100] ([i915#265])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][101] ([fdo#111615]) +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][102] -> [SKIP][103] ([i915#5176]) +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb8/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#5176]) +3 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-edp-1.html
    - shard-iclb:         NOTRUN -> [SKIP][105] ([i915#5176]) +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][106] ([fdo#109271]) +87 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#658]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
    - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#2920])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
    - shard-glk:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#658])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#111068] / [i915#658])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#658]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl4/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-iclb:         [PASS][112] -> [SKIP][113] ([fdo#109642] / [fdo#111068] / [i915#658])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb8/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][114] -> [SKIP][115] ([fdo#109441]) +2 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-iclb:         NOTRUN -> [SKIP][116] ([i915#5289])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
    - shard-tglb:         NOTRUN -> [SKIP][117] ([i915#5289])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglb:         NOTRUN -> [SKIP][118] ([fdo#111615] / [i915#5289])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-iclb:         NOTRUN -> [SKIP][119] ([i915#3555])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_setmode@basic-clone-single-crtc.html
    - shard-tglb:         NOTRUN -> [SKIP][120] ([i915#3555])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglb:         NOTRUN -> [SKIP][121] ([i915#2437])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@kms_writeback@writeback-fb-id.html
    - shard-glk:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#2437])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk5/igt@kms_writeback@writeback-fb-id.html
    - shard-iclb:         NOTRUN -> [SKIP][123] ([i915#2437])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@kms_writeback@writeback-fb-id.html
    - shard-apl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#2437])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-a-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][125] ([i915#2530]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@nouveau_crc@pipe-a-source-outp-complete.html
    - shard-iclb:         NOTRUN -> [SKIP][126] ([i915#2530])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@nouveau_crc@pipe-a-source-outp-complete.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109278] / [i915#2530])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@perf_pmu@rc6-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][128] ([i915#180])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@perf_pmu@rc6-suspend.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-tglb:         NOTRUN -> [SKIP][129] ([fdo#109291]) +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@prime_nv_api@i915_nv_import_twice.html
    - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#109291]) +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@sw_sync@sync_multi_timeline_wait:
    - shard-snb:          NOTRUN -> [FAIL][131] ([i915#6140])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-snb5/igt@sw_sync@sync_multi_timeline_wait.html
    - shard-skl:          NOTRUN -> [FAIL][132] ([i915#6140])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl4/igt@sw_sync@sync_multi_timeline_wait.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#2994])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@split-50:
    - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#2994])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@sysfs_clients@split-50.html
    - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#2994])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@sysfs_clients@split-50.html
    - shard-glk:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#2994])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk5/igt@sysfs_clients@split-50.html
    - shard-iclb:         NOTRUN -> [SKIP][137] ([i915#2994])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-iclb:         [DMESG-WARN][138] ([i915#2867]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb6/igt@device_reset@unbind-reset-rebind.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb5/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_create@create-massive:
    - shard-apl:          [DMESG-WARN][140] ([i915#4991]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-apl7/igt@gem_create@create-massive.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl6/igt@gem_create@create-massive.html
    - shard-tglb:         [DMESG-WARN][142] ([i915#4991]) -> [PASS][143] +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-tglb2/igt@gem_create@create-massive.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@gem_create@create-massive.html
    - shard-glk:          [DMESG-WARN][144] ([i915#4991]) -> [PASS][145] +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-glk8/igt@gem_create@create-massive.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk7/igt@gem_create@create-massive.html
    - shard-kbl:          [DMESG-WARN][146] ([i915#4991]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl1/igt@gem_create@create-massive.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@gem_create@create-massive.html
    - shard-skl:          [DMESG-WARN][148] ([i915#4991]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-skl10/igt@gem_create@create-massive.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl4/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][150] ([i915#180]) -> [PASS][151] +2 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@in-flight-1us:
    - shard-tglb:         [TIMEOUT][152] ([i915#3063]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-tglb5/igt@gem_eio@in-flight-1us.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@gem_eio@in-flight-1us.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [SKIP][154] ([i915#4525]) -> [PASS][155] +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][156] ([i915#2842]) -> [PASS][157] +2 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - {shard-tglu}:       [FAIL][158] ([i915#2842]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-snb:          [SKIP][160] ([fdo#109271]) -> [PASS][161] +5 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-snb6/igt@gem_exec_flush@basic-uc-pro-default.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-snb2/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_userptr_blits@input-checking:
    - shard-iclb:         [DMESG-WARN][162] ([i915#4991]) -> [PASS][163] +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb5/igt@gem_userptr_blits@input-checking.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@gem_userptr_blits@input-checking.html
    - {shard-rkl}:        [DMESG-WARN][164] ([i915#4991]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-1/igt@gem_userptr_blits@input-checking.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-5/igt@gem_userptr_blits@input-checking.html
    - shard-snb:          [DMESG-WARN][166] ([i915#4991]) -> [PASS][167] +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-snb2/igt@gem_userptr_blits@input-checking.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-snb2/igt@gem_userptr_blits@input-checking.html
    - {shard-dg1}:        [DMESG-WARN][168] ([i915#4991]) -> [PASS][169] +1 similar issue
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-dg1-15/igt@gem_userptr_blits@input-checking.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-dg1-17/igt@gem_userptr_blits@input-checking.html
    - {shard-tglu}:       [DMESG-WARN][170] ([i915#4991]) -> [PASS][171] +1 similar issue
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-tglu-5/igt@gem_userptr_blits@input-checking.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-tglu-4/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][172] ([i915#5566] / [i915#716]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_backlight@bad-brightness:
    - {shard-rkl}:        [SKIP][174] ([i915#3012]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-2/igt@i915_pm_backlight@bad-brightness.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_dc@dc5-psr:
    - {shard-rkl}:        [SKIP][176] ([i915#658]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-5/igt@i915_pm_dc@dc5-psr.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][178] ([i915#454]) -> [PASS][179]
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - {shard-rkl}:        [SKIP][180] ([i915#1845] / [i915#4098]) -> [PASS][181] +18 similar issues
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_color@pipe-a-legacy-gamma:
    - {shard-dg1}:        [SKIP][182] ([i915#1836]) -> [PASS][183] +10 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-dg1-17/igt@kms_color@pipe-a-legacy-gamma.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-dg1-19/igt@kms_color@pipe-a-legacy-gamma.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - {shard-rkl}:        [SKIP][184] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][185] +2 similar issues
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-5/igt@kms_color@pipe-b-ctm-green-to-red.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - {shard-rkl}:        [SKIP][186] ([fdo#112022] / [i915#4070]) -> [PASS][187] +4 similar issues
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - {shard-rkl}:        [SKIP][188] ([fdo#111825] / [i915#4070]) -> [PASS][189] +4 similar issues
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - {shard-rkl}:        [SKIP][190] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][191] +2 similar issues
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][192] ([i915#180] / [i915#1982]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-skl:          [FAIL][194] ([i915#2122]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-skl9/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl10/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [FAIL][196] ([i915#4911]) -> [PASS][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][198] ([i915#3701]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - {shard-dg1}:        [SKIP][200] ([i915#5721]) -> [PASS][201]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-apl:          [DMESG-WARN][202] ([i915#180]) -> [PASS][203] +3 similar issues
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-apl8/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_invalid_mode@bad-htotal:
    - {shard-rkl}:        [SKIP][204] ([i915#4278]) -> [PASS][205] +1 similar issue
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-2/igt@kms_invalid_mode@bad-htotal.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_invalid_mode@bad-htotal.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence:
    - {shard-rkl}:        [SKIP][206] ([i915#1849] / [i915#4098]) -> [PASS][207] +19 similar issues
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-5/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [INCOMPLETE][208] ([i915#4444]) -> [PASS][209]
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - {shard-rkl}:        [SKIP][210] ([i915#1849] / [i915#3558]) -> [PASS][211] +1 similar issue
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid:
    - {shard-rkl}:        [SKIP][212] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][213] +3 similar issues
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
    - {shard-rkl}:        [SKIP][214] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][215] +1 similar issue
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [SKIP][216] ([i915#5235]) -> [PASS][217] +2 similar issues
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][218] ([fdo#109441]) -> [PASS][219] +2 similar issues
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@sprite_plane_onoff:
    - {shard-rkl}:        [SKIP][220] ([i915#1072]) -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-rkl-5/igt@kms_psr@sprite_plane_onoff.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_sequence@get-forked-busy@hdmi-a-1-pipe-b:
    - {shard-dg1}:        [FAIL][222] -> [PASS][223] +3 similar issues
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-dg1-17/igt@kms_sequence@get-forked-busy@hdmi-a-1-pipe-b.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-dg1-19/igt@kms_sequence@get-forked-busy@hdmi-a-1-pipe-b.html

  * igt@kms_vblank@pipe-b-wait-busy:
    - {shard-dg1}:        [FAIL][224] ([i915#4241]) -> [PASS][225] +1 similar issue
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-dg1-17/igt@kms_vblank@pipe-b-wait-busy.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-dg1-19/igt@kms_vblank@pipe-b-wait-busy.html

  
#### Warnings ####

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
    - shard-skl:          [SKIP][226] ([fdo#109271] / [i915#1888]) -> [SKIP][227] ([fdo#109271]) +1 similar issue
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-skl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-kbl:          [DMESG-FAIL][228] ([i915#180]) -> [DMESG-WARN][229] ([i915#180])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][230] ([i915#658]) -> [SKIP][231] ([i915#2920]) +2 similar issues
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][232] ([i915#2920]) -> [SKIP][233] ([i915#658])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb4/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][234] ([i915#2920]) -> [SKIP][235] ([fdo#111068] / [i915#658])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][236], [FAIL][237], [FAIL][238], [FAIL][239], [FAIL][240]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][241], [FAIL][242], [FAIL][243], [FAIL][244], [FAIL][245]) ([fdo#109271] / [i915#180] / [i915#4312] / [i915#5257])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-apl8/igt@runner@aborted.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-apl7/igt@runner@aborted.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-apl7/igt@runner@aborted.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-apl8/igt@runner@aborted.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-apl3/igt@runner@aborted.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl6/igt@runner@aborted.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@runner@aborted.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@runner@aborted.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl4/igt@runner@aborted.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl8/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][246], [FAIL][247], [FAIL][248], [FAIL][249], [FAIL][250], [FAIL][251], [FAIL][252], [FAIL][253], [FAIL][254], [FAIL][255], [FAIL][256], [FAIL][257]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][258], [FAIL][259], [FAIL][260], [FAIL][261], [FAIL][262], [FAIL][263], [FAIL][264], [FAIL][265], [FAIL][266], [FAIL][267], [FAIL][268], [FAIL][269], [FAIL][270], [FAIL][271]) ([fdo#109271] / [i915#180] / [i915#4312] / [i915#5257])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl7/igt@runner@aborted.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl4/igt@runner@aborted.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl6/igt@runner@aborted.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl4/igt@runner@aborted.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl7/igt@runner@aborted.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl7/igt@runner@aborted.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl4/igt@runner@aborted.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl6/igt@runner@aborted.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl7/igt@runner@aborted.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl7/igt@runner@aborted.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl1/igt@runner@aborted.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl1/igt@runner@aborted.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl1/igt@runner@aborted.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl1/igt@runner@aborted.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl1/igt@runner@aborted.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl1/igt@runner@aborted.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@runner@aborted.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl6/igt@runner@aborted.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@runner@aborted.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@runner@aborted.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl6/igt@runner@aborted.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@runner@aborted.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@runner@aborted.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@runner@aborted.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@runner@aborted.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3736]: https://gitlab.freedesktop.org/drm/intel/issues/3736
  [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3963]: https://gitlab.freedesktop.org/drm/intel/issues/3963
  [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4241]: https://gitlab.freedesktop.org/drm/intel/issues/4241
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4444]: https://gitlab.freedesktop.org/drm/intel/issues/4444
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5266]: https://gitlab.freedesktop.org/drm/intel/issues/5266
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6126]: https://gitlab.freedesktop.org/drm/intel/issues/6126
  [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
  [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716


Build changes
-------------

  * Linux: CI_DRM_11726 -> Patchwork_104704v2

  CI-20190529: 20190529
  CI_DRM_11726: 74ea63ad8ffc71b8345436147517253dcabd4793 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6505: edb1a467fb622b23b927e28ff603fa43851fea97 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104704v2: 74ea63ad8ffc71b8345436147517253dcabd4793 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/index.html

--===============6553081211124466222==
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
rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/104704/">https://patchwork.freedesktop.org/series/104704/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104704v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11726_full -&gt; Patchwork_104704v=
2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
104704v2_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_properties@crtc-properties-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104704v2/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html">SKIP<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_psr2_sf@overlay-primary-update=
-sf-dmg-area.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@reimport-vs-gem_close-race:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-1/igt@prime_self_import@reimport-vs-gem_close-race.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104704v2/shard-rkl-5/igt@prime_self_import@reimport-vs-gem_close-ra=
ce.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104704v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@gem_ctx_persistence@engines=
-hang@bcs0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a>) +196 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-snb2/igt@gem_ctx_persistence@legacy-=
engines-mixed-process.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@gem_eio@kms.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#578=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104704v2/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-apl4/igt@gem_exec_fair@basic-deadlin=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6141">i915#6141</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@gem_exec_fair@basic-none@vc=
s1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2842">i915#2842</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v2/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4704v2/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v=
2/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-glk7/igt@gem_exec_fair@basic-throttle=
@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@gem_exec_fair@basic-throttl=
e@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2849">i915#2849</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@gem_exec_fair@basic-throttl=
e@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-skl1/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-glk7/igt@gem_lmem_swapping@random-eng=
ines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@gem_lmem_swapping@random-eng=
ines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-apl6/igt@gem_lmem_swapping@random-eng=
ines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@gem_pxp@verify-pxp-key-chan=
ge-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@gem_pxp@verify-pxp-key-chan=
ge-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-apl4/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-apl1/igt@gem_workarounds@suspend-resume.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v=
2/shard-apl6/igt@gem_workarounds@suspend-resume.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +6=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@gen3_render_linear_blits.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
289">fdo#109289</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@gen3_render_linear_blits.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
289">fdo#109289</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@gen9_exec_parse@batch-witho=
ut-end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2856">i915#2856</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@gen9_exec_parse@batch-witho=
ut-end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2856">i915#2856</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@i915_pm_rpm@modeset-non-lps=
p-stress-no-wait.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D110892">fdo#110892</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@i915_pm_rpm@modeset-non-lps=
p-stress-no-wait.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111644">fdo#111644</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1397">i915#1397</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2411">i915#2411</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@i915_pm_rpm@modeset-pc8-res=
idency-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109506">fdo#109506</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2411">i915#2411</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@i915_pm_rpm@modeset-pc8-res=
idency-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109506">fdo#109506</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@i915_query@test-query-geome=
try-subslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5723">i915#5723</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@i915_query@test-query-geome=
try-subslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5723">i915#5723</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_big_fb@4-tiled-addfb-si=
ze-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5286">i915#5286</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_big_fb@4-tiled-addfb-si=
ze-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5286">i915#5286</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-s=
tride-64bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3763">i915#3763</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-skl4/igt@kms_ccs@pipe-a-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +10 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_ccs@pipe-a-crc-sprite-=
planes-basic-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_ccs@pipe-b-crc-primary=
-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@kms_ccs@pipe-b-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3689">i915#3689</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_ccs@pipe-c-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-glk7/igt@kms_ccs@pipe-c-missing-ccs-b=
uffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</=
p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_ccs@pipe-c-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</=
p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@kms_ccs@pipe-c-missing-ccs-b=
uffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</=
p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-apl6/igt@kms_ccs@pipe-d-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +112 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-glk4/igt@kms_chamelium@dp-hpd-enable=
-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_chamelium@hdmi-hpd-enab=
le-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_chamelium@hdmi-hpd-enab=
le-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-snb5/igt@kms_chamelium@vga-hpd-witho=
ut-ddc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@kms_color_chamelium@pipe-a-=
ctm-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-skl4/igt@kms_color_chamelium@pipe-a-=
ctm-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@kms_color_chamelium@pipe-a-=
ctm-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@kms_content_protection@atom=
ic-dpms.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_cursor_crc@pipe-a-curs=
or-max-size-rapid-movement.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v2/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i91=
5#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_cursor_crc@pipe-c-curs=
or-max-size-onscreen.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3359">i915#3359</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@kms_cursor_crc@pipe-d-curs=
or-32x32-sliding.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3319">i915#3319</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@kms_cursor_crc@pipe-d-curs=
or-512x512-rapid-movement.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109279">fdo#109279</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_cursor_legacy@2x-long-c=
ursor-vs-flip-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_cursor_legacy@2x-long-c=
ursor-vs-flip-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_104704v2/shard-glk3/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@kms_cursor_legacy@pipe-d-si=
ngle-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/533">i915#533</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-render-4tiled:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_draw_crc@draw-method-rg=
b565-render-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5287">i915#5287</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_draw_crc@draw-method-rg=
b565-render-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5287">i915#5287</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
74">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_104704v2/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-64bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v2/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +7 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +68 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-snb5/igt@kms_frontbuffer_tracking@fb=
cpsr-rgb101010-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +184 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-p=
write.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_104704v2/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb5=
65-draw-pwrite.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +7 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@kms_pipe_crc_basic@read-crc=
-pipe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@kms_plane_alpha_blend@pipe-=
a-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@kms_plane_alpha_blend@pipe-=
a-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-glk4/igt@kms_plane_alpha_blend@pipe-=
b-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-apl6/igt@kms_plane_alpha_blend@pipe-c=
-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-glk7/igt@kms_plane_alpha_blend@pipe-c=
-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c=
-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_plane_multiple@atomic-=
pipe-d-tiling-yf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111615">fdo#111615</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-=
a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb8/igt@kms_plane_scaling@plane-downscale-with-pixel-=
format-factor-0-5@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb2/igt@kms_plane_s=
caling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915=
#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-ed=
p-1:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@kms_plane_scaling@plane-dow=
nscale-with-rotation-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 simila=
r issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@kms_plane_scaling@plane-dow=
nscale-with-rotation-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 simila=
r issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-glk7/igt@kms_plane_scaling@planes-up=
scale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
>) +87 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@kms_psr2_sf@overlay-plane-up=
date-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2920">i915#2920</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-glk5/igt@kms_psr2_sf@overlay-plane-up=
date-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-skl4/igt@kms_psr2_su@page_flip-nv12.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704=
v2/shard-iclb8/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> /=
 <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#1110=
68</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i9=
15#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704=
v2/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_rotation_crc@primary-4-=
tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5289">i915#5289</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_rotation_crc@primary-4-=
tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5289">i915#5289</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@kms_setmode@basic-clone-sin=
gle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb2/igt@kms_setmode@basic-clone-sin=
gle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3555">i915#3555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-glk5/igt@kms_writeback@writeback-fb-i=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@kms_writeback@writeback-fb-i=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-complete:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@nouveau_crc@pipe-a-source-o=
utp-complete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2530">i915#2530</a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@nouveau_crc@pipe-a-source-o=
utp-complete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2530">i915#2530</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-iclb6/igt@nouveau_crc@pipe-d-source-=
rg.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@perf_pmu@rc6-suspend.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@prime_nv_api@i915_nv_import=
_twice.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109291">fdo#109291</a>) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@prime_nv_api@i915_nv_import=
_twice.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109291">fdo#109291</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_multi_timeline_wait:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-snb5/igt@sw_sync@sync_multi_timeline_=
wait.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6140">i915#6140</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-skl4/igt@sw_sync@sync_multi_timeline_=
wait.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6140">i915#6140</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104704v2/shard-skl9/igt@sysfs_clients@pidname.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@sysfs_clients@split-50.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-tglb7/igt@sysfs_clients@split-50.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-glk5/igt@sysfs_clients@split-50.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-iclb3/igt@sysfs_clients@split-50.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb6/igt@device_reset@unbind-reset-rebind.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2867">=
i915#2867</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104704v2/shard-iclb5/igt@device_reset@unbind-reset-rebind.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11726/shard-apl7/igt@gem_create@create-massive.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v2/shard-apl6/igt@gem_create@create-massive.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11726/shard-tglb2/igt@gem_create@create-massive.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#499=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104704v2/shard-tglb2/igt@gem_create@create-massive.html">PASS</a> +1 simila=
r issue</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11726/shard-glk8/igt@gem_create@create-massive.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v2/shard-glk7/igt@gem_create@create-massive.html">PASS</a> +1 similar =
issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11726/shard-kbl1/igt@gem_create@create-massive.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04704v2/shard-kbl7/igt@gem_create@create-massive.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11726/shard-skl10/igt@gem_create@create-massive.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#499=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104704v2/shard-skl4/igt@gem_create@create-massive.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104704v2/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.h=
tml">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-tglb5/igt@gem_eio@in-flight-1us.html">TIMEOUT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704=
v2/shard-tglb7/igt@gem_eio@in-flight-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104704v2/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4704v2/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104704v2/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-snb6/igt@gem_exec_flush@basic-uc-pro-default.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104704v2/shard-snb2/igt@gem_exec_flush@basic-uc-pro-default.html">PAS=
S</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11726/shard-iclb5/igt@gem_userptr_blits@input-checking.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i=
915#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104704v2/shard-iclb3/igt@gem_userptr_blits@input-checking.html">PASS=
</a> +1 similar issue</p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11726/shard-rkl-1/igt@gem_userptr_blits@input-checking.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i=
915#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104704v2/shard-rkl-5/igt@gem_userptr_blits@input-checking.html">PASS=
</a></p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11726/shard-snb2/igt@gem_userptr_blits@input-checking.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i9=
15#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104704v2/shard-snb2/igt@gem_userptr_blits@input-checking.html">PASS</=
a> +1 similar issue</p>
</li>
<li>
<p>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11726/shard-dg1-15/igt@gem_userptr_blits@input-checking.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">=
i915#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104704v2/shard-dg1-17/igt@gem_userptr_blits@input-checking.html">PA=
SS</a> +1 similar issue</p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11726/shard-tglu-5/igt@gem_userptr_blits@input-checking.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">=
i915#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104704v2/shard-tglu-4/igt@gem_userptr_blits@input-checking.html">PA=
SS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-glk9/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5=
566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i=
915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104704v2/shard-glk4/igt@gen9_exec_parse@allowed-all.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-2/igt@i915_pm_backlight@bad-brightness.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3=
012</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104704v2/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-5/igt@i915_pm_dc@dc5-psr.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard=
-rkl-6/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard=
-iclb6/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104704v2/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">P=
ASS</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-legacy-gamma:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-dg1-17/igt@kms_color@pipe-a-legacy-gamma.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#183=
6</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104704v2/shard-dg1-19/igt@kms_color@pipe-a-legacy-gamma.html">PASS</a> +10 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-green-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-5/igt@kms_color@pipe-b-ctm-green-to-red.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#=
1149</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849"=
>i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_color@pipe-b-ctm-green-to=
-red.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
12022">fdo#112022</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor=
-128x128-sliding.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-at=
omic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_cursor_legacy@basic=
-flip-before-cursor-atomic.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-render-x=
tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_draw_crc@dra=
w-method-xrgb2101010-render-xtiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915=
#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104704v2/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-skl9/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/212=
2">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104704v2/shard-skl10/igt@kms_flip@flip-vs-absolute-wf_vblank@a-e=
dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytileccs-upscaling.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4911">i915#4911</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-glk7/igt@kms_flip_scaled_cr=
c@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3701">i915#3701</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb4/igt@kms_flip_scaled_c=
rc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-mu=
ltidraw.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5721">i915#5721</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_104704v2/shard-dg1-19/igt@kms_frontbuffer_tracking@fb=
c-1p-pri-indfb-multidraw.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-apl8/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104704v2/shard-apl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.h=
tml">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-2/igt@kms_invalid_mode@bad-htotal.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4278">i915#4278</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
704v2/shard-rkl-6/igt@kms_invalid_mode@bad-htotal.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-5/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequ=
ence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_pipe_crc_basic@read-c=
rc-pipe-b-frame-sequence.html">PASS</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4444">i915#4444</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104704v2/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-cr=
c-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-a-planes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_plane@plane-=
panning-bottom-right-suspend@pipe-a-planes.html">PASS</a> +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-m=
id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_plane_alpha_blend=
@pipe-b-constant-alpha-mid.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
9">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3558">i915#3558</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104704v2/shard-rkl-6/igt@kms_plane_multiple@atomic-p=
ipe-a-tiling-y.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-iclb7/igt@kms_plan=
e_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104704v2/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-rkl-5/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1047=
04v2/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@hdmi-a-1-pipe-b:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-dg1-17/igt@kms_sequence@get-forked-busy@hdmi-a-1-pipe-b=
.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104704v2/shard-dg1-19/igt@kms_sequence@get-forked-busy@hdmi-a-1-pi=
pe-b.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-busy:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-dg1-17/igt@kms_vblank@pipe-b-wait-busy.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4241">i915#4241<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4704v2/shard-dg1-19/igt@kms_vblank@pipe-b-wait-busy.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-skl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-i=
ndfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-skl10/igt@kms_frontbuffe=
r_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-kbl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">D=
MESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104704v2/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104704v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-co=
ntinuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2920">i915#2920</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_104704v2/shard-iclb4/igt@kms_psr2_sf@overlay-plane-move-conti=
nuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104704v2/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#=
111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-apl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11726/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-apl8/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11726/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10470=
4v2/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl1/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104704v2/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-apl4/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_104704v2/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915=
#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257=
">i915#5257</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11726/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11726/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl4/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11726/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1726/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl6/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1172=
6/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl7/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11726/s=
hard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11726/shard-kbl1/igt@runner@aborted.html">FAIL=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002"=
>i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_104704v2/shard-kbl1/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/sh=
ard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl1/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4704v2/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104704v2/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_104704v2/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kb=
l6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2=
/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104704v2/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v2/shard-kbl4/igt@runner@a=
borted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11726 -&gt; Patchwork_104704v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11726: 74ea63ad8ffc71b8345436147517253dcabd4793 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6505: edb1a467fb622b23b927e28ff603fa43851fea97 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104704v2: 74ea63ad8ffc71b8345436147517253dcabd4793 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6553081211124466222==--
