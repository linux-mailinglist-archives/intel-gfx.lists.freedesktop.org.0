Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1841EE3DE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 14:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C0A28992E;
	Thu,  4 Jun 2020 12:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58E0B8887E;
 Thu,  4 Jun 2020 12:02:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52442A47EB;
 Thu,  4 Jun 2020 12:02:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Jun 2020 12:02:52 -0000
Message-ID: <159127217230.14552.2720258254670054683@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604102140.8845-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200604102140.8845-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Exercise_all_copy_engines_with_the_blt_routi?=
 =?utf-8?q?nes?=
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

Series: drm/i915/selftests: Exercise all copy engines with the blt routines
URL   : https://patchwork.freedesktop.org/series/77994/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8581 -> Patchwork_17865
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17865 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17865, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17865:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@blt:
    - fi-cml-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-cml-u2/igt@i915_selftest@live@blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-cml-u2/igt@i915_selftest@live@blt.html
    - fi-whl-u:           [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-whl-u/igt@i915_selftest@live@blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-whl-u/igt@i915_selftest@live@blt.html
    - fi-bxt-dsi:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-bxt-dsi/igt@i915_selftest@live@blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-bxt-dsi/igt@i915_selftest@live@blt.html
    - fi-cfl-8700k:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-cfl-8700k/igt@i915_selftest@live@blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-cfl-8700k/igt@i915_selftest@live@blt.html
    - fi-skl-6600u:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-skl-6600u/igt@i915_selftest@live@blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-skl-6600u/igt@i915_selftest@live@blt.html
    - fi-cfl-8109u:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-cfl-8109u/igt@i915_selftest@live@blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-cfl-8109u/igt@i915_selftest@live@blt.html
    - fi-icl-u2:          [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-icl-u2/igt@i915_selftest@live@blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-icl-u2/igt@i915_selftest@live@blt.html
    - fi-snb-2520m:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-snb-2520m/igt@i915_selftest@live@blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-snb-2520m/igt@i915_selftest@live@blt.html
    - fi-icl-y:           [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-icl-y/igt@i915_selftest@live@blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-icl-y/igt@i915_selftest@live@blt.html
    - fi-kbl-8809g:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-kbl-8809g/igt@i915_selftest@live@blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-kbl-8809g/igt@i915_selftest@live@blt.html
    - fi-apl-guc:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-apl-guc/igt@i915_selftest@live@blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-apl-guc/igt@i915_selftest@live@blt.html
    - fi-kbl-r:           [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-kbl-r/igt@i915_selftest@live@blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-kbl-r/igt@i915_selftest@live@blt.html
    - fi-skl-guc:         [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-skl-guc/igt@i915_selftest@live@blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-skl-guc/igt@i915_selftest@live@blt.html
    - fi-bdw-5557u:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-bdw-5557u/igt@i915_selftest@live@blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-bdw-5557u/igt@i915_selftest@live@blt.html
    - fi-kbl-7500u:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-kbl-7500u/igt@i915_selftest@live@blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-kbl-7500u/igt@i915_selftest@live@blt.html
    - fi-kbl-x1275:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-kbl-x1275/igt@i915_selftest@live@blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-kbl-x1275/igt@i915_selftest@live@blt.html
    - fi-kbl-guc:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-kbl-guc/igt@i915_selftest@live@blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-kbl-guc/igt@i915_selftest@live@blt.html
    - fi-ivb-3770:        [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-ivb-3770/igt@i915_selftest@live@blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-ivb-3770/igt@i915_selftest@live@blt.html
    - fi-skl-lmem:        [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-skl-lmem/igt@i915_selftest@live@blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-skl-lmem/igt@i915_selftest@live@blt.html
    - fi-cml-s:           [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-cml-s/igt@i915_selftest@live@blt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-cml-s/igt@i915_selftest@live@blt.html
    - fi-icl-guc:         [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-icl-guc/igt@i915_selftest@live@blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-icl-guc/igt@i915_selftest@live@blt.html
    - fi-kbl-soraka:      [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-kbl-soraka/igt@i915_selftest@live@blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-kbl-soraka/igt@i915_selftest@live@blt.html
    - fi-cfl-guc:         [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-cfl-guc/igt@i915_selftest@live@blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-cfl-guc/igt@i915_selftest@live@blt.html
    - fi-hsw-4770:        [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-hsw-4770/igt@i915_selftest@live@blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-hsw-4770/igt@i915_selftest@live@blt.html
    - fi-skl-6700k2:      [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-skl-6700k2/igt@i915_selftest@live@blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-skl-6700k2/igt@i915_selftest@live@blt.html

  * igt@runner@aborted:
    - fi-snb-2520m:       NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-bdw-5557u/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][53]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-byt-n2820/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][54]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][55]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-ivb-3770/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][56]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-byt-j1900/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@blt:
    - {fi-ehl-1}:         [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-ehl-1/igt@i915_selftest@live@blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-ehl-1/igt@i915_selftest@live@blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_17865 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_render_linear_blits@basic:
    - fi-tgl-y:           [PASS][59] -> [DMESG-WARN][60] ([i915#402])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-tgl-y/igt@gem_render_linear_blits@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-tgl-y/igt@gem_render_linear_blits@basic.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [PASS][61] -> [DMESG-WARN][62] ([i915#1982])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-kbl-soraka/igt@i915_module_load@reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][63] -> [DMESG-WARN][64] ([i915#1982])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@blt:
    - fi-byt-j1900:       [PASS][65] -> [INCOMPLETE][66] ([i915#45])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-byt-j1900/igt@i915_selftest@live@blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-byt-j1900/igt@i915_selftest@live@blt.html
    - fi-bsw-nick:        [PASS][67] -> [INCOMPLETE][68] ([i915#392])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-bsw-nick/igt@i915_selftest@live@blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-bsw-nick/igt@i915_selftest@live@blt.html
    - fi-bsw-kefka:       [PASS][69] -> [INCOMPLETE][70] ([i915#392])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-bsw-kefka/igt@i915_selftest@live@blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-bsw-kefka/igt@i915_selftest@live@blt.html
    - fi-tgl-y:           [PASS][71] -> [INCOMPLETE][72] ([i915#750])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-tgl-y/igt@i915_selftest@live@blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-tgl-y/igt@i915_selftest@live@blt.html
    - fi-snb-2600:        [PASS][73] -> [INCOMPLETE][74] ([i915#82])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-snb-2600/igt@i915_selftest@live@blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-snb-2600/igt@i915_selftest@live@blt.html
    - fi-glk-dsi:         [PASS][75] -> [INCOMPLETE][76] ([i915#58] / [k.org#198133])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-glk-dsi/igt@i915_selftest@live@blt.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-glk-dsi/igt@i915_selftest@live@blt.html
    - fi-byt-n2820:       [PASS][77] -> [INCOMPLETE][78] ([i915#45])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-byt-n2820/igt@i915_selftest@live@blt.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-byt-n2820/igt@i915_selftest@live@blt.html
    - fi-bsw-n3050:       [PASS][79] -> [INCOMPLETE][80] ([i915#392])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-bsw-n3050/igt@i915_selftest@live@blt.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-bsw-n3050/igt@i915_selftest@live@blt.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [PASS][81] -> [DMESG-WARN][82] ([i915#62] / [i915#92] / [i915#95])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-guc:         [PASS][83] -> [DMESG-WARN][84] ([i915#1982])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-icl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-icl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [DMESG-WARN][85] ([i915#1982]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * {igt@kms_flip@basic-plain-flip@d-dsi1}:
    - {fi-tgl-dsi}:       [DMESG-WARN][87] ([i915#1982]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-tgl-dsi/igt@kms_flip@basic-plain-flip@d-dsi1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-tgl-dsi/igt@kms_flip@basic-plain-flip@d-dsi1.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-tgl-y:           [DMESG-WARN][89] ([i915#1982]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-x1275:       [DMESG-WARN][91] ([i915#62] / [i915#92]) -> [DMESG-WARN][92] ([i915#62] / [i915#92] / [i915#95])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][93] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][94] ([i915#62] / [i915#92]) +6 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (50 -> 44)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8581 -> Patchwork_17865

  CI-20190529: 20190529
  CI_DRM_8581: a3ae560b4c2a6dfb0d550cc40471a7b0c7043500 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5694: a9b6c4c74bfddf7d3d2da3be08804fe315945cea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17865: dbd180308199326bb193a078f3e4a407c58fa046 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dbd180308199 drm/i915/selftests: Exercise all copy engines with the blt routines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17865/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
