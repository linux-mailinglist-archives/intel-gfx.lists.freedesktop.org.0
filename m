Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C75B180174
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 16:19:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5353D6E0C1;
	Tue, 10 Mar 2020 15:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B4D716E0C1;
 Tue, 10 Mar 2020 15:19:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ADC7DA47E6;
 Tue, 10 Mar 2020 15:19:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 10 Mar 2020 15:19:21 -0000
Message-ID: <158385356168.24168.10901700699817299979@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUGVy?=
 =?utf-8?q?_client_engine_busyness_=28rev5=29?=
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

Series: Per client engine busyness (rev5)
URL   : https://patchwork.freedesktop.org/series/70977/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8106 -> Patchwork_16896
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16896 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16896, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16896:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy-all:
    - fi-bsw-nick:        [PASS][1] -> [DMESG-WARN][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-bsw-nick/igt@gem_busy@busy-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-bsw-nick/igt@gem_busy@busy-all.html
    - fi-bdw-5557u:       NOTRUN -> [DMESG-WARN][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-bdw-5557u/igt@gem_busy@busy-all.html
    - fi-icl-guc:         [PASS][4] -> [DMESG-WARN][5] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-guc/igt@gem_busy@busy-all.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-icl-guc/igt@gem_busy@busy-all.html
    - fi-skl-6770hq:      [PASS][6] -> [DMESG-WARN][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-skl-6770hq/igt@gem_busy@busy-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-skl-6770hq/igt@gem_busy@busy-all.html
    - fi-bsw-kefka:       [PASS][8] -> [DMESG-WARN][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-bsw-kefka/igt@gem_busy@busy-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-bsw-kefka/igt@gem_busy@busy-all.html
    - fi-kbl-guc:         [PASS][10] -> [DMESG-WARN][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-kbl-guc/igt@gem_busy@busy-all.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-kbl-guc/igt@gem_busy@busy-all.html
    - fi-kbl-x1275:       [PASS][12] -> [DMESG-WARN][13] +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-kbl-x1275/igt@gem_busy@busy-all.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-kbl-x1275/igt@gem_busy@busy-all.html
    - fi-hsw-peppy:       [PASS][14] -> [DMESG-WARN][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-hsw-peppy/igt@gem_busy@busy-all.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-hsw-peppy/igt@gem_busy@busy-all.html
    - fi-icl-u2:          [PASS][16] -> [DMESG-WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-u2/igt@gem_busy@busy-all.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-icl-u2/igt@gem_busy@busy-all.html
    - fi-icl-y:           [PASS][18] -> [DMESG-WARN][19] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-y/igt@gem_busy@busy-all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-icl-y/igt@gem_busy@busy-all.html
    - fi-glk-dsi:         [PASS][20] -> [DMESG-WARN][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-glk-dsi/igt@gem_busy@busy-all.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-glk-dsi/igt@gem_busy@busy-all.html
    - fi-skl-guc:         [PASS][22] -> [DMESG-WARN][23] +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-skl-guc/igt@gem_busy@busy-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-skl-guc/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-process:
    - fi-gdg-551:         [PASS][24] -> [DMESG-WARN][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-gdg-551/igt@gem_close_race@basic-process.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-gdg-551/igt@gem_close_race@basic-process.html

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [PASS][26] -> [DMESG-WARN][27] +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-kbl-8809g/igt@i915_module_load@reload.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-kbl-8809g/igt@i915_module_load@reload.html
    - fi-cml-u2:          [PASS][28] -> [DMESG-WARN][29] +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-cml-u2/igt@i915_module_load@reload.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-cml-u2/igt@i915_module_load@reload.html
    - fi-blb-e6850:       [PASS][30] -> [DMESG-WARN][31] +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-blb-e6850/igt@i915_module_load@reload.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-blb-e6850/igt@i915_module_load@reload.html
    - fi-byt-j1900:       [PASS][32] -> [DMESG-WARN][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-byt-j1900/igt@i915_module_load@reload.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][34] -> [DMESG-WARN][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-cfl-8700k/igt@i915_module_load@reload.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-apl-guc:         [PASS][36] -> [DMESG-WARN][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-apl-guc/igt@i915_module_load@reload.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-apl-guc/igt@i915_module_load@reload.html
    - fi-icl-dsi:         [PASS][38] -> [DMESG-WARN][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-dsi/igt@i915_module_load@reload.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-icl-dsi/igt@i915_module_load@reload.html
    - fi-bxt-dsi:         [PASS][40] -> [DMESG-WARN][41] +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-bxt-dsi/igt@i915_module_load@reload.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-hsw-4770:        [PASS][42] -> [DMESG-WARN][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-hsw-4770/igt@i915_module_load@reload.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-hsw-4770/igt@i915_module_load@reload.html
    - fi-cml-s:           [PASS][44] -> [DMESG-WARN][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-cml-s/igt@i915_module_load@reload.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-cml-s/igt@i915_module_load@reload.html
    - fi-pnv-d510:        [PASS][46] -> [DMESG-WARN][47] +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-pnv-d510/igt@i915_module_load@reload.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-pnv-d510/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][48] -> [DMESG-WARN][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-cfl-guc/igt@i915_module_load@reload.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-cfl-guc/igt@i915_module_load@reload.html
    - fi-bsw-n3050:       [PASS][50] -> [DMESG-WARN][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-bsw-n3050/igt@i915_module_load@reload.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-bsw-n3050/igt@i915_module_load@reload.html
    - fi-ilk-650:         [PASS][52] -> [DMESG-WARN][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-ilk-650/igt@i915_module_load@reload.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-ilk-650/igt@i915_module_load@reload.html
    - fi-skl-6700k2:      [PASS][54] -> [DMESG-WARN][55] +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-skl-6700k2/igt@i915_module_load@reload.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-skl-6700k2/igt@i915_module_load@reload.html
    - fi-snb-2600:        NOTRUN -> [DMESG-WARN][56] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-snb-2600/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - fi-skl-6770hq:      [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-skl-6770hq/igt@i915_selftest@live@mman.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-skl-6770hq/igt@i915_selftest@live@mman.html
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][59]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-bdw-5557u/igt@i915_selftest@live@mman.html
    - fi-ilk-650:         [PASS][60] -> [INCOMPLETE][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-ilk-650/igt@i915_selftest@live@mman.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-ilk-650/igt@i915_selftest@live@mman.html
    - fi-cfl-guc:         [PASS][62] -> [INCOMPLETE][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-cfl-guc/igt@i915_selftest@live@mman.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-cfl-guc/igt@i915_selftest@live@mman.html
    - fi-skl-guc:         [PASS][64] -> [INCOMPLETE][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-skl-guc/igt@i915_selftest@live@mman.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-skl-guc/igt@i915_selftest@live@mman.html
    - fi-skl-6700k2:      [PASS][66] -> [INCOMPLETE][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-skl-6700k2/igt@i915_selftest@live@mman.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-skl-6700k2/igt@i915_selftest@live@mman.html
    - fi-icl-y:           [PASS][68] -> [INCOMPLETE][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-y/igt@i915_selftest@live@mman.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-icl-y/igt@i915_selftest@live@mman.html
    - fi-cfl-8700k:       [PASS][70] -> [INCOMPLETE][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-cfl-8700k/igt@i915_selftest@live@mman.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-cfl-8700k/igt@i915_selftest@live@mman.html
    - fi-kbl-x1275:       [PASS][72] -> [INCOMPLETE][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-kbl-x1275/igt@i915_selftest@live@mman.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-kbl-x1275/igt@i915_selftest@live@mman.html
    - fi-icl-dsi:         [PASS][74] -> [INCOMPLETE][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-dsi/igt@i915_selftest@live@mman.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-icl-dsi/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][76]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][77]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-kbl-x1275/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][78]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-snb-2600/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_busy@busy-all:
    - {fi-ehl-1}:         [PASS][79] -> [DMESG-WARN][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-ehl-1/igt@gem_busy@busy-all.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-ehl-1/igt@gem_busy@busy-all.html

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [PASS][81] -> [DMESG-WARN][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-tgl-dsi/igt@i915_module_load@reload.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-tgl-dsi/igt@i915_module_load@reload.html
    - {fi-tgl-u}:         [PASS][83] -> [DMESG-WARN][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-tgl-u/igt@i915_module_load@reload.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-tgl-u/igt@i915_module_load@reload.html
    - {fi-kbl-7560u}:     [PASS][85] -> [DMESG-WARN][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-kbl-7560u/igt@i915_module_load@reload.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-kbl-7560u/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - {fi-ehl-1}:         [PASS][87] -> [INCOMPLETE][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-ehl-1/igt@i915_selftest@live@mman.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-ehl-1/igt@i915_selftest@live@mman.html
    - {fi-tgl-u}:         [PASS][89] -> [INCOMPLETE][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-tgl-u/igt@i915_selftest@live@mman.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-tgl-u/igt@i915_selftest@live@mman.html
    - {fi-kbl-7560u}:     [PASS][91] -> [INCOMPLETE][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-kbl-7560u/igt@i915_selftest@live@mman.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-kbl-7560u/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][93]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-ehl-1/igt@runner@aborted.html
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][94]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-kbl-7560u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16896 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-all:
    - fi-tgl-y:           [PASS][95] -> [DMESG-WARN][96] ([CI#94]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-tgl-y/igt@gem_busy@busy-all.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-tgl-y/igt@gem_busy@busy-all.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][97] -> [FAIL][98] ([i915#138])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gtt:
    - fi-byt-j1900:       [PASS][99] -> [INCOMPLETE][100] ([i915#45])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-byt-j1900/igt@i915_selftest@live@gtt.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-byt-j1900/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@mman:
    - fi-cml-s:           [PASS][101] -> [INCOMPLETE][102] ([i915#283])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-cml-s/igt@i915_selftest@live@mman.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-cml-s/igt@i915_selftest@live@mman.html
    - fi-tgl-y:           [PASS][103] -> [INCOMPLETE][104] ([CI#94])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-tgl-y/igt@i915_selftest@live@mman.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-tgl-y/igt@i915_selftest@live@mman.html
    - fi-pnv-d510:        [PASS][105] -> [INCOMPLETE][106] ([i915#299])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-pnv-d510/igt@i915_selftest@live@mman.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-pnv-d510/igt@i915_selftest@live@mman.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][107] -> [FAIL][108] ([i915#262])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_vgem@basic-sync-default:
    - fi-tgl-y:           [PASS][109] -> [DMESG-WARN][110] ([CI#94] / [i915#402])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-tgl-y/igt@prime_vgem@basic-sync-default.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/fi-tgl-y/igt@prime_vgem@basic-sync-default.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#138]: https://gitlab.freedesktop.org/drm/intel/issues/138
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45


Participating hosts (44 -> 35)
------------------------------

  Additional (2): fi-bdw-5557u fi-snb-2600 
  Missing    (11): fi-hsw-4200u fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-ctg-p8600 fi-ivb-3770 fi-elk-e7500 fi-skl-lmem fi-byt-clapper fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8106 -> Patchwork_16896

  CI-20190529: 20190529
  CI_DRM_8106: 5b0076e8066ea8218e7857ee1aa28b0670acde94 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16896: 2d949154d397136f325a861753f0d38e0cf339ba @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16896/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  MODPOST 121 modules
ERROR: "__udivdi3" [drivers/gpu/drm/i915/i915.ko] undefined!
scripts/Makefile.modpost:93: recipe for target '__modpost' failed
make[1]: *** [__modpost] Error 1
Makefile:1283: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

2d949154d397 compare runtimes
34a9e27cbdca drm/i915: Prefer software tracked context busyness
ea072e9957e0 drm/i915: Carry over past software tracked context runtime
bbf17d95a1e8 drm/i915: Track per-context engine busyness
012f704f4eaf drm/i915: Expose per-engine client busyness
c74f580b92e6 drm/i915: Track all user contexts per client
fce4aa218a33 drm/i915: Track runtime spent in closed GEM contexts
39835200fa71 drm/i915: Track runtime spent in unreachable intel_contexts
d0a0098b5e97 drm/i915: Use explicit flag to mark unreachable intel_context
7edb0602f4a7 drm/i915: Make GEM contexts track DRM clients
a69bb5d42361 drm/i915: Update client name on context create
0f6f5811f8d8 drm/i915: Expose list of clients in sysfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16896/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
