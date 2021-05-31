Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5206395A85
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 14:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4527C6E8DF;
	Mon, 31 May 2021 12:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FB946E8DF;
 Mon, 31 May 2021 12:29:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 75A3CA00E6;
 Mon, 31 May 2021 12:29:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sodhi, Vunny" <vunny.sodhi@intel.com>
Date: Mon, 31 May 2021 12:29:33 -0000
Message-ID: <162246417345.27954.2095625128698703037@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1622460737-46494-1-git-send-email-vunny.sodhi@intel.com>
In-Reply-To: <1622460737-46494-1-git-send-email-vunny.sodhi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Add_support_of_MOD=5FY=5FTILED_during_fb_init?=
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
Content-Type: multipart/mixed; boundary="===============1573725453=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1573725453==
Content-Type: multipart/alternative;
 boundary="===============9049550181683112910=="

--===============9049550181683112910==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Add support of MOD_Y_TILED during fb init
URL   : https://patchwork.freedesktop.org/series/90785/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10152 -> Patchwork_20237
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20237 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20237, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20237:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-icl-y:           [PASS][1] -> [FAIL][2] +38 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] +38 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-cfl-guc:         [PASS][5] -> [FAIL][6] +38 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
    - fi-ilk-650:         [PASS][7] -> [FAIL][8] +37 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ilk-650/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ilk-650/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - fi-tgl-u2:          [PASS][9] -> [FAIL][10] +39 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-tgl-u2/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-tgl-u2/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-cml-s:           [PASS][11] -> [FAIL][12] +39 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cml-s/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cml-s/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@bad-pitch-1024:
    - fi-bxt-dsi:         [PASS][13] -> [FAIL][14] +38 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bxt-dsi/igt@kms_addfb_basic@bad-pitch-1024.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bxt-dsi/igt@kms_addfb_basic@bad-pitch-1024.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-cml-u2:          [PASS][15] -> [FAIL][16] +39 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html

  * igt@kms_addfb_basic@bad-pitch-63:
    - fi-kbl-7567u:       [PASS][17] -> [FAIL][18] +36 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-7567u/igt@kms_addfb_basic@bad-pitch-63.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-7567u/igt@kms_addfb_basic@bad-pitch-63.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - fi-snb-2520m:       [PASS][19] -> [FAIL][20] +37 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-snb-2520m/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-snb-2520m/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - fi-icl-u2:          [PASS][21] -> [FAIL][22] +39 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-icl-u2/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-icl-u2/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@invalid-get-prop-any:
    - fi-skl-6600u:       [PASS][23] -> [FAIL][24] +39 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-skl-6600u/igt@kms_addfb_basic@invalid-get-prop-any.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-skl-6600u/igt@kms_addfb_basic@invalid-get-prop-any.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-hsw-4770:        [PASS][25] -> [FAIL][26] +37 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - fi-glk-dsi:         [PASS][27] -> [FAIL][28] +38 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_addfb_basic@no-handle:
    - fi-bsw-nick:        [PASS][29] -> [FAIL][30] +35 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bsw-nick/igt@kms_addfb_basic@no-handle.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bsw-nick/igt@kms_addfb_basic@no-handle.html

  * igt@kms_addfb_basic@small-bo:
    - fi-cfl-8109u:       [PASS][31] -> [FAIL][32] +38 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-8109u/igt@kms_addfb_basic@small-bo.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-8109u/igt@kms_addfb_basic@small-bo.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - fi-tgl-y:           [PASS][33] -> [FAIL][34] +39 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-tgl-y/igt@kms_addfb_basic@tile-pitch-mismatch.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-tgl-y/igt@kms_addfb_basic@tile-pitch-mismatch.html
    - fi-cfl-8700k:       [PASS][35] -> [FAIL][36] +38 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-8700k/igt@kms_addfb_basic@tile-pitch-mismatch.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-8700k/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_addfb_basic@too-high:
    - fi-bwr-2160:        [PASS][37] -> [FAIL][38] +40 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bwr-2160/igt@kms_addfb_basic@too-high.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bwr-2160/igt@kms_addfb_basic@too-high.html
    - fi-kbl-r:           [PASS][39] -> [FAIL][40] +39 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-r/igt@kms_addfb_basic@too-high.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-r/igt@kms_addfb_basic@too-high.html

  * igt@kms_addfb_basic@unused-modifier:
    - fi-bdw-5557u:       [PASS][41] -> [FAIL][42] +37 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bdw-5557u/igt@kms_addfb_basic@unused-modifier.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bdw-5557u/igt@kms_addfb_basic@unused-modifier.html
    - fi-bsw-kefka:       [PASS][43] -> [FAIL][44] +37 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bsw-kefka/igt@kms_addfb_basic@unused-modifier.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bsw-kefka/igt@kms_addfb_basic@unused-modifier.html
    - fi-kbl-guc:         [PASS][45] -> [FAIL][46] +36 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-guc/igt@kms_addfb_basic@unused-modifier.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-guc/igt@kms_addfb_basic@unused-modifier.html

  * igt@kms_addfb_basic@unused-pitches:
    - fi-kbl-x1275:       [PASS][47] -> [FAIL][48] +38 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-x1275/igt@kms_addfb_basic@unused-pitches.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-x1275/igt@kms_addfb_basic@unused-pitches.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-elk-e7500:       [PASS][49] -> [FAIL][50] +40 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - fi-ivb-3770:        [PASS][51] -> [FAIL][52] +37 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ivb-3770/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ivb-3770/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-pnv-d510:        [PASS][53] -> [FAIL][54] +40 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-pnv-d510/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-pnv-d510/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-skl-6700k2:      [PASS][55] -> [FAIL][56] +38 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-skl-6700k2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-skl-6700k2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  
