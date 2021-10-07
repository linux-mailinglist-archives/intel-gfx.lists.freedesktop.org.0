Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF989425F8C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 23:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4226F4EC;
	Thu,  7 Oct 2021 21:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D0EA76F4EC;
 Thu,  7 Oct 2021 21:50:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8B1EA8836;
 Thu,  7 Oct 2021 21:50:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7551251289788357863=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Oct 2021 21:50:44 -0000
Message-ID: <163364344478.5189.10878196283450728170@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211007203517.3364336-1-imre.deak@intel.com>
In-Reply-To: <20211007203517.3364336-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Simplify_handling_of_modifiers?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============7551251289788357863==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Simplify handling of modifiers
URL   : https://patchwork.freedesktop.org/series/95579/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10696 -> Patchwork_21283
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21283 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21283, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21283:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-icl-y:           [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-bwr-2160:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-bwr-2160/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bwr-2160/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-rkl-11600:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-rkl-11600/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-rkl-11600/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-skl-guc:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-skl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-skl-6600u:       [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-skl-6600u/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-6600u/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-pnv-d510:        [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-pnv-d510/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-pnv-d510/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-bdw-5557u:       [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-kbl-7567u:       [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-kbl-7567u/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-7567u/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-snb-2520m:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-snb-2520m/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-snb-2520m/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-tgl-1115g4:      [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-hsw-4770:        [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-hsw-4770/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-hsw-4770/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-bxt-dsi:         [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-bxt-dsi/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bxt-dsi/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-cfl-8700k:       [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-cfl-8700k/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cfl-8700k/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-skl-6700k2:      NOTRUN -> [DMESG-WARN][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-6700k2/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-icl-u2:          [PASS][28] -> [DMESG-WARN][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-icl-u2/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-icl-u2/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-elk-e7500:       [PASS][30] -> [DMESG-WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-elk-e7500/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-elk-e7500/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-cml-u2:          [PASS][32] -> [DMESG-WARN][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-cml-u2/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cml-u2/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-ivb-3770:        [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-ivb-3770/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-ivb-3770/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-bsw-n3050:       [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-bsw-n3050/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bsw-n3050/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-snb-2600:        [PASS][38] -> [DMESG-WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-snb-2600/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-snb-2600/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-cfl-guc:         [PASS][40] -> [DMESG-WARN][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-cfl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cfl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-kbl-soraka:      [PASS][42] -> [DMESG-WARN][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-kbl-soraka/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-soraka/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-glk-dsi:         [PASS][44] -> [DMESG-WARN][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-glk-dsi/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-glk-dsi/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-bsw-kefka:       [PASS][46] -> [DMESG-WARN][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-bsw-kefka/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bsw-kefka/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-kbl-r:           [PASS][48] -> [DMESG-WARN][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-kbl-r/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-r/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-kbl-8809g:       [PASS][50] -> [DMESG-WARN][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-kbl-8809g/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-8809g/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-kbl-7500u:       [PASS][52] -> [DMESG-WARN][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-bsw-nick:        [PASS][54] -> [DMESG-WARN][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-bsw-nick/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bsw-nick/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-rkl-guc:         [PASS][56] -> [DMESG-WARN][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-rkl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-rkl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-cfl-8109u:       [PASS][58] -> [DMESG-WARN][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-cfl-8109u/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cfl-8109u/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-kbl-guc:         [PASS][60] -> [DMESG-WARN][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-kbl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][62]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-rkl-11600/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][63]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-snb-2600/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][64]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bsw-nick/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][68]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bwr-2160/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][69]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-hsw-4770/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][70]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-rkl-guc/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-ivb-3770/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][73]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-elk-e7500/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][74]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-icl-y/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][75]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bsw-n3050/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - {fi-hsw-gt1}:       [PASS][76] -> [DMESG-WARN][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-hsw-gt1/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-hsw-gt1/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - {fi-tgl-dsi}:       [PASS][78] -> [DMESG-WARN][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-tgl-dsi/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-tgl-dsi/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - {fi-jsl-1}:         [PASS][80] -> [DMESG-WARN][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-jsl-1/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-jsl-1/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - {fi-ehl-2}:         [PASS][82] -> [DMESG-WARN][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-ehl-2/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-ehl-2/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@runner@aborted:
    - {fi-hsw-gt1}:       NOTRUN -> [FAIL][84]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-hsw-gt1/igt@runner@aborted.html
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][85]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-jsl-1}:         NOTRUN -> [FAIL][86]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][87]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_21283 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2190])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][89] ([i915#2403])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-pnv-d510/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][90] ([i915#3363])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][91] ([i915#3363])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][92] ([i915#3363])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][93] ([i915#3363])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][94] ([i915#3363] / [k.org#202321])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][95] ([i915#3363])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][96] ([i915#3363])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][97] ([i915#3363])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][98] ([i915#3363])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][99] ([i915#3363])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][100] ([i915#3363])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][101] ([i915#3363])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][102] ([i915#3363])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cfl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][103] ([i915#3363])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][104] ([i915#3363])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][105] ([i915#3363])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-6700k2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][106] ([i915#1888]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
    - fi-skl-6700k2:      [INCOMPLETE][108] ([i915#146] / [i915#198]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (44 -> 37)
------------------------------

  Missing    (7): fi-ilk-m540 bat-dg1-6 fi-tgl-u2 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10696 -> Patchwork_21283

  CI-20190529: 20190529
  CI_DRM_10696: 58a206ae5bf2f81a11e4408d10a3e1b445d6eebb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6237: 910b5caac6625d2bf0b6c1dde502451431bd0159 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21283: 656646ce1dc3186b6e31faa2a02f974c6251e8ee @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

656646ce1dc3 drm/i915: Add functions to check for RC CCS CC and MC CCS modifiers
4dfe4cce0fad drm/i915: Move is_ccs_modifier() to intel_fb.c
14c507bc8eb3 drm/i915: Add a platform independent way to check for CCS control planes
26e6af6207e8 drm/i915: Handle CCS CC planes separately from CCS control planes
049969f74a95 drm/i915: Add a platform independent way to get the RC CCS CC plane
2b0fae99dcf3 drm/i915: Move intel_format_info_is_yuv_semiplanar() to intel_fb.c
6c7f82cfed4e drm/i915: Unexport is_semiplanar_uv_plane()
a07b18ff79b6 drm/i915: Simplify the modifier check for interlaced scanout support
00315bd9b13a drm/i915: Add tiling attribute to the modifier descriptor
147f27b14377 drm/i915: Move intel_get_format_info() to intel_fb.c
b43f636afaea drm/i915: Add a table with a descriptor for all i915 modifiers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/index.html

--===============7551251289788357863==
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
<tr><td><b>Series:</b></td><td>drm/i915: Simplify handling of modifiers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95579/">https://patchwork.freedesktop.org/series/95579/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10696 -&gt; Patchwork_21283</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21283 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21283, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21283:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-icl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-bwr-2160/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bwr-2160/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-rkl-11600/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-rkl-11600/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-skl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-skl-6600u/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-6600u/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-pnv-d510/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-pnv-d510/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-kbl-7567u/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-7567u/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-snb-2520m/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-snb-2520m/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-hsw-4770/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-hsw-4770/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-bxt-dsi/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bxt-dsi/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-cfl-8700k/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cfl-8700k/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-6700k2/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-icl-u2/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-icl-u2/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-elk-e7500/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-elk-e7500/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-cml-u2/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cml-u2/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-ivb-3770/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-ivb-3770/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-bsw-n3050/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bsw-n3050/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-snb-2600/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-snb-2600/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-cfl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cfl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-kbl-soraka/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-soraka/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-glk-dsi/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-glk-dsi/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-bsw-kefka/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bsw-kefka/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-kbl-r/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-r/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-kbl-8809g/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-8809g/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-bsw-nick/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bsw-nick/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-rkl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-rkl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-cfl-8109u/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cfl-8109u/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-kbl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-guc/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-snb-2600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bsw-nick/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-hsw-4770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-icl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-hsw-gt1/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-hsw-gt1/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-tgl-dsi/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-tgl-dsi/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-jsl-1/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-jsl-1/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-ehl-2/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-ehl-2/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-hsw-gt1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21283 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21283/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 37)</h2>
<p>Missing    (7): fi-ilk-m540 bat-dg1-6 fi-tgl-u2 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10696 -&gt; Patchwork_21283</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10696: 58a206ae5bf2f81a11e4408d10a3e1b445d6eebb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6237: 910b5caac6625d2bf0b6c1dde502451431bd0159 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21283: 656646ce1dc3186b6e31faa2a02f974c6251e8ee @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>656646ce1dc3 drm/i915: Add functions to check for RC CCS CC and MC CCS modifiers<br />
4dfe4cce0fad drm/i915: Move is_ccs_modifier() to intel_fb.c<br />
14c507bc8eb3 drm/i915: Add a platform independent way to check for CCS control planes<br />
26e6af6207e8 drm/i915: Handle CCS CC planes separately from CCS control planes<br />
049969f74a95 drm/i915: Add a platform independent way to get the RC CCS CC plane<br />
2b0fae99dcf3 drm/i915: Move intel_format_info_is_yuv_semiplanar() to intel_fb.c<br />
6c7f82cfed4e drm/i915: Unexport is_semiplanar_uv_plane()<br />
a07b18ff79b6 drm/i915: Simplify the modifier check for interlaced scanout support<br />
00315bd9b13a drm/i915: Add tiling attribute to the modifier descriptor<br />
147f27b14377 drm/i915: Move intel_get_format_info() to intel_fb.c<br />
b43f636afaea drm/i915: Add a table with a descriptor for all i915 modifiers</p>

</body>
</html>

--===============7551251289788357863==--
