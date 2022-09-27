Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D455EBEC9
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 11:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1616710E2AA;
	Tue, 27 Sep 2022 09:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 592EF10E2AA;
 Tue, 27 Sep 2022 09:38:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29BDCA0099;
 Tue, 27 Sep 2022 09:38:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0526445775156585294=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Tue, 27 Sep 2022 09:38:04 -0000
Message-ID: <166427148415.24580.4966089032852097235@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220926153953.3836470-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220926153953.3836470-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?es_integer_overflow_or_integer_truncation_issues_in_page_lookup?=
 =?utf-8?q?s=2C_ttm_place_configuration_and_scatterlist_creation?=
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

--===============0526445775156585294==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation
URL   : https://patchwork.freedesktop.org/series/109063/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12185_full -> Patchwork_109063v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109063v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109063v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 11)
------------------------------

  Missing    (1): shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109063v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-tglb5/igt@i915_pm_backlight@fade_with_suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb2/igt@i915_pm_backlight@fade_with_suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_109063v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [FAIL][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#4386])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl8/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-snb:          NOTRUN -> [DMESG-WARN][53] ([i915#4528])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-snb5/igt@device_reset@unbind-reset-rebind.html

  * igt@feature_discovery@display-3x:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([i915#1839])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@feature_discovery@display-3x.html

  * igt@gem_busy@close-race:
    - shard-snb:          [PASS][55] -> [TIMEOUT][56] ([i915#5748])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-snb6/igt@gem_busy@close-race.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-snb4/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         NOTRUN -> [FAIL][57] ([i915#2410])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#280])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([i915#4525])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb2/igt@gem_exec_balancer@parallel.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb3/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#6344])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][62] -> [FAIL][63] ([i915#2842])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#2190])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#4613])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +43 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#4270]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@gem_pxp@create-valid-protected-context.html
    - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#4270])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#768]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#3297])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@gem_userptr_blits@unsync-unmap-after-close.html
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#3297])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][72] -> [DMESG-WARN][73] ([i915#180]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl2/igt@gem_workarounds@suspend-resume.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl6/igt@gem_workarounds@suspend-resume.html

  * igt@gen3_render_linear_blits:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109289]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb1/igt@gen3_render_linear_blits.html
    - shard-tglb:         NOTRUN -> [SKIP][75] ([fdo#109289]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb5/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#2856])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@gen9_exec_parse@bb-start-out.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#5286])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#111615])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#110723])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#3689]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb5/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs:
    - shard-snb:          NOTRUN -> [SKIP][81] ([fdo#109271]) +30 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-snb7/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs.html
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#3689] / [i915#6095])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb5/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
    - shard-glk:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-glk8/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109278] / [i915#3886]) +6 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#111615] / [i915#3689])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#6095]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-4_tiled_dg2_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109278]) +12 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_ccs@pipe-d-crc-primary-basic-4_tiled_dg2_rc_ccs.html

  * igt@kms_color_chamelium@ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_color_chamelium@ctm-negative.html

  * igt@kms_content_protection@uevent:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109300] / [fdo#111066])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@kms_content_protection@uevent.html
    - shard-apl:          NOTRUN -> [FAIL][91] ([i915#2105])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@kms_content_protection@uevent.html
    - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#1063])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109279] / [i915#3359])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#3359])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109274]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#109274] / [fdo#111825])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#2587] / [i915#2672]) +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#2587] / [i915#2672]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([i915#2672]) +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([i915#2672] / [i915#3555])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][101] ([i915#6497])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109280]) +14 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([fdo#109280] / [fdo#111825]) +5 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-glk:          NOTRUN -> [SKIP][104] ([fdo#109271]) +30 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-glk8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][105] ([i915#3555]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_hdr@bpc-switch-dpms.html
    - shard-iclb:         NOTRUN -> [SKIP][106] ([i915#3555]) +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([i915#5176]) +5 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-d-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#5176]) +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#5235]) +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#658]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
    - shard-tglb:         NOTRUN -> [SKIP][111] ([i915#2920])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
    - shard-glk:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#658])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-glk8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#111068] / [i915#658])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-iclb:         [PASS][114] -> [SKIP][115] ([fdo#109642] / [fdo#111068] / [i915#658])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb3/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][116] -> [SKIP][117] ([fdo#109441])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [PASS][118] -> [SKIP][119] ([i915#5519])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@perf@stress-open-close:
    - shard-glk:          [PASS][120] -> [INCOMPLETE][121] ([i915#5213])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-glk7/igt@perf@stress-open-close.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-glk5/igt@perf@stress-open-close.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-iclb:         NOTRUN -> [SKIP][122] ([fdo#112283])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@perf_pmu@event-wait@rcs0.html

  
#### Possible fixes ####

  * igt@gem_create@create-massive:
    - shard-snb:          [DMESG-WARN][123] ([i915#4991]) -> [PASS][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-snb7/igt@gem_create@create-massive.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-snb5/igt@gem_create@create-massive.html
    - shard-apl:          [DMESG-WARN][125] ([i915#4991]) -> [PASS][126] +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl2/igt@gem_create@create-massive.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@gem_create@create-massive.html
    - shard-tglb:         [DMESG-WARN][127] ([i915#4991]) -> [PASS][128] +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-tglb7/igt@gem_create@create-massive.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@gem_create@create-massive.html
    - shard-glk:          [DMESG-WARN][129] ([i915#4991]) -> [PASS][130] +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-glk2/igt@gem_create@create-massive.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-glk8/igt@gem_create@create-massive.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [FAIL][131] ([i915#6268]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][133] ([i915#2846]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-glk8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][135] ([i915#2842]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [DMESG-WARN][137] ([i915#180]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-iclb:         [INCOMPLETE][139] ([i915#6453]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb7/igt@gem_exec_whisper@basic-contexts-forked.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_userptr_blits@input-checking:
    - shard-iclb:         [DMESG-WARN][141] ([i915#4991]) -> [PASS][142] +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb6/igt@gem_userptr_blits@input-checking.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb1/igt@gem_userptr_blits@input-checking.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][143] ([i915#4281]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][145] ([i915#5176]) -> [PASS][146] +2 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [SKIP][147] ([i915#5235]) -> [PASS][148] +2 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb7/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][149] ([fdo#109441]) -> [PASS][150] +2 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][151] ([i915#588]) -> [SKIP][152] ([i915#658])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][153] ([i915#2920]) -> [SKIP][154] ([i915#658])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][155] ([i915#2920]) -> [SKIP][156] ([fdo#111068] / [i915#658]) +1 similar issue
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [FAIL][157] ([i915#5939]) -> [SKIP][158] ([fdo#109642] / [fdo#111068] / [i915#658])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][159], [FAIL][160], [FAIL][161]) ([i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][162], [FAIL][163]) ([fdo#109271] / [i915#180] / [i915#4312])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl8/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl1/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl2/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl6/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@runner@aborted.html
    - shard-snb:          ([FAIL][164], [FAIL][165]) ([i915#3002] / [i915#4312]) -> ([FAIL][166], [FAIL][167]) ([i915#4312])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-snb7/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-snb7/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-snb4/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-snb5/igt@runner@aborted.html
    - shard-glk:          ([FAIL][168], [FAIL][169]) ([i915#3002] / [i915#4312]) -> [FAIL][170] ([i915#4312])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-glk2/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-glk2/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-glk5/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5748]: https://gitlab.freedesktop.org/drm/intel/issues/5748
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6453]: https://gitlab.freedesktop.org/drm/intel/issues/6453
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768


Build changes
-------------

  * Linux: CI_DRM_12185 -> Patchwork_109063v1

  CI-20190529: 20190529
  CI_DRM_12185: ae6a4bb62f9524823ef5b00552e27231f7936da3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6663: 5e232c77cd762147e0882c337a984121fabb1c75 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109063v1: ae6a4bb62f9524823ef5b00552e27231f7936da3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/index.html

--===============0526445775156585294==
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
 issues in page lookups, ttm place configuration and scatterlist creation</=
td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/109063/">https://patchwork.freedesktop.org/series/109063/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109063v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12185_full -&gt; Patchwork_109063v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109063v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_109063v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
109063v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_backlight@fade_with_suspend:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-tglb5/igt@i915_pm_backlight@fade_with_suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09063v1/shard-tglb2/igt@i915_pm_backlight@fade_with_suspend.html">INCOMPLET=
E</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109063v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12185/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12185/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12185/shard-apl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/sha=
rd-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12185/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12185/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12185/shard-apl6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12185/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2185/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12185/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12185/shard-apl1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl8/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109=
063v1/shard-apl1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_109063v1/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109063v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/sh=
ard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109063v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9063v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109063v1/shard-apl3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109063v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/sh=
ard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109063v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9063v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109063v1/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109063v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/sh=
ard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109063v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl8/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4386=
">i915#4386</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-snb5/igt@device_reset@unbind-reset-r=
ebind.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@feature_discovery@display-=
3x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-snb6/igt@gem_busy@close-race.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-snb=
4/igt@gem_busy@close-race.html">TIMEOUT</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5748">i915#5748</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@gem_ctx_persistence@many-c=
ontexts.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2410">i915#2410</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb2/igt@gem_exec_balancer@parallel.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/s=
hard-iclb3/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109=
063v1/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190=
">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@gem_pxp@create-regular-cont=
ext-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a>) +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@gem_pxp@create-valid-protec=
ted-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4270">i915#4270</a>) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@gem_pxp@create-valid-protec=
ted-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4270">i915#4270</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@gem_render_copy@y-tiled-to=
-vebox-linear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/768">i915#768</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@gem_userptr_blits@unsync-un=
map-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3297">i915#3297</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@gem_userptr_blits@unsync-un=
map-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3297">i915#3297</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-apl2/igt@gem_workarounds@suspend-resume.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v=
1/shard-apl6/igt@gem_workarounds@suspend-resume.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-iclb1/igt@gen3_render_linear_blits.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
289">fdo#109289</a>) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-tglb5/igt@gen3_render_linear_blits.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
289">fdo#109289</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@gen9_exec_parse@bb-start-o=
ut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-tglb5/igt@kms_ccs@pipe-a-bad-aux-str=
ide-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3689">i915#3689</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-snb7/igt@kms_ccs@pipe-b-bad-rotation-=
90-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>) +30 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-tglb5/igt@kms_ccs@pipe-b-bad-rotation=
-90-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/6095">i915#6095</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@kms_ccs@pipe-b-ccs-on-anothe=
r-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue<=
/p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-glk8/igt@kms_ccs@pipe-b-ccs-on-anothe=
r-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue<=
/p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_ccs@pipe-b-crc-primary=
-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +6 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_ccs@pipe-c-bad-rotatio=
n-90-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_ccs@pipe-c-random-ccs-=
data-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/6095">i915#6095</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_ccs@pipe-d-crc-primary=
-basic-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_color_chamelium@ctm-ne=
gative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@kms_content_protection@ueve=
nt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109300">fdo#109300</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111066">fdo#111066</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@kms_content_protection@ueven=
t.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2105">i915#2105</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_content_protection@ueve=
nt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1063">i915#1063</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_cursor_crc@cursor-offs=
creen-512x170.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109279">fdo#109279</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_cursor_crc@cursor-slid=
ing-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@kms_cursor_legacy@2x-cursor=
-vs-flip-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a>) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_cursor_legacy@2x-cursor=
-vs-flip-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/6497">i915#6497</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +14 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +5 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-glk8/igt@kms_frontbuffer_tracking@ps=
r-rgb101010-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_hdr@bpc-switch-dpms.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@kms_hdr@bpc-switch-dpms.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_plane_scaling@plane-do=
wnscale-with-rotation-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +5 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-d-e=
dp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_plane_scaling@plane-do=
wnscale-with-rotation-factor-0-75@pipe-d-edp-1.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@kms_psr2_sf@primary-plane-up=
date-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-tglb7/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2920">i915#2920</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-glk8/igt@kms_psr2_sf@primary-plane-up=
date-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109063v1/shard-iclb4/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063=
v1/shard-iclb3/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> /=
 <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#1110=
68</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i9=
15#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1=
/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb8/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_109063v1/shard-iclb6/igt@kms_psr_stress_test@flip-primary-in=
validate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-glk7/igt@perf@stress-open-close.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-=
glk5/igt@perf@stress-open-close.html">INCOMPLETE</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5213">i915#5213</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109063v1/shard-iclb2/igt@perf_pmu@event-wait@rcs0.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
2283">fdo#112283</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12185/shard-snb7/igt@gem_create@create-massive.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09063v1/shard-snb5/igt@gem_create@create-massive.html">PASS</a> +1 similar =
issue</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12185/shard-apl2/igt@gem_create@create-massive.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09063v1/shard-apl2/igt@gem_create@create-massive.html">PASS</a> +1 similar =
issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12185/shard-tglb7/igt@gem_create@create-massive.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#499=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109063v1/shard-tglb7/igt@gem_create@create-massive.html">PASS</a> +1 simila=
r issue</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12185/shard-glk2/igt@gem_create@create-massive.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09063v1/shard-glk8/igt@gem_create@create-massive.html">PASS</a> +1 similar =
issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109063v1/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-glk2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109=
063v1/shard-glk8/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109063v1/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109063v1/shard-apl2/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb7/igt@gem_exec_whisper@basic-contexts-forked.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
6453">i915#6453</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_109063v1/shard-iclb2/igt@gem_exec_whisper@basic-contexts-fork=
ed.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb6/igt@gem_userptr_blits@input-checking.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">=
i915#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109063v1/shard-iclb1/igt@gem_userptr_blits@input-checking.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/=
shard-iclb7/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-=
b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-=
format-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5176">i915#5176</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-iclb3/igt@kms_p=
lane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html=
">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5=
@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_109063v1/shard-iclb7/igt@kms_plane_scaling@plan=
es-downscale-factor-0-5@pipe-a-edp-1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10906=
3v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +2 similar issue=
s</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09063v1/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_109063v1/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-conti=
nuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_109063v1/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update=
-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5939">i915#5939</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1090=
63v1/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#6=
58</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-apl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12185/shard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063v1=
/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_109063v1/shard-apl2/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-snb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-snb7/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_109063v1/shard-snb4/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109063=
v1/shard-snb5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12185/shard-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12185/shard-glk2/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109063v1/shard-glk5/igt@runner@aborted.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915=
#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12185 -&gt; Patchwork_109063v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12185: ae6a4bb62f9524823ef5b00552e27231f7936da3 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6663: 5e232c77cd762147e0882c337a984121fabb1c75 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109063v1: ae6a4bb62f9524823ef5b00552e27231f7936da3 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0526445775156585294==--
