Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E090C58D86C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Aug 2022 13:55:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D1E914A0D1;
	Tue,  9 Aug 2022 11:55:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA34F93867;
 Tue,  9 Aug 2022 11:54:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0CECA0078;
 Tue,  9 Aug 2022 11:54:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0102117570737124528=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin Paneer Selvam" <arunpravin.paneerselvam@amd.com>
Date: Tue, 09 Aug 2022 11:54:40 -0000
Message-ID: <166004608080.12845.16181710146024124092@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220809092230.2808-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220809092230.2808-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/6=5D_drm/ttm=3A_Add_new_callbacks_t?=
 =?utf-8?q?o_ttm_res_mgr?=
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

--===============0102117570737124528==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v5,1/6] drm/ttm: Add new callbacks to ttm res mgr
URL   : https://patchwork.freedesktop.org/series/107088/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11975_full -> Patchwork_107088v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (12 -> 13)
------------------------------

  Additional (1): shard-dg1 

Known issues
------------

  Here are the changes found in Patchwork_107088v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [FAIL][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#4386])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl3/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl8/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl8/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][51] ([i915#4991])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@gem_create@create-massive.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [PASS][52] -> [TIMEOUT][53] ([i915#3063])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([i915#4525]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][56] -> [FAIL][57] ([i915#2842]) +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][58] -> [SKIP][59] ([i915#2190])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-tglb3/igt@gem_huc_copy@huc-copy.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#4613])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@gem_lmem_swapping@verify-ccs.html
    - shard-tglb:         NOTRUN -> [SKIP][61] ([i915#4613])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl7/igt@gem_lmem_swapping@verify-random-ccs.html
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][64] ([i915#2658])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#4270]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          NOTRUN -> [DMESG-WARN][66] ([i915#180])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl4/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][67] -> [DMESG-WARN][68] ([i915#180]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen3_render_mixed_blits:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#109289])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@gen3_render_mixed_blits.html
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109289])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@gen3_render_mixed_blits.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][71] -> [DMESG-WARN][72] ([i915#5566] / [i915#716])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl4/igt@gen9_exec_parse@allowed-single.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#2856])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@gen9_exec_parse@bb-start-param.html
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#2527] / [i915#2856]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][75] -> [FAIL][76] ([i915#454])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#110892])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#111644] / [i915#1397] / [i915#2411])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#109506] / [i915#2411])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][80] ([i915#2521]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#5286])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271]) +54 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([fdo#111614]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#6095]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109278] / [i915#3886]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#3689]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3886]) +3 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl8/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109278]) +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3886]) +5 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#3689] / [i915#3886])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([fdo#111615] / [i915#3689])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl1/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-frame-dump:
    - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl4/igt@kms_chamelium@vga-frame-dump.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_color_chamelium@ctm-green-to-red:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_color_chamelium@ctm-green-to-red.html
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_color_chamelium@ctm-green-to-red.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#3116] / [i915#3299])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          NOTRUN -> [TIMEOUT][99] ([i915#1319])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@kms_content_protection@srm.html
    - shard-apl:          NOTRUN -> [TIMEOUT][100] ([i915#1319])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-skl:          [PASS][101] -> [FAIL][102] ([i915#2346])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([i915#5287])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled.html
    - shard-iclb:         NOTRUN -> [SKIP][104] ([i915#5287])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled.html

  * igt@kms_flip@2x-busy-flip:
    - shard-tglb:         NOTRUN -> [SKIP][105] ([fdo#109274] / [fdo#111825] / [i915#3637]) +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_flip@2x-busy-flip.html
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109274])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_flip@2x-busy-flip.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][107] -> [FAIL][108] ([i915#2122]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#2672]) +7 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][110] ([i915#2672])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][111] -> [DMESG-WARN][112] ([i915#180]) +5 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-kbl:          NOTRUN -> [SKIP][113] ([fdo#109271]) +123 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][114] ([i915#6497]) +2 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-rte:
    - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109280]) +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([fdo#109280] / [fdo#111825]) +9 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([i915#3555]) +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][118] ([fdo#108145] / [i915#265])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-4:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([i915#5288])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-a-tiling-4.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][120] ([fdo#111615]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-x:
    - shard-apl:          NOTRUN -> [SKIP][121] ([fdo#109271]) +66 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl8/igt@kms_plane_multiple@atomic-pipe-d-tiling-x.html

  * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
    - shard-skl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#5776]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-c-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][123] ([i915#5176]) +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-c-edp-1.html
    - shard-iclb:         NOTRUN -> [SKIP][124] ([i915#5176]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][125] -> [SKIP][126] ([i915#5235]) +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][127] ([i915#5235]) +3 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-kbl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#658]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-tglb:         NOTRUN -> [SKIP][129] ([i915#2920])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-skl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#658]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-apl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#658])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl8/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-tglb:         NOTRUN -> [FAIL][132] ([i915#132] / [i915#3467])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_psr@psr2_cursor_plane_move.html
    - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109441])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][134] -> [SKIP][135] ([fdo#109441]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb3/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [PASS][136] -> [SKIP][137] ([i915#5519])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([fdo#111615] / [i915#5289])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][139] ([i915#3555]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_vrr@flip-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#2437])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#2437])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl4/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-c-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][142] ([i915#2530])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@nouveau_crc@pipe-c-ctx-flip-detection.html

  * igt@perf@polling:
    - shard-skl:          [PASS][143] -> [FAIL][144] ([i915#1542])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-skl10/igt@perf@polling.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@perf@polling.html

  * igt@perf@polling-parameterized:
    - shard-skl:          NOTRUN -> [FAIL][145] ([i915#5639])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@perf@polling-parameterized.html

  * igt@prime_nv_test@nv_write_i915_gtt_mmap_read:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([fdo#109291])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@prime_nv_test@nv_write_i915_gtt_mmap_read.html
    - shard-tglb:         NOTRUN -> [SKIP][147] ([fdo#109291])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@prime_nv_test@nv_write_i915_gtt_mmap_read.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-tglb:         NOTRUN -> [SKIP][148] ([fdo#109295])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@prime_vgem@fence-flip-hang.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][149] ([fdo#109271] / [i915#2994])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@create:
    - shard-iclb:         NOTRUN -> [SKIP][150] ([i915#2994])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@sysfs_clients@create.html
    - shard-tglb:         NOTRUN -> [SKIP][151] ([i915#2994])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@sysfs_clients@create.html

  * igt@sysfs_clients@split-10:
    - shard-kbl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#2994])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@sysfs_clients@split-10.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-skl:          [PASS][153] -> [FAIL][154] ([i915#1755])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-skl9/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl9/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-read:
    - {shard-rkl}:        [SKIP][155] ([i915#2582]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-1/igt@fbdev@unaligned-read.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-6/igt@fbdev@unaligned-read.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][157] ([i915#6268]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - {shard-rkl}:        [SKIP][159] ([i915#6252]) -> [PASS][160] +1 similar issue
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-1/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][161] ([i915#4525]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][163] ([i915#2846]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][165] ([i915#2842]) -> [PASS][166] +1 similar issue
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [FAIL][167] ([i915#2842]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - {shard-rkl}:        [SKIP][169] ([i915#3281]) -> [PASS][170] +10 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-read.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - {shard-rkl}:        [SKIP][171] ([i915#3282]) -> [PASS][172] +6 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-1/igt@gem_partial_pwrite_pread@reads-uncached.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [DMESG-WARN][173] ([i915#180]) -> [PASS][174] +7 similar issues
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl7/igt@gem_softpin@noreloc-s3.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@bb-secure:
    - {shard-rkl}:        [SKIP][175] ([i915#2527]) -> [PASS][176] +1 similar issue
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-1/igt@gen9_exec_parse@bb-secure.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-5/igt@gen9_exec_parse@bb-secure.html

  * igt@i915_pm_dc@dc6-dpms:
    - {shard-tglu}:       [FAIL][177] ([i915#3989] / [i915#454]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-tglu-1/igt@i915_pm_dc@dc6-dpms.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][179] ([i915#4281]) -> [PASS][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_sseu@full-enable:
    - {shard-rkl}:        [SKIP][181] ([i915#4387]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-2/igt@i915_pm_sseu@full-enable.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [INCOMPLETE][183] ([i915#2411]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-tglb1/igt@i915_selftest@live@execlists.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - shard-iclb:         [INCOMPLETE][185] ([i915#6106]) -> [PASS][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb7/igt@i915_selftest@live@hangcheck.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [DMESG-WARN][187] ([i915#180]) -> [PASS][188] +2 similar issues
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl4/igt@i915_suspend@debugfs-reader.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl8/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@cursor-random@pipe-a-hdmi-a-1-256x256:
    - shard-glk:          [DMESG-WARN][189] ([i915#118]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-glk8/igt@kms_cursor_crc@cursor-random@pipe-a-hdmi-a-1-256x256.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-glk9/igt@kms_cursor_crc@cursor-random@pipe-a-hdmi-a-1-256x256.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [FAIL][191] ([i915#2346]) -> [PASS][192] +1 similar issue
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@forked-bo@pipe-b:
    - shard-tglb:         [INCOMPLETE][193] -> [PASS][194]
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-tglb3/igt@kms_cursor_legacy@forked-bo@pipe-b.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_cursor_legacy@forked-bo@pipe-b.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - {shard-rkl}:        [SKIP][195] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][196] +6 similar issues
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][197] ([i915#79]) -> [PASS][198] +1 similar issue
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][199] ([i915#2122]) -> [PASS][200] +2 similar issues
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         [SKIP][201] ([i915#3555]) -> [PASS][202] +1 similar issue
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-glk:          [FAIL][203] ([i915#1888] / [i915#2546]) -> [PASS][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-glk1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - {shard-rkl}:        [SKIP][205] ([i915#1849] / [i915#4098]) -> [PASS][206] +10 similar issues
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-suspend.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_pipe_crc_basic@bad-source:
    - {shard-rkl}:        [SKIP][207] ([i915#1845] / [i915#4098]) -> [PASS][208] +13 similar issues
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-1/igt@kms_pipe_crc_basic@bad-source.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-6/igt@kms_pipe_crc_basic@bad-source.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - {shard-rkl}:        [SKIP][209] ([i915#1849] / [i915#3546] / [i915#4070] / [i915#4098]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-iclb:         [SKIP][211] ([i915#5176]) -> [PASS][212] +4 similar issues
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_psr@dpms:
    - {shard-rkl}:        [SKIP][213] ([i915#1072]) -> [PASS][214]
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-1/igt@kms_psr@dpms.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-6/igt@kms_psr@dpms.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][215] ([fdo#109441]) -> [PASS][216] +2 similar issues
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_universal_plane@universal-plane-pipe-b-functional:
    - {shard-rkl}:        [SKIP][217] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][218]
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-b-functional.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-b-functional.html

  * igt@perf@blocking:
    - shard-tglb:         [FAIL][219] ([i915#1542]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-tglb1/igt@perf@blocking.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb5/igt@perf@blocking.html

  * igt@perf@polling-parameterized:
    - {shard-rkl}:        [FAIL][221] ([i915#5639]) -> [PASS][222]
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-1/igt@perf@polling-parameterized.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-6/igt@perf@polling-parameterized.html

  * igt@testdisplay:
    - {shard-rkl}:        [SKIP][223] ([i915#4098]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-rkl-1/igt@testdisplay.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-6/igt@testdisplay.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-tglb:         [TIMEOUT][225] ([i915#3063]) -> [FAIL][226] ([i915#5784])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-tglb2/igt@gem_eio@kms.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb3/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [FAIL][227] ([i915#5784]) -> [TIMEOUT][228] ([i915#3063])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-tglb:         [SKIP][229] ([i915#2848]) -> [FAIL][230] ([i915#2842])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-tglb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tglb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          [FAIL][231] ([i915#2851]) -> [FAIL][232] ([i915#2842])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-glk6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-iclb:         [FAIL][233] ([i915#2684]) -> [WARN][234] ([i915#2684])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          [SKIP][235] ([fdo#109271] / [i915#3886]) -> [SKIP][236] ([fdo#109271] / [i915#1888] / [i915#3886])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-skl6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][237] ([i915#79]) -> [DMESG-FAIL][238] ([i915#1982])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][239] ([i915#2122]) -> [FAIL][240] ([i915#79])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-skl:          [SKIP][241] ([fdo#109271]) -> [SKIP][242] ([fdo#109271] / [i915#1888])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][243] ([i915#2920]) -> [SKIP][244] ([i915#658])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][245] ([i915#2920]) -> [SKIP][246] ([fdo#111068] / [i915#658]) +1 similar issue
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][247] ([fdo#111068] / [i915#658]) -> [SKIP][248] ([i915#2920])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][249], [FAIL][250], [FAIL][251], [FAIL][252], [FAIL][253], [FAIL][254]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][255], [FAIL][256], [FAIL][257], [FAIL][258], [FAIL][259], [FAIL][260], [FAIL][261]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl4/igt@runner@aborted.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl6/igt@runner@aborted.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl4/igt@runner@aborted.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl8/igt@runner@aborted.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl2/igt@runner@aborted.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl6/igt@runner@aborted.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl1/igt@runner@aborted.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl7/igt@runner@aborted.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl4/igt@runner@aborted.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl4/igt@runner@aborted.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl6/igt@runner@aborted.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl6/igt@runner@aborted.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl1/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][262], [FAIL][263], [FAIL][264], [FAIL][265], [FAIL][266], [FAIL][267], [FAIL][268], [FAIL][269], [FAIL][270], [FAIL][271], [FAIL][272], [FAIL][273]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][274], [FAIL][275], [FAIL][276], [FAIL][277], [FAIL][278], [FAIL][279], [FAIL][280], [FAIL][281], [FAIL][282], [FAIL][283]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl7/igt@runner@aborted.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl1/igt@runner@aborted.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl7/igt@runner@aborted.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl4/igt@runner@aborted.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl7/igt@runner@aborted.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl7/igt@runner@aborted.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl7/igt@runner@aborted.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl7/igt@runner@aborted.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl1/igt@runner@aborted.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl4/igt@runner@aborted.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl7/igt@runner@aborted.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl4/igt@runner@aborted.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@runner@aborted.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@runner@aborted.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@runner@aborted.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@runner@aborted.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@runner@aborted.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl1/igt@runner@aborted.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@runner@aborted.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@runner@aborted.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@runner@aborted.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2848]: https://gitlab.freedesktop.org/drm/intel/issues/2848
  [i915#2851]: https://gitlab.freedesktop.org/drm/intel/issues/2851
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
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
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5776]: https://gitlab.freedesktop.org/drm/intel/issues/5776
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6106]: https://gitlab.freedesktop.org/drm/intel/issues/6106
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6331]: https://gitlab.freedesktop.org/drm/intel/issues/6331
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6458]: https://gitlab.freedesktop.org/drm/intel/issues/6458
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11975 -> Patchwork_107088v1

  CI-20190529: 20190529
  CI_DRM_11975: 5b5ad12f8d971a9feeb54a3f3d58b48de8978ad2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6617: 22fa5ae83a8854f32e28b2c2a8581f4e36f78288 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107088v1: 5b5ad12f8d971a9feeb54a3f3d58b48de8978ad2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/index.html

--===============0102117570737124528==
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
<tr><td><b>Series:</b></td><td>series starting with [v5,1/6] drm/ttm: Add n=
ew callbacks to ttm res mgr</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/107088/">https://patchwork.freedesktop.org/series/107088/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107088v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11975_full -&gt; Patchwork_107088v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (12 -&gt; 13)</h2>
<p>Additional (1): shard-dg1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107088v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11975/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11975/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11975/shard-apl2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/sha=
rd-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11975/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl8/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl8/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11975/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11975/shard-apl8/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975=
/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11975/shard-apl7/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1975/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11975/shard-apl3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shar=
d-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11975/shard-apl3/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
088v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_107088v1/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl1/=
boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_107088v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/sh=
ard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_107088v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7088v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_107088v1/shard-apl3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_107088v1/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/sh=
ard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_107088v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7088v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_107088v1/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_107088v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/sh=
ard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_107088v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl8/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4386=
">i915#4386</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@gem_create@create-massive.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088=
v1/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107088v1/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#45=
25</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v=
1/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-=
tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4613">i915#4613</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-apl7/igt@gem_lmem_swapping@verify-ran=
dom-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@gem_lmem_swapping@verify-ran=
dom-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@gem_pxp@create-protected-b=
uffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4270">i915#4270</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-apl4/igt@gem_workarounds@suspend-res=
ume.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-apl7/igt@gem_workarounds@suspend-resume-context.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_107088v1/shard-apl1/igt@gem_workarounds@suspend-resume-context.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen3_render_mixed_blits:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@gen3_render_mixed_blits.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
89">fdo#109289</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@gen3_render_mixed_blits.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
89">fdo#109289</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-apl4/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v=
1/shard-apl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@gen9_exec_parse@bb-start-pa=
ram.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2856">i915#2856</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@gen9_exec_parse@bb-start-pa=
ram.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2856">i915#2856</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-icl=
b3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@i915_pm_rpm@modeset-non-lps=
p-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110892">fdo#110892</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@i915_pm_rpm@modeset-non-lps=
p-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111644">fdo#111644</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1397">i915#1397</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2411">i915#2411</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@i915_pm_rpm@modeset-pc8-re=
sidency-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109506">fdo#109506</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_async_flips@alternate-s=
ync-async-flip@pipe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2521">i915#2521</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-skl7/igt@kms_big_fb@4-tiled-max-hw-s=
tride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +54 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_big_fb@x-tiled-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_ccs@pipe-a-bad-aux-stri=
de-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_ccs@pipe-a-crc-sprite-=
planes-basic-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_ccs@pipe-b-crc-primary=
-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_ccs@pipe-c-bad-aux-str=
ide-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3689">i915#3689</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-apl8/igt@kms_ccs@pipe-c-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_ccs@pipe-c-bad-pixel-f=
ormat-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@kms_ccs@pipe-c-bad-rotation=
-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_ccs@pipe-c-crc-primary=
-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-kbl1/igt@kms_chamelium@hdmi-hpd-fast=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-frame-dump:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-apl4/igt@kms_chamelium@vga-frame-dum=
p.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_chamelium@vga-hpd-enabl=
e-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-green-to-red:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_color_chamelium@ctm-gre=
en-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_color_chamelium@ctm-gre=
en-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@kms_content_protection@srm.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1319">i915#1319</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-apl7/igt@kms_content_protection@srm.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1319">i915#1319</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-lega=
cy.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_107088v1/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-cr=
c-legacy.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_draw_crc@draw-method-xr=
gb2101010-pwrite-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5287">i915#5287</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_draw_crc@draw-method-xr=
gb2101010-pwrite-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5287">i915#5287</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-busy-flip:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_flip@2x-busy-flip.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109274=
">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3637">i915#3637</a>) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_flip@2x-busy-flip.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109274=
">fdo#109274</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_107088v1/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915=
#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07088v1/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +123 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6497">i915#6497</a>) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-rte:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-rte.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109280">fdo#109280</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +9 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_plane_alpha_blend@pipe-=
b-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_plane_multiple@atomic-=
pipe-a-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5288">i915#5288</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_plane_multiple@atomic-=
pipe-a-tiling-yf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111615">fdo#111615</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-x:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-apl8/igt@kms_plane_multiple@atomic-p=
ipe-d-tiling-x.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +66 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scale=
rs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_plane_scaling@invalid-n=
um-scalers@pipe-a-edp-1-invalid-num-scalers.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5776">i915#5776</a>) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-c-edp=
-1:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_plane_scaling@plane-ups=
cale-with-rotation-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 similar=
 issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_plane_scaling@plane-ups=
cale-with-rotation-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 similar=
 issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb4/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb2/igt@kms_plane_scal=
ing@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-=
edp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-kbl1/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_psr2_sf@primary-plane-=
update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-apl8/igt@kms_psr2_su@page_flip-p010.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_psr@psr2_cursor_plane_m=
ove.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3467">i915#3467</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@kms_psr@psr2_cursor_plane_m=
ove.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109441">fdo#109441</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-i=
clb3/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_107088v1/shard-iclb5/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@kms_vrr@flip-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-apl4/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@nouveau_crc@pipe-c-ctx-fli=
p-detection.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-skl10/igt@perf@polling.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@=
perf@polling.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@perf@polling-parameterized.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5639">i915#5639</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_write_i915_gtt_mmap_read:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@prime_nv_test@nv_write_i915=
_gtt_mmap_read.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109291">fdo#109291</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@prime_nv_test@nv_write_i915=
_gtt_mmap_read.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109291">fdo#109291</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-tglb7/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-skl2/igt@sysfs_clients@busy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-iclb1/igt@sysfs_clients@create.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994">=
i915#2994</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107088v1/shard-tglb2/igt@sysfs_clients@create.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994">=
i915#2994</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107088v1/shard-kbl4/igt@sysfs_clients@split-10.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-skl9/igt@sysfs_timeslice_duration@timeout@vecs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_107088v1/shard-skl9/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1755">i915#=
1755</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-1/igt@fbdev@unaligned-read.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/=
shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107088v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i=
915#6252</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_107088v1/shard-rkl-1/igt@gem_ctx_persistence@engines-hang@bcs0.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_107088v1/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
088v1/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107088v1/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7088v1/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07088v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html">PASS</a> +10 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-1/igt@gem_partial_pwrite_pread@reads-uncached.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282"=
>i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107088v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.h=
tml">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-kbl7/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10708=
8v1/shard-kbl4/igt@gem_softpin@noreloc-s3.html">PASS</a> +7 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-1/igt@gen9_exec_parse@bb-secure.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10708=
8v1/shard-rkl-5/igt@gen9_exec_parse@bb-secure.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-tglu-1/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10708=
8v1/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/=
shard-iclb7/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-2/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4387">i915#4387</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088=
v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-tglb1/igt@i915_selftest@live@execlists.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2411">i915=
#2411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107088v1/shard-tglb2/igt@i915_selftest@live@execlists.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6106">i915=
#6106</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107088v1/shard-iclb1/igt@i915_selftest@live@hangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-apl4/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#18=
0</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107088v1/shard-apl8/igt@i915_suspend@debugfs-reader.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random@pipe-a-hdmi-a-1-256x256:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-glk8/igt@kms_cursor_crc@cursor-random@pipe-a-hdmi-a-1-2=
56x256.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/118">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_107088v1/shard-glk9/igt@kms_cursor_crc@cursor-rand=
om@pipe-a-hdmi-a-1-256x256.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107088v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-curso=
r@atomic-transitions.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@forked-bo@pipe-b:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-tglb3/igt@kms_cursor_legacy@forked-bo@pipe-b.html">INCO=
MPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107088v1/shard-tglb7/igt@kms_cursor_legacy@forked-bo@pipe-b.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xt=
iled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-6/igt@kms_draw_crc@draw=
-method-xrgb8888-mmap-gtt-xtiled.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107088v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank=
-interruptible@a-hdmi-a2.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_107088v1/shard-skl9/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@b-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bp=
p-linear-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb3=
/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe=
-a-default-mode.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-glk1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-i=
ndfb-draw-mmap-wc.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1888">i915#1888</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2546">i915#2546</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-glk5/igt@kms_frontbuff=
er_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-suspend.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i9=
15#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_107088v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.h=
tml">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@bad-source:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-1/igt@kms_pipe_crc_basic@bad-source.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107088v1/shard-rkl-6/igt@kms_pipe_crc_basic@bad-source.html">PASS</a> =
+13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-m=
ax.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3546">i915#3546</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-6/igt@kms_plane_alpha=
_blend@pipe-b-constant-alpha-max.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-pixel-formats@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-iclb7/igt@=
kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-=
edp-1.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@dpms:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-1/igt@kms_psr@dpms.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl=
-6/igt@kms_psr@dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10708=
8v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-b-functional:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-b-fu=
nctional.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-6/igt@kms_universal_p=
lane@universal-plane-pipe-b-functional.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-tglb1/igt@perf@blocking.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-tg=
lb5/igt@perf@blocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-1/igt@perf@polling-parameterized.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1070=
88v1/shard-rkl-6/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-rkl-1/igt@testdisplay.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-rkl-=
6/igt@testdisplay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-tglb2/igt@gem_eio@kms.html">TIMEOUT</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-t=
glb3/igt@gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-tglb5/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1=
/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-tglb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2848">i915=
#2848</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107088v1/shard-tglb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2851">i915#2851<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7088v1/shard-glk6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_107088v1/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i=
915#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-skl6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12=
_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3886">i915#3886</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-skl4/igt@kms_ccs@pipe-c-ccs=
-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_107088v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@a-edp1.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_107088v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblan=
k-interruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-i=
ndfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_107088v1/shard-skl4/igt@kms_frontbuffer_track=
ing@fbc-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_107088v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-mov=
e-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_107088v1/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update=
-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107088v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11975/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl8/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11975/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-apl6/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl1/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7088v1/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl4/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_107088v1/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-apl6/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_107088v1/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-ap=
l1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11975/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11975/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl4/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11975/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1975/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1197=
5/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl4/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11975/shard-kbl4/igt@runner@aborted.html">FAIL=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002"=
>i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/sh=
ard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7088v1/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_107088v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_107088v1/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107088v1/shard-kb=
l7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_107088v1/shard-kbl7/igt@runner@aborted.html">FAIL<=
/a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
0">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11975 -&gt; Patchwork_107088v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11975: 5b5ad12f8d971a9feeb54a3f3d58b48de8978ad2 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6617: 22fa5ae83a8854f32e28b2c2a8581f4e36f78288 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107088v1: 5b5ad12f8d971a9feeb54a3f3d58b48de8978ad2 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0102117570737124528==--
