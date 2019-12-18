Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96905124791
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 14:05:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0AFD6E45F;
	Wed, 18 Dec 2019 13:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CBC1E6E452;
 Wed, 18 Dec 2019 13:05:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB555A0BC6;
 Wed, 18 Dec 2019 13:05:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 18 Dec 2019 13:05:13 -0000
Message-ID: <157667431376.8356.6590737648589732147@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217230740.3399493-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191217230740.3399493-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_drm/i915=3A_Ratelimit_i915=5Fglobals=5Fpark_?=
 =?utf-8?b?KHJldjMp?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with drm/i915: Ratelimit i915_globals_park (rev3)
URL   : https://patchwork.freedesktop.org/series/71074/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7591 -> Patchwork_15820
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15820 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15820, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15820:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-no-display:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-bsw-kefka/igt@i915_module_load@reload-no-display.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-bsw-kefka/igt@i915_module_load@reload-no-display.html
    - fi-apl-guc:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-apl-guc/igt@i915_module_load@reload-no-display.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-apl-guc/igt@i915_module_load@reload-no-display.html
    - fi-whl-u:           [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-whl-u/igt@i915_module_load@reload-no-display.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-whl-u/igt@i915_module_load@reload-no-display.html
    - fi-kbl-r:           [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-kbl-r/igt@i915_module_load@reload-no-display.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-kbl-r/igt@i915_module_load@reload-no-display.html
    - fi-blb-e6850:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-blb-e6850/igt@i915_module_load@reload-no-display.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-blb-e6850/igt@i915_module_load@reload-no-display.html
    - fi-bsw-nick:        [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-bsw-nick/igt@i915_module_load@reload-no-display.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-bsw-nick/igt@i915_module_load@reload-no-display.html
    - fi-hsw-peppy:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-hsw-peppy/igt@i915_module_load@reload-no-display.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-hsw-peppy/igt@i915_module_load@reload-no-display.html
    - fi-kbl-x1275:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-kbl-x1275/igt@i915_module_load@reload-no-display.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-kbl-x1275/igt@i915_module_load@reload-no-display.html
    - fi-ilk-650:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-ilk-650/igt@i915_module_load@reload-no-display.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-ilk-650/igt@i915_module_load@reload-no-display.html
    - fi-bsw-n3050:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-bsw-n3050/igt@i915_module_load@reload-no-display.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-bsw-n3050/igt@i915_module_load@reload-no-display.html
    - fi-cfl-guc:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-cfl-guc/igt@i915_module_load@reload-no-display.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-cfl-guc/igt@i915_module_load@reload-no-display.html
    - fi-kbl-soraka:      [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-kbl-soraka/igt@i915_module_load@reload-no-display.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-kbl-soraka/igt@i915_module_load@reload-no-display.html
    - fi-ivb-3770:        [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-ivb-3770/igt@i915_module_load@reload-no-display.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-ivb-3770/igt@i915_module_load@reload-no-display.html
    - fi-snb-2520m:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-snb-2520m/igt@i915_module_load@reload-no-display.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-snb-2520m/igt@i915_module_load@reload-no-display.html
    - fi-cfl-8700k:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-cfl-8700k/igt@i915_module_load@reload-no-display.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-cfl-8700k/igt@i915_module_load@reload-no-display.html
    - fi-kbl-7500u:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-kbl-7500u/igt@i915_module_load@reload-no-display.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-kbl-7500u/igt@i915_module_load@reload-no-display.html
    - fi-hsw-4770:        [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-hsw-4770/igt@i915_module_load@reload-no-display.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-hsw-4770/igt@i915_module_load@reload-no-display.html
    - fi-kbl-guc:         [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-kbl-guc/igt@i915_module_load@reload-no-display.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-kbl-guc/igt@i915_module_load@reload-no-display.html
    - fi-bdw-5557u:       [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-bdw-5557u/igt@i915_module_load@reload-no-display.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-bdw-5557u/igt@i915_module_load@reload-no-display.html
    - fi-tgl-y:           [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-tgl-y/igt@i915_module_load@reload-no-display.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-tgl-y/igt@i915_module_load@reload-no-display.html
    - fi-hsw-4770r:       [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-hsw-4770r/igt@i915_module_load@reload-no-display.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-hsw-4770r/igt@i915_module_load@reload-no-display.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-pnv-d510/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-gdg-551/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-whl-u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-cfl-guc/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-blb-e6850/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][49]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-cfl-8700k/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-apl-guc/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-elk-e7500/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15820 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-no-display:
    - fi-icl-guc:         [PASS][52] -> [INCOMPLETE][53] ([i915#140])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-icl-guc/igt@i915_module_load@reload-no-display.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-icl-guc/igt@i915_module_load@reload-no-display.html
    - fi-elk-e7500:       [PASS][54] -> [INCOMPLETE][55] ([i915#66])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-elk-e7500/igt@i915_module_load@reload-no-display.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-elk-e7500/igt@i915_module_load@reload-no-display.html
    - fi-pnv-d510:        [PASS][56] -> [INCOMPLETE][57] ([i915#299])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-pnv-d510/igt@i915_module_load@reload-no-display.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-pnv-d510/igt@i915_module_load@reload-no-display.html
    - fi-bwr-2160:        [PASS][58] -> [INCOMPLETE][59] ([i915#715])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-bwr-2160/igt@i915_module_load@reload-no-display.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-bwr-2160/igt@i915_module_load@reload-no-display.html
    - fi-kbl-8809g:       [PASS][60] -> [INCOMPLETE][61] ([fdo#103665])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-kbl-8809g/igt@i915_module_load@reload-no-display.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-kbl-8809g/igt@i915_module_load@reload-no-display.html
    - fi-icl-y:           [PASS][62] -> [INCOMPLETE][63] ([i915#140])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-icl-y/igt@i915_module_load@reload-no-display.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-icl-y/igt@i915_module_load@reload-no-display.html
    - fi-gdg-551:         [PASS][64] -> [INCOMPLETE][65] ([i915#172])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-gdg-551/igt@i915_module_load@reload-no-display.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-gdg-551/igt@i915_module_load@reload-no-display.html
    - fi-snb-2600:        [PASS][66] -> [INCOMPLETE][67] ([i915#82])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-snb-2600/igt@i915_module_load@reload-no-display.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-snb-2600/igt@i915_module_load@reload-no-display.html
    - fi-icl-u3:          [PASS][68] -> [INCOMPLETE][69] ([i915#140])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-icl-u3/igt@i915_module_load@reload-no-display.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-icl-u3/igt@i915_module_load@reload-no-display.html
    - fi-skl-6770hq:      [PASS][70] -> [INCOMPLETE][71] ([k.org#204565])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-skl-6770hq/igt@i915_module_load@reload-no-display.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-skl-6770hq/igt@i915_module_load@reload-no-display.html
    - fi-byt-n2820:       [PASS][72] -> [INCOMPLETE][73] ([i915#45])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-byt-n2820/igt@i915_module_load@reload-no-display.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-byt-n2820/igt@i915_module_load@reload-no-display.html
    - fi-skl-lmem:        [PASS][74] -> [INCOMPLETE][75] ([k.org#204565])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-skl-lmem/igt@i915_module_load@reload-no-display.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-skl-lmem/igt@i915_module_load@reload-no-display.html
    - fi-bxt-dsi:         [PASS][76] -> [INCOMPLETE][77] ([fdo#103927])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-bxt-dsi/igt@i915_module_load@reload-no-display.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-bxt-dsi/igt@i915_module_load@reload-no-display.html
    - fi-cml-u2:          [PASS][78] -> [INCOMPLETE][79] ([i915#283])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-cml-u2/igt@i915_module_load@reload-no-display.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-cml-u2/igt@i915_module_load@reload-no-display.html
    - fi-glk-dsi:         [PASS][80] -> [INCOMPLETE][81] ([i915#58] / [k.org#198133])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-glk-dsi/igt@i915_module_load@reload-no-display.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-glk-dsi/igt@i915_module_load@reload-no-display.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][82] ([i915#816]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic-files:
    - {fi-tgl-u}:         [INCOMPLETE][84] ([fdo#111735]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-tgl-u/igt@gem_ctx_create@basic-files.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-tgl-u/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-guc}:       [INCOMPLETE][86] ([fdo#111593]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-tgl-guc/igt@gem_exec_gttfill@basic.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-tgl-guc/igt@gem_exec_gttfill@basic.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][88] ([i915#44]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][90] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][91] ([fdo#107139] / [i915#62] / [i915#92])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-x1275:       [DMESG-WARN][92] ([i915#62] / [i915#92]) -> [SKIP][93] ([fdo#109271])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][94] ([i915#62] / [i915#92]) -> [DMESG-WARN][95] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][96] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][97] ([i915#62] / [i915#92]) +7 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@runner@aborted:
    - fi-icl-guc:         [FAIL][98] ([fdo#110943] / [fdo#111093]) -> [FAIL][99] ([fdo#111093])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-icl-guc/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-icl-guc/igt@runner@aborted.html
    - fi-byt-j1900:       [FAIL][100] ([i915#816]) -> [FAIL][101] ([fdo#111249])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-byt-j1900/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-byt-j1900/igt@runner@aborted.html
    - fi-kbl-8809g:       [FAIL][102] ([i915#858]) -> [FAIL][103] ([i915#592])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-kbl-8809g/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#110943]: https://bugs.freedesktop.org/show_bug.cgi?id=110943
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [fdo#111249]: https://bugs.freedesktop.org/show_bug.cgi?id=111249
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#592]: https://gitlab.freedesktop.org/drm/intel/issues/592
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#715]: https://gitlab.freedesktop.org/drm/intel/issues/715
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (51 -> 45)
------------------------------

  Additional (1): fi-icl-u2 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7591 -> Patchwork_15820

  CI-20190529: 20190529
  CI_DRM_7591: 977eb2b7ca4efceca4baf88a612e751f5f819999 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5350: 36431c5923099582e87379aec8e16d43090d06a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15820: 691d533e90028b77d4b09f02b060167022458a36 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

691d533e9002 drm/i915/gt: Ratelimit display power w/a
309993b6b554 drm/i915: Ratelimit i915_globals_park

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15820/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