#### Warnings ####

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-bsw-kefka:       [SKIP][57] ([fdo#109271]) -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bsw-kefka/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bsw-kefka/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-bsw-nick:        [SKIP][59] ([fdo#109271]) -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bsw-nick/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bsw-nick/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-bwr-2160:        [SKIP][61] ([fdo#109271]) -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bwr-2160/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bwr-2160/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-pnv-d510:        [SKIP][63] ([fdo#109271]) -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-pnv-d510/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-pnv-d510/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-bdw-5557u:       [SKIP][65] ([fdo#109271]) -> [FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-snb-2520m:       [SKIP][67] ([fdo#109271]) -> [FAIL][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-snb-2520m/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-snb-2520m/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-hsw-4770:        [SKIP][69] ([fdo#109271]) -> [FAIL][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-elk-e7500:       [SKIP][71] ([fdo#109271]) -> [FAIL][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-elk-e7500/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-elk-e7500/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-ivb-3770:        [SKIP][73] ([fdo#109271]) -> [FAIL][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ivb-3770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ivb-3770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-ilk-650:         [SKIP][75] ([fdo#109271]) -> [FAIL][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ilk-650/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ilk-650/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@fbdev@eof:
    - {fi-jsl-1}:         [PASS][77] -> [SKIP][78] +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-jsl-1/igt@fbdev@eof.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-jsl-1/igt@fbdev@eof.html

  * igt@kms_addfb_basic@addfb25-y-tiled-legacy:
    - {fi-rkl-11500t}:    [PASS][79] -> [FAIL][80] +38 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-rkl-11500t/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-rkl-11500t/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - {fi-ehl-1}:         [PASS][81] -> [FAIL][82] +38 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ehl-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ehl-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - {fi-hsw-gt1}:       [SKIP][83] ([fdo#109271]) -> [FAIL][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-hsw-gt1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-hsw-gt1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@addfb25-yf-tiled-legacy:
    - {fi-hsw-gt1}:       [PASS][85] -> [FAIL][86] +35 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-hsw-gt1/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-hsw-gt1/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html

  * igt@kms_addfb_basic@no-handle:
    - {fi-jsl-1}:         [PASS][87] -> [FAIL][88] +39 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-jsl-1/igt@kms_addfb_basic@no-handle.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-jsl-1/igt@kms_addfb_basic@no-handle.html

  * igt@kms_addfb_basic@too-wide:
    - {fi-tgl-dsi}:       [PASS][89] -> [FAIL][90] +38 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-tgl-dsi/igt@kms_addfb_basic@too-wide.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-tgl-dsi/igt@kms_addfb_basic@too-wide.html

  * igt@kms_addfb_basic@unused-offsets:
    - {fi-ehl-2}:         [PASS][91] -> [FAIL][92] +39 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ehl-2/igt@kms_addfb_basic@unused-offsets.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ehl-2/igt@kms_addfb_basic@unused-offsets.html

  
Known issues
------------

  Here are the changes found in Patchwork_20237 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - fi-bwr-2160:        [PASS][93] -> [SKIP][94] ([fdo#109271]) +4 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bwr-2160/igt@fbdev@eof.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bwr-2160/igt@fbdev@eof.html
    - fi-pnv-d510:        [PASS][95] -> [SKIP][96] ([fdo#109271]) +4 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-pnv-d510/igt@fbdev@eof.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-pnv-d510/igt@fbdev@eof.html
    - fi-elk-e7500:       [PASS][97] -> [SKIP][98] ([fdo#109271]) +4 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-elk-e7500/igt@fbdev@eof.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-elk-e7500/igt@fbdev@eof.html

  * igt@fbdev@info:
    - fi-tgl-y:           [PASS][99] -> [SKIP][100] ([i915#2582]) +4 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-tgl-y/igt@fbdev@info.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-tgl-y/igt@fbdev@info.html
    - fi-kbl-x1275:       [PASS][101] -> [SKIP][102] ([fdo#109271]) +4 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-x1275/igt@fbdev@info.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-x1275/igt@fbdev@info.html

  * igt@fbdev@nullptr:
    - fi-snb-2520m:       [PASS][103] -> [SKIP][104] ([fdo#109271]) +4 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-snb-2520m/igt@fbdev@nullptr.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-snb-2520m/igt@fbdev@nullptr.html
    - fi-kbl-r:           [PASS][105] -> [SKIP][106] ([fdo#109271]) +4 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-r/igt@fbdev@nullptr.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-r/igt@fbdev@nullptr.html
    - fi-kbl-7500u:       [PASS][107] -> [SKIP][108] ([fdo#109271]) +4 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-7500u/igt@fbdev@nullptr.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-7500u/igt@fbdev@nullptr.html
    - fi-ivb-3770:        [PASS][109] -> [SKIP][110] ([fdo#109271]) +4 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ivb-3770/igt@fbdev@nullptr.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ivb-3770/igt@fbdev@nullptr.html

  * igt@fbdev@read:
    - fi-cfl-guc:         [PASS][111] -> [SKIP][112] ([fdo#109271]) +4 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-guc/igt@fbdev@read.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-guc/igt@fbdev@read.html

  * igt@fbdev@write:
    - fi-ilk-650:         [PASS][113] -> [SKIP][114] ([fdo#109271]) +4 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ilk-650/igt@fbdev@write.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ilk-650/igt@fbdev@write.html
    - fi-cfl-8700k:       [PASS][115] -> [SKIP][116] ([fdo#109271]) +4 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-8700k/igt@fbdev@write.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-8700k/igt@fbdev@write.html
    - fi-icl-u2:          [PASS][117] -> [SKIP][118] ([i915#2582]) +4 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-icl-u2/igt@fbdev@write.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-icl-u2/igt@fbdev@write.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [PASS][119] -> [INCOMPLETE][120] ([i915#155])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-guc:         [DMESG-FAIL][121] ([i915#2291] / [i915#541]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [DMESG-FAIL][123] ([i915#3462]) -> [INCOMPLETE][124] ([i915#3462])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-bsw-nick:        [INCOMPLETE][125] ([i915#2782] / [i915#2940] / [i915#3462]) -> [DMESG-FAIL][126] ([i915#3462])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [DMESG-FAIL][127] ([i915#3462]) -> [INCOMPLETE][128] ([i915#3462])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       [FAIL][129] ([i915#2426] / [i915#3363]) -> [FAIL][130] ([i915#3363])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-8109u/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         [FAIL][131] ([i915#3363] / [k.org#202321]) -> [FAIL][132] ([i915#2426] / [i915#3363] / [k.org#202321])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-glk-dsi/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][133] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][134] ([i915#1436] / [i915#3363])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-guc/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-guc/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][135] ([i915#3363]) -> [FAIL][136] ([i915#2426] / [i915#3363])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-guc/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][137] ([i915#1436] / [i915#3363]) -> [FAIL][138] ([i915#1436] / [i915#2426] / [i915#3363])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-skl-6700k2/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (46 -> 41)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_10152 -> Patchwork_20237

  CI-20190529: 20190529
  CI_DRM_10152: 020097b0f0866462560dc328d3b963fa69fad472 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6096: 31aef525399ebe7e1f294c06b688961f6b09aead @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20237: b1010ee53d1f94a14d2784c67bf5fd4b6f03f7d0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b1010ee53d1f drm/i915/display: Add support of MOD_Y_TILED during fb init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/index.html

--===============9049550181683112910==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/display: Add support of MOD_Y_TILED during fb init</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90785/">https://patchwork.freedesktop.org/series/90785/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10152 -&gt; Patchwork_20237</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20237 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20237, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20237:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">FAIL</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-modifier-no-flag:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">FAIL</a> +38 similar issues</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ilk-650/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ilk-650/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">FAIL</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-tgl-u2/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-tgl-u2/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">FAIL</a> +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cml-s/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cml-s/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a> +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-1024:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bxt-dsi/igt@kms_addfb_basic@bad-pitch-1024.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bxt-dsi/igt@kms_addfb_basic@bad-pitch-1024.html">FAIL</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-128:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cml-u2/igt@kms_addfb_basic@bad-pitch-128.html">FAIL</a> +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-63:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-7567u/igt@kms_addfb_basic@bad-pitch-63.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-7567u/igt@kms_addfb_basic@bad-pitch-63.html">FAIL</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-snb-2520m/igt@kms_addfb_basic@basic-y-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-snb-2520m/igt@kms_addfb_basic@basic-y-tiled-legacy.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-icl-u2/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-icl-u2/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">FAIL</a> +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-get-prop-any:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-skl-6600u/igt@kms_addfb_basic@invalid-get-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-skl-6600u/igt@kms_addfb_basic@invalid-get-prop-any.html">FAIL</a> +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop-any:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-glk-dsi/igt@kms_addfb_basic@invalid-set-prop-any.html">FAIL</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@no-handle:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bsw-nick/igt@kms_addfb_basic@no-handle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bsw-nick/igt@kms_addfb_basic@no-handle.html">FAIL</a> +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@small-bo:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-8109u/igt@kms_addfb_basic@small-bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-8109u/igt@kms_addfb_basic@small-bo.html">FAIL</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-tgl-y/igt@kms_addfb_basic@tile-pitch-mismatch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-tgl-y/igt@kms_addfb_basic@tile-pitch-mismatch.html">FAIL</a> +39 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-8700k/igt@kms_addfb_basic@tile-pitch-mismatch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-8700k/igt@kms_addfb_basic@tile-pitch-mismatch.html">FAIL</a> +38 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bwr-2160/igt@kms_addfb_basic@too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bwr-2160/igt@kms_addfb_basic@too-high.html">FAIL</a> +40 similar issues</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-r/igt@kms_addfb_basic@too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-r/igt@kms_addfb_basic@too-high.html">FAIL</a> +39 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-modifier:</p>
<ul>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bdw-5557u/igt@kms_addfb_basic@unused-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bdw-5557u/igt@kms_addfb_basic@unused-modifier.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bsw-kefka/igt@kms_addfb_basic@unused-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bsw-kefka/igt@kms_addfb_basic@unused-modifier.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-guc/igt@kms_addfb_basic@unused-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-guc/igt@kms_addfb_basic@unused-modifier.html">FAIL</a> +36 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-pitches:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-x1275/igt@kms_addfb_basic@unused-pitches.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-x1275/igt@kms_addfb_basic@unused-pitches.html">FAIL</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">FAIL</a> +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ivb-3770/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ivb-3770/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-pnv-d510/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-pnv-d510/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">FAIL</a> +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-skl-6700k2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-skl-6700k2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">FAIL</a> +38 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bsw-kefka/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bsw-kefka/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bsw-nick/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bsw-nick/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bwr-2160/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bwr-2160/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-pnv-d510/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-pnv-d510/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-snb-2520m/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-snb-2520m/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-elk-e7500/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-elk-e7500/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ivb-3770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ivb-3770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ilk-650/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ilk-650/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-jsl-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-jsl-1/igt@fbdev@eof.html">SKIP</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-legacy:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-rkl-11500t/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-rkl-11500t/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">FAIL</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ehl-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ehl-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a> +38 similar issues</p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-hsw-gt1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-hsw-gt1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-yf-tiled-legacy:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-hsw-gt1/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-hsw-gt1/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">FAIL</a> +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@no-handle:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-jsl-1/igt@kms_addfb_basic@no-handle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-jsl-1/igt@kms_addfb_basic@no-handle.html">FAIL</a> +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-wide:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-tgl-dsi/igt@kms_addfb_basic@too-wide.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-tgl-dsi/igt@kms_addfb_basic@too-wide.html">FAIL</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-offsets:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ehl-2/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ehl-2/igt@kms_addfb_basic@unused-offsets.html">FAIL</a> +39 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20237 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bwr-2160/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bwr-2160/igt@fbdev@eof.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-pnv-d510/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-pnv-d510/igt@fbdev@eof.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-elk-e7500/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-elk-e7500/igt@fbdev@eof.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-tgl-y/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-tgl-y/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-x1275/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-x1275/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-snb-2520m/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-snb-2520m/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-r/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-r/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-7500u/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-7500u/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ivb-3770/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ivb-3770/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-guc/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-guc/igt@fbdev@read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-ilk-650/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-ilk-650/igt@fbdev@write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-8700k/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-8700k/igt@fbdev@write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-icl-u2/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-icl-u2/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-bsw-nick/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-tgl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20237/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 41)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus fi-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10152 -&gt; Patchwork_20237</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10152: 020097b0f0866462560dc328d3b963fa69fad472 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6096: 31aef525399ebe7e1f294c06b688961f6b09aead @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20237: b1010ee53d1f94a14d2784c67bf5fd4b6f03f7d0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b1010ee53d1f drm/i915/display: Add support of MOD_Y_TILED during fb init</p>

</body>
</html>

--===============9049550181683112910==--

--===============1573725453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1573725453==--
