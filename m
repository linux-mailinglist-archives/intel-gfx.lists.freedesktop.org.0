Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AEC4DEAF6
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Mar 2022 22:27:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8949310E1B1;
	Sat, 19 Mar 2022 21:26:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BA1B510E1B1;
 Sat, 19 Mar 2022 21:26:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B7C1CA008A;
 Sat, 19 Mar 2022 21:26:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4757414008912845932=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Sat, 19 Mar 2022 21:26:55 -0000
Message-ID: <164772521572.30531.16367830854025196184@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220319204229.9846-1-ramalingam.c@intel.com>
In-Reply-To: <20220319204229.9846-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Evict_and_restore_of_compressed_object_=28rev2=29?=
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

--===============4757414008912845932==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

== Series Details ==

Series: drm/i915/ttm: Evict and restore of compressed object (rev2)
URL   : https://patchwork.freedesktop.org/series/101106/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11385 -> Patchwork_22620
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22620 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22620, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/index.html

Participating hosts (47 -> 41)
------------------------------

  Missing    (6): fi-bdw-5557u shard-tglu fi-bsw-cyan shard-rkl shard-dg1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22620:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@migrate:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-bsw-kefka/igt@i915_selftest@live@migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bsw-kefka/igt@i915_selftest@live@migrate.html
    - fi-kbl-8809g:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-kbl-8809g/igt@i915_selftest@live@migrate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-8809g/igt@i915_selftest@live@migrate.html
    - fi-kbl-x1275:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-kbl-x1275/igt@i915_selftest@live@migrate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-x1275/igt@i915_selftest@live@migrate.html
    - fi-rkl-guc:         [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-rkl-guc/igt@i915_selftest@live@migrate.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-rkl-guc/igt@i915_selftest@live@migrate.html
    - fi-skl-6700k2:      [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-skl-6700k2/igt@i915_selftest@live@migrate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-skl-6700k2/igt@i915_selftest@live@migrate.html
    - fi-cfl-guc:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-guc/igt@i915_selftest@live@migrate.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-guc/igt@i915_selftest@live@migrate.html
    - fi-bsw-n3050:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-bsw-n3050/igt@i915_selftest@live@migrate.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bsw-n3050/igt@i915_selftest@live@migrate.html
    - fi-cfl-8700k:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8700k/igt@i915_selftest@live@migrate.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8700k/igt@i915_selftest@live@migrate.html
    - fi-tgl-1115g4:      [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-tgl-1115g4/igt@i915_selftest@live@migrate.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-tgl-1115g4/igt@i915_selftest@live@migrate.html
    - fi-bxt-dsi:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-bxt-dsi/igt@i915_selftest@live@migrate.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bxt-dsi/igt@i915_selftest@live@migrate.html
    - fi-cfl-8109u:       [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@i915_selftest@live@migrate.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8109u/igt@i915_selftest@live@migrate.html
    - fi-glk-j4005:       [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-glk-j4005/igt@i915_selftest@live@migrate.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-glk-j4005/igt@i915_selftest@live@migrate.html
    - fi-skl-guc:         [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-skl-guc/igt@i915_selftest@live@migrate.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-skl-guc/igt@i915_selftest@live@migrate.html
    - fi-kbl-7567u:       [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-kbl-7567u/igt@i915_selftest@live@migrate.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-7567u/igt@i915_selftest@live@migrate.html
    - fi-kbl-7500u:       [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-kbl-7500u/igt@i915_selftest@live@migrate.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-7500u/igt@i915_selftest@live@migrate.html
    - fi-glk-dsi:         [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-glk-dsi/igt@i915_selftest@live@migrate.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-glk-dsi/igt@i915_selftest@live@migrate.html
    - fi-kbl-soraka:      [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-kbl-soraka/igt@i915_selftest@live@migrate.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-soraka/igt@i915_selftest@live@migrate.html
    - fi-bsw-nick:        [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-bsw-nick/igt@i915_selftest@live@migrate.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bsw-nick/igt@i915_selftest@live@migrate.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ringfill@basic-all:
    - {bat-dg2-9}:        [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-dg2-9/igt@gem_ringfill@basic-all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/bat-dg2-9/igt@gem_ringfill@basic-all.html

  * igt@i915_selftest@live@migrate:
    - {fi-ehl-2}:         [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-ehl-2/igt@i915_selftest@live@migrate.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-ehl-2/igt@i915_selftest@live@migrate.html
    - {bat-jsl-1}:        [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-jsl-1/igt@i915_selftest@live@migrate.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/bat-jsl-1/igt@i915_selftest@live@migrate.html
    - {fi-adl-ddr5}:      [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-adl-ddr5/igt@i915_selftest@live@migrate.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-adl-ddr5/igt@i915_selftest@live@migrate.html
    - {fi-tgl-dsi}:       [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-tgl-dsi/igt@i915_selftest@live@migrate.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-tgl-dsi/igt@i915_selftest@live@migrate.html
    - {bat-jsl-2}:        [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-jsl-2/igt@i915_selftest@live@migrate.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/bat-jsl-2/igt@i915_selftest@live@migrate.html
    - {fi-jsl-1}:         [PASS][49] -> [DMESG-FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-jsl-1/igt@i915_selftest@live@migrate.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-jsl-1/igt@i915_selftest@live@migrate.html
    - {bat-adlp-6}:       [PASS][51] -> [DMESG-FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlp-6/igt@i915_selftest@live@migrate.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/bat-adlp-6/igt@i915_selftest@live@migrate.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - {bat-adlm-1}:       [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
Known issues
------------

  Here are the changes found in Patchwork_22620 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][55] -> [INCOMPLETE][56] ([i915#4785])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [PASS][57] -> [DMESG-FAIL][58] ([i915#295])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-cfl-8109u:       [PASS][59] -> [DMESG-WARN][60] ([i915#295] / [i915#5341])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [PASS][61] -> [DMESG-WARN][62] ([i915#295]) +9 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][63] ([i915#4312] / [i915#5257])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][64] ([i915#4312] / [i915#5257] / [k.org#202321])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][65] ([i915#1436] / [i915#4312] / [i915#5257])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][66] ([fdo#109271] / [i915#1436] / [i915#4312])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][67] ([i915#1436] / [i915#4312] / [i915#5257])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-7500u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][68] ([i915#4312] / [i915#5257])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bxt-dsi/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][69] ([i915#1436] / [i915#4312] / [i915#5257])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][70] ([i915#4312] / [i915#5257])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-guc/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][71] ([i915#4312] / [i915#5257] / [k.org#202321])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-glk-j4005/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][72] ([i915#1436] / [i915#4312] / [i915#5257])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][73] ([i915#1436] / [i915#4312] / [i915#5257])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][74] ([i915#1436] / [i915#4312] / [i915#5257])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][75] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bsw-n3050/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][76] ([i915#1436] / [i915#4312] / [i915#5257])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][77] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][78] ([i915#4312] / [i915#5257])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8700k/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][79] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][80] ([i915#1436] / [i915#4312] / [i915#5257])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-8809g/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][81] ([i915#4312])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_busy@basic@modeset:
    - {bat-adlp-6}:       [DMESG-WARN][82] ([i915#3576]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/bat-adlp-6/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
  [i915#5339]: https://gitlab.freedesktop.org/drm/intel/issues/5339
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5342]: https://gitlab.freedesktop.org/drm/intel/issues/5342
  [i915#5356]: https://gitlab.freedesktop.org/drm/intel/issues/5356
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Build changes
-------------

  * IGT: IGT_6386 -> IGTPW_6786
  * Linux: CI_DRM_11385 -> Patchwork_22620

  CI-20190529: 20190529
  CI_DRM_11385: 3babe046f5f5544ec772cd443f9d5ca24e342348 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6786: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6786/index.html
  IGT_6386: 0fcd59ad25b2960c0b654f90dfe4dd9e7c7b874d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22620: 1c655127031fcc99f4690104be416c9c54f37874 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_22620/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/intel_migrate.o
In file included from ./include/linux/kernel.h:29,
                 from ./include/linux/iova.h:13,
                 from ./include/linux/intel-iommu.h:14,
                 from ./drivers/gpu/drm/i915/i915_drv.h:37,
                 from drivers/gpu/drm/i915/gt/intel_migrate.c:6:
drivers/gpu/drm/i915/gt/selftest_migrate.c: In function ‘clear’:
./include/linux/kern_levels.h:5:18: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 4 has type ‘unsigned int’ [-Werror=format=]
 #define KERN_SOH "\001"  /* ASCII Start Of Header */
                  ^~~~~~
./include/linux/printk.h:418:11: note: in definition of macro ‘printk_index_wrap’
   _p_func(_fmt, ##__VA_ARGS__);    \
           ^~~~
./include/linux/printk.h:489:2: note: in expansion of macro ‘printk’
  printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
  ^~~~~~
./include/linux/kern_levels.h:11:18: note: in expansion of macro ‘KERN_SOH’
 #define KERN_ERR KERN_SOH "3" /* error conditions */
                  ^~~~~~~~
./include/linux/printk.h:489:9: note: in expansion of macro ‘KERN_ERR’
  printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
         ^~~~~~~~
drivers/gpu/drm/i915/gt/selftest_migrate.c:403:6: note: in expansion of macro ‘pr_err’
      pr_err("%ps ccs clearing failed, offset: %d/%lu\n",
      ^~~~~~
In file included from drivers/gpu/drm/i915/gt/intel_migrate.c:1167:
drivers/gpu/drm/i915/gt/selftest_migrate.c:403:52: note: format string is defined here
      pr_err("%ps ccs clearing failed, offset: %d/%lu\n",
                                                  ~~^
                                                  %u
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gt/intel_migrate.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/intel_migrate.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2


== Linux commits ==

1c655127031f drm/i915/migrate: Evict and restore the flatccs capable lmem obj
302c4a819aef drm/i915/gem: Add extra pages in ttm_tt for ccs data
3311d89b98a5 drm/ttm: Add a parameter to add extra pages into ttm_tt
da00aef96bd2 drm/i915/gt: Optimize the migration loop
2dfff14cce14 drm/i915/selftest_migrate: Check CCS meta data clear
670ff29d341b drm/i915/selftest_migrate: Consider the possible roundup of size
77cd7fc660bc drm/i915/gt: Clear compress metadata for Flat-ccs objects
d7aead7dd462 drm/i915/gt: Use XY_FASR_COLOR_BLT to clear obj on graphics ver 12+

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/index.html

--===============4757414008912845932==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit


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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: Evict and restore of compressed object (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101106/">https://patchwork.freedesktop.org/series/101106/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11385 -&gt; Patchwork_22620</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22620 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22620, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/index.html</p>
<h2>Participating hosts (47 -&gt; 41)</h2>
<p>Missing    (6): fi-bdw-5557u shard-tglu fi-bsw-cyan shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22620:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-bsw-kefka/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bsw-kefka/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-kbl-8809g/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-8809g/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-kbl-x1275/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-x1275/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-rkl-guc/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-rkl-guc/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-skl-6700k2/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-skl-6700k2/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-guc/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-guc/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-bsw-n3050/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bsw-n3050/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8700k/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8700k/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-tgl-1115g4/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-tgl-1115g4/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-bxt-dsi/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bxt-dsi/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8109u/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-glk-j4005/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-glk-j4005/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-skl-guc/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-skl-guc/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-kbl-7567u/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-7567u/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-kbl-7500u/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-7500u/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-glk-dsi/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-glk-dsi/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-kbl-soraka/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-soraka/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-bsw-nick/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bsw-nick/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-dg2-9/igt@gem_ringfill@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/bat-dg2-9/igt@gem_ringfill@basic-all.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-ehl-2/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-ehl-2/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-jsl-1/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/bat-jsl-1/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-adl-ddr5}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-adl-ddr5/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-adl-ddr5/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-tgl-dsi/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-tgl-dsi/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-jsl-2/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/bat-jsl-2/igt@i915_selftest@live@migrate.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-jsl-1/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-jsl-1/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlp-6/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/bat-adlp-6/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22620 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_busy@basic@modeset:<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6386 -&gt; IGTPW_6786</li>
<li>Linux: CI_DRM_11385 -&gt; Patchwork_22620</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11385: 3babe046f5f5544ec772cd443f9d5ca24e342348 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6786: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6786/index.html<br />
  IGT_6386: 0fcd59ad25b2960c0b654f90dfe4dd9e7c7b874d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22620: 1c655127031fcc99f4690104be416c9c54f37874 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Kernel 32bit build ==</p>
<p>Warning: Kernel 32bit buildtest failed:<br />
https://intel-gfx-ci.01.org/Patchwork_22620/build_32bit.log</p>
<p>CALL    scripts/checksyscalls.sh<br />
  CALL    scripts/atomic/check-atomics.sh<br />
  CHK     include/generated/compile.h<br />
  CC [M]  drivers/gpu/drm/i915/gt/intel_migrate.o<br />
In file included from ./include/linux/kernel.h:29,<br />
                 from ./include/linux/iova.h:13,<br />
                 from ./include/linux/intel-iommu.h:14,<br />
                 from ./drivers/gpu/drm/i915/i915_drv.h:37,<br />
                 from drivers/gpu/drm/i915/gt/intel_migrate.c:6:<br />
drivers/gpu/drm/i915/gt/selftest_migrate.c: In function ‘clear’:<br />
./include/linux/kern_levels.h:5:18: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 4 has type ‘unsigned int’ [-Werror=format=]<br />
 #define KERN_SOH "\001"  /<em> ASCII Start Of Header </em>/<br />
                  ^~~~~~<br />
./include/linux/printk.h:418:11: note: in definition of macro ‘printk_index_wrap’<br />
   _p_func(_fmt, ##<strong>VA_ARGS</strong>);    \<br />
           ^~~~<br />
./include/linux/printk.h:489:2: note: in expansion of macro ‘printk’<br />
  printk(KERN_ERR pr_fmt(fmt), ##<strong>VA_ARGS</strong>)<br />
  ^~~~~~<br />
./include/linux/kern_levels.h:11:18: note: in expansion of macro ‘KERN_SOH’<br />
 #define KERN_ERR KERN_SOH "3" /<em> error conditions </em>/<br />
                  ^~~~~~~~<br />
./include/linux/printk.h:489:9: note: in expansion of macro ‘KERN_ERR’<br />
  printk(KERN_ERR pr_fmt(fmt), ##<strong>VA_ARGS</strong>)<br />
         ^~~~~~~~<br />
drivers/gpu/drm/i915/gt/selftest_migrate.c:403:6: note: in expansion of macro ‘pr_err’<br />
      pr_err("%ps ccs clearing failed, offset: %d/%lu\n",<br />
      ^~~~~~<br />
In file included from drivers/gpu/drm/i915/gt/intel_migrate.c:1167:<br />
drivers/gpu/drm/i915/gt/selftest_migrate.c:403:52: note: format string is defined here<br />
      pr_err("%ps ccs clearing failed, offset: %d/%lu\n",<br />
                                                  ~~^<br />
                                                  %u<br />
cc1: all warnings being treated as errors<br />
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gt/intel_migrate.o' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-kbl-8809g/igt@i915_selftest@live@migrate.html">4</a>: <strong><em> [drivers/gpu/drm/i915/gt/intel_migrate.o] Error 1<br />
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-kbl-8809g/igt@i915_selftest@live@migrate.html">3</a>: </em></strong> [drivers/gpu/drm/i915] Error 2<br />
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/fi-bsw-kefka/igt@i915_selftest@live@migrate.html">2</a>: <strong><em> [drivers/gpu/drm] Error 2<br />
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-bsw-kefka/igt@i915_selftest@live@migrate.html">1</a>: </em></strong> [drivers/gpu] Error 2<br />
Makefile:1831: recipe for target 'drivers' failed<br />
make: *** [drivers] Error 2</p>
<p>== Linux commits ==</p>
<p>1c655127031f drm/i915/migrate: Evict and restore the flatccs capable lmem obj<br />
302c4a819aef drm/i915/gem: Add extra pages in ttm_tt for ccs data<br />
3311d89b98a5 drm/ttm: Add a parameter to add extra pages into ttm_tt<br />
da00aef96bd2 drm/i915/gt: Optimize the migration loop<br />
2dfff14cce14 drm/i915/selftest_migrate: Check CCS meta data clear<br />
670ff29d341b drm/i915/selftest_migrate: Consider the possible roundup of size<br />
77cd7fc660bc drm/i915/gt: Clear compress metadata for Flat-ccs objects<br />
d7aead7dd462 drm/i915/gt: Use XY_FASR_COLOR_BLT to clear obj on graphics ver 12+</p>

</body>
</html>

--===============4757414008912845932==--
