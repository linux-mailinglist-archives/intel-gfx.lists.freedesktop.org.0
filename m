Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A441ED41D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 18:20:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423D389CC4;
	Wed,  3 Jun 2020 16:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB6D589CBC;
 Wed,  3 Jun 2020 16:20:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB957A47E8;
 Wed,  3 Jun 2020 16:20:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 03 Jun 2020 16:20:53 -0000
Message-ID: <159120125365.12268.4550952652707832957@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200603145713.3835124-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200603145713.3835124-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/24=5D_Revert_=22drm/i915/gem=3A_Drop_re?=
 =?utf-8?q?location_slowpath=22=2E?=
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

Series: series starting with [01/24] Revert "drm/i915/gem: Drop relocation slowpath".
URL   : https://patchwork.freedesktop.org/series/77960/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8579 -> Patchwork_17854
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17854 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17854, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17854:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-pnv-d510/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-snb-2520m/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-byt-n2820/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-ivb-3770/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-byt-j1900/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-elk-e7500/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-blb-e6850/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_selftest@live@gem_execbuf}:
    - fi-skl-6600u:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-8109u:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-cfl-8109u/igt@i915_selftest@live@gem_execbuf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-cfl-8109u/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-7500u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-kbl-7500u/igt@i915_selftest@live@gem_execbuf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-kbl-7500u/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-guc:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-kbl-guc/igt@i915_selftest@live@gem_execbuf.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-kbl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-nick:        [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-8809g:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-kbl-8809g/igt@i915_selftest@live@gem_execbuf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-kbl-8809g/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-y:           [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-icl-y/igt@i915_selftest@live@gem_execbuf.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-icl-y/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-r:           [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-kbl-r/igt@i915_selftest@live@gem_execbuf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-kbl-r/igt@i915_selftest@live@gem_execbuf.html
    - fi-blb-e6850:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-blb-e6850/igt@i915_selftest@live@gem_execbuf.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-blb-e6850/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-x1275:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-kefka:       [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-bsw-kefka/igt@i915_selftest@live@gem_execbuf.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-bsw-kefka/igt@i915_selftest@live@gem_execbuf.html
    - fi-cml-s:           [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-cml-s/igt@i915_selftest@live@gem_execbuf.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-cml-s/igt@i915_selftest@live@gem_execbuf.html
    - fi-tgl-y:           [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-tgl-y/igt@i915_selftest@live@gem_execbuf.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-tgl-y/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-guc:         [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-soraka:      [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-kbl-soraka/igt@i915_selftest@live@gem_execbuf.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-kbl-soraka/igt@i915_selftest@live@gem_execbuf.html
    - {fi-ehl-1}:         [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-ehl-1/igt@i915_selftest@live@gem_execbuf.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-ehl-1/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-n3050:       [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
    - fi-ivb-3770:        [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-ivb-3770/igt@i915_selftest@live@gem_execbuf.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-ivb-3770/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-lmem:        [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-skl-lmem/igt@i915_selftest@live@gem_execbuf.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-skl-lmem/igt@i915_selftest@live@gem_execbuf.html
    - fi-ilk-650:         [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html
    - fi-cml-u2:          [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-cml-u2/igt@i915_selftest@live@gem_execbuf.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-cml-u2/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-guc:         [PASS][55] -> [INCOMPLETE][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-icl-guc/igt@i915_selftest@live@gem_execbuf.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-icl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-8700k:       [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html
    - fi-bxt-dsi:         [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-bxt-dsi/igt@i915_selftest@live@gem_execbuf.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-bxt-dsi/igt@i915_selftest@live@gem_execbuf.html
    - fi-hsw-4770:        [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-hsw-4770/igt@i915_selftest@live@gem_execbuf.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-hsw-4770/igt@i915_selftest@live@gem_execbuf.html
    - {fi-tgl-u}:         [PASS][63] -> [INCOMPLETE][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-tgl-u/igt@i915_selftest@live@gem_execbuf.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-tgl-u/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-6700k2:      [PASS][65] -> [INCOMPLETE][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-skl-6700k2/igt@i915_selftest@live@gem_execbuf.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-skl-6700k2/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-u2:          [PASS][67] -> [INCOMPLETE][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html
    - {fi-tgl-dsi}:       [PASS][69] -> [INCOMPLETE][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2520m:       [PASS][71] -> [INCOMPLETE][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
    - fi-whl-u:           [PASS][73] -> [INCOMPLETE][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-whl-u/igt@i915_selftest@live@gem_execbuf.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-whl-u/igt@i915_selftest@live@gem_execbuf.html
    - fi-apl-guc:         [PASS][75] -> [INCOMPLETE][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-apl-guc/igt@i915_selftest@live@gem_execbuf.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-apl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-guc:         [PASS][77] -> [INCOMPLETE][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-skl-guc/igt@i915_selftest@live@gem_execbuf.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-skl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-bdw-5557u:       [PASS][79] -> [INCOMPLETE][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-bdw-5557u/igt@i915_selftest@live@gem_execbuf.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-bdw-5557u/igt@i915_selftest@live@gem_execbuf.html
    - fi-bwr-2160:        [PASS][81] -> [INCOMPLETE][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-bwr-2160/igt@i915_selftest@live@gem_execbuf.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-bwr-2160/igt@i915_selftest@live@gem_execbuf.html

  
Known issues
------------

  Here are the changes found in Patchwork_17854 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][83] -> [DMESG-WARN][84] ([i915#1982])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-byt-n2820:       [DMESG-WARN][85] ([i915#1982]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-byt-n2820/igt@i915_module_load@reload.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-byt-n2820/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-kbl-soraka:      [DMESG-WARN][87] ([i915#1982]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [DMESG-WARN][89] ([i915#1982]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * {igt@kms_flip@basic-flip-vs-wf_vblank@b-dvi-d1}:
    - fi-bwr-2160:        [FAIL][91] ([i915#1928]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@b-dvi-d1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@b-dvi-d1.html

  * {igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1}:
    - fi-icl-u2:          [DMESG-WARN][93] ([i915#1982]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][95] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][96] ([i915#62] / [i915#92]) +4 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][97] ([fdo#109271]) -> [DMESG-FAIL][98] ([i915#62])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][99] ([i915#62] / [i915#92]) -> [DMESG-WARN][100] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8579 -> Patchwork_17854

  CI-20190529: 20190529
  CI_DRM_8579: 289eb12c88c49a4ac8d325dc457d8878c7f5bdc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5694: a9b6c4c74bfddf7d3d2da3be08804fe315945cea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17854: de0fb243bf50a40b9f92e8689e7b39848d53cc95 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

de0fb243bf50 drm/i915: Kill context before taking ctx->mutex
1f073601ee7f drm/i915: Ensure we hold the pin mutex
f60b4639d689 drm/i915: Add ww locking to pin_to_display_plane
2f3fd8b5e141 drm/i915: Add ww locking to vm_fault_gtt
9bb49e2f74c1 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
78eb94b06623 drm/i915: Use ww pinning for intel_context_create_request()
51a11c92d700 drm/i915/selftests: Fix locking inversion in lrc selftest.
4b168d7eb625 drm/i915: Dirty hack to fix selftests locking inversion
756385fc367b drm/i915: Convert i915_perf to ww locking as well
de5ef8ca658c drm/i915: Kill last user of intel_context_create_request outside of selftests
18ebd9d92415 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
fc5ed58aad70 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
2da536f6aca7 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
5e983148f18d drm/i915: Pin engine before pinning all objects, v4.
36d3bd7c0420 drm/i915: Nuke arguments to eb_pin_engine
b25ba367c26d drm/i915: Add ww context handling to context_barrier_task
2d2857b3d5ae drm/i915: Use ww locking in intel_renderstate.
45f9dff46487 drm/i915: Use per object locking in execbuf, v11.
7d8b20457516 drm/i915/gem: Make eb_add_lut interruptible wait on object lock.
550bd4348656 Revert "drm/i915/gem: Split eb_vma into its own allocation"
ef8df645976c drm/i915: Parse command buffer earlier in eb_relocate(slow)
c412b07e522c drm/i915: Remove locking from i915_gem_object_prepare_read/write
1534f179b1ab drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
a8a26d902de0 Revert "drm/i915/gem: Drop relocation slowpath".

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
