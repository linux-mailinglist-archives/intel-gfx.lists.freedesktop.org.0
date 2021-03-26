Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D5434A2D6
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 08:59:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1454F6E128;
	Fri, 26 Mar 2021 07:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E6BA888FA1;
 Fri, 26 Mar 2021 07:59:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF7EAA363B;
 Fri, 26 Mar 2021 07:59:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Fri, 26 Mar 2021 07:59:36 -0000
Message-ID: <161674557690.10687.5403789605116963645@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210326055505.1424432-1-hch@lst.de>
In-Reply-To: <20210326055505.1424432-1-hch@lst.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_mm=3A_add_remap=5Fpfn=5Frange=5Fnot?=
 =?utf-8?q?rack?=
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
Content-Type: multipart/mixed; boundary="===============1616772862=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1616772862==
Content-Type: multipart/alternative;
 boundary="===============6170576030362789775=="

--===============6170576030362789775==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] mm: add remap_pfn_range_notrack
URL   : https://patchwork.freedesktop.org/series/88472/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9902 -> Patchwork_19864
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19864 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19864, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19864:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@nb-await@vecs0:
    - fi-bsw-nick:        [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-nick/igt@gem_exec_fence@nb-await@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-nick/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [PASS][3] -> [DMESG-WARN][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-icl-u2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-icl-u2/igt@i915_module_load@reload.html
    - fi-cml-u2:          [PASS][5] -> [DMESG-WARN][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-cml-u2/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-cml-u2/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][7] -> [DMESG-WARN][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-cfl-8700k/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [PASS][9] -> [DMESG-WARN][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-snb-2520m/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-bxt-dsi:         [PASS][11] -> [DMESG-WARN][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bxt-dsi/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-hsw-4770:        [PASS][13] -> [DMESG-WARN][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-hsw-4770/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-hsw-4770/igt@i915_module_load@reload.html
    - fi-cml-s:           [PASS][15] -> [DMESG-WARN][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-cml-s/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-cml-s/igt@i915_module_load@reload.html
    - fi-pnv-d510:        [PASS][17] -> [DMESG-WARN][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-pnv-d510/igt@i915_module_load@reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-pnv-d510/igt@i915_module_load@reload.html
    - fi-skl-6600u:       [PASS][19] -> [DMESG-WARN][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-skl-6600u/igt@i915_module_load@reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][21] -> [DMESG-WARN][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-cfl-guc/igt@i915_module_load@reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-cfl-guc/igt@i915_module_load@reload.html
    - fi-ilk-650:         [PASS][23] -> [DMESG-FAIL][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-ilk-650/igt@i915_module_load@reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-ilk-650/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][25] -> [DMESG-WARN][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-ivb-3770/igt@i915_module_load@reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-ivb-3770/igt@i915_module_load@reload.html
    - fi-elk-e7500:       [PASS][27] -> [DMESG-FAIL][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-elk-e7500/igt@i915_module_load@reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-elk-e7500/igt@i915_module_load@reload.html
    - fi-skl-6700k2:      [PASS][29] -> [DMESG-WARN][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-skl-6700k2/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-skl-6700k2/igt@i915_module_load@reload.html
    - fi-kbl-x1275:       [PASS][31] -> [DMESG-WARN][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-x1275/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-x1275/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][33] -> [DMESG-WARN][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-guc/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-guc/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-nick/igt@i915_module_load@reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-nick/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - fi-bsw-kefka:       [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-kefka/igt@i915_selftest@live@mman.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-kefka/igt@i915_selftest@live@mman.html
    - fi-bwr-2160:        [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bwr-2160/igt@i915_selftest@live@mman.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bwr-2160/igt@i915_selftest@live@mman.html
    - fi-kbl-r:           [PASS][41] -> [DMESG-WARN][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-r/igt@i915_selftest@live@mman.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-r/igt@i915_selftest@live@mman.html
    - fi-bsw-nick:        [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-nick/igt@i915_selftest@live@mman.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-nick/igt@i915_selftest@live@mman.html
    - fi-bdw-5557u:       NOTRUN -> [DMESG-WARN][45] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bdw-5557u/igt@i915_selftest@live@mman.html
    - fi-kbl-soraka:      [PASS][46] -> [DMESG-WARN][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-soraka/igt@i915_selftest@live@mman.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-soraka/igt@i915_selftest@live@mman.html
    - fi-cfl-8109u:       [PASS][48] -> [DMESG-WARN][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-cfl-8109u/igt@i915_selftest@live@mman.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-cfl-8109u/igt@i915_selftest@live@mman.html
    - fi-snb-2600:        [PASS][50] -> [DMESG-WARN][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-snb-2600/igt@i915_selftest@live@mman.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-snb-2600/igt@i915_selftest@live@mman.html
    - fi-byt-j1900:       [PASS][52] -> [DMESG-FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-byt-j1900/igt@i915_selftest@live@mman.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-byt-j1900/igt@i915_selftest@live@mman.html
    - fi-tgl-u2:          [PASS][54] -> [DMESG-WARN][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-u2/igt@i915_selftest@live@mman.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-u2/igt@i915_selftest@live@mman.html
    - fi-skl-guc:         [PASS][56] -> [DMESG-WARN][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-skl-guc/igt@i915_selftest@live@mman.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-skl-guc/igt@i915_selftest@live@mman.html
    - fi-kbl-7567u:       [PASS][58] -> [DMESG-WARN][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-7567u/igt@i915_selftest@live@mman.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-7567u/igt@i915_selftest@live@mman.html
    - fi-glk-dsi:         [PASS][60] -> [DMESG-WARN][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-glk-dsi/igt@i915_selftest@live@mman.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-glk-dsi/igt@i915_selftest@live@mman.html
    - fi-tgl-y:           [PASS][62] -> [DMESG-WARN][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-y/igt@i915_selftest@live@mman.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-y/igt@i915_selftest@live@mman.html
    - fi-kbl-7500u:       [PASS][64] -> [DMESG-WARN][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-7500u/igt@i915_selftest@live@mman.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-7500u/igt@i915_selftest@live@mman.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [PASS][66] -> [FAIL][67] +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bxt-dsi:         [PASS][68] -> [FAIL][69] +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bxt-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bxt-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-bsw-kefka:       [PASS][70] -> [FAIL][71] +5 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-pnv-d510:        [PASS][72] -> [FAIL][73] +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-glk-dsi:         [PASS][74] -> [FAIL][75] +4 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-bwr-2160:        [PASS][76] -> [FAIL][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bwr-2160/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bwr-2160/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-ilk-650:         [PASS][78] -> [FAIL][79] +16 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-ilk-650/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-ilk-650/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-elk-e7500:       [PASS][80] -> [FAIL][81] +8 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  
#### Warnings ####

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-glk-dsi:         [DMESG-WARN][82] ([i915#3143]) -> [DMESG-FAIL][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-glk-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-glk-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-hsw-gt1}:       [PASS][84] -> [DMESG-WARN][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-hsw-gt1/igt@i915_module_load@reload.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-hsw-gt1/igt@i915_module_load@reload.html
    - {fi-ehl-1}:         [PASS][86] -> [DMESG-WARN][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-ehl-1/igt@i915_module_load@reload.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-ehl-1/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - {fi-ehl-1}:         NOTRUN -> [DMESG-WARN][88]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-ehl-1/igt@i915_selftest@live@mman.html
    - {fi-tgl-dsi}:       [PASS][89] -> [DMESG-WARN][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-dsi/igt@i915_selftest@live@mman.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-dsi/igt@i915_selftest@live@mman.html

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-rkl-11500t}:    [FAIL][91] ([i915#3278]) -> [INCOMPLETE][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html

  * igt@runner@aborted:
    - {fi-rkl-11500t}:    NOTRUN -> [FAIL][93]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-rkl-11500t/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19864 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][94] ([fdo#109271]) +27 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][95] ([i915#2283])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_wait@busy@all:
    - fi-bsw-kefka:       [PASS][96] -> [FAIL][97] ([i915#3177])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-kefka/igt@gem_wait@busy@all.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-kefka/igt@gem_wait@busy@all.html

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][98] -> [DMESG-WARN][99] ([i915#1982])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-byt-j1900/igt@i915_module_load@reload.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-kbl-soraka:      [PASS][100] -> [DMESG-WARN][101] ([i915#1982])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-soraka/igt@i915_module_load@reload.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-soraka/igt@i915_module_load@reload.html
    - fi-tgl-u2:          [PASS][102] -> [DMESG-WARN][103] ([k.org#205379])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-u2/igt@i915_module_load@reload.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-u2/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][104] -> [DMESG-WARN][105] ([i915#1982])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-kefka/igt@i915_module_load@reload.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-tgl-y:           [PASS][106] -> [DMESG-WARN][107] ([i915#1982] / [k.org#205379])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-y/igt@i915_module_load@reload.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-y/igt@i915_module_load@reload.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [PASS][108] -> [DMESG-WARN][109] ([i915#2203] / [i915#2868])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][110] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-byt-j1900:       [PASS][111] -> [FAIL][112] ([i915#53]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-byt-j1900/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-byt-j1900/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][113] -> [DMESG-WARN][114] ([i915#402])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {fi-ehl-1}:         [INCOMPLETE][115] ([i915#2405]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-ehl-1/igt@i915_pm_rpm@module-reload.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-ehl-1/igt@i915_pm_rpm@module-reload.html

  * igt@prime_self_import@basic-with_one_bo:
    - fi-tgl-y:           [DMESG-WARN][117] ([i915#402]) -> [PASS][118] +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-glk-dsi:         [DMESG-WARN][119] ([i915#3143]) -> [DMESG-FAIL][120] ([i915#1982])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-glk-dsi/igt@i915_module_load@reload.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-glk-dsi/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [DMESG-WARN][121] ([i915#1982] / [i915#3143]) -> [DMESG-WARN][122] ([i915#3143])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1021]: https://gitlab.freedesktop.org/drm/intel/issues/1021
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2868]: https://gitlab.freedesktop.org/drm/intel/issues/2868
  [i915#3143]: https://gitlab.freedesktop.org/drm/intel/issues/3143
  [i915#3177]: https://gitlab.freedesktop.org/drm/intel/issues/3177
  [i915#3278]: https://gitlab.freedesktop.org/drm/intel/issues/3278
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (46 -> 42)
------------------------------

  Additional (1): fi-bdw-5557u 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-icl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9902 -> Patchwork_19864

  CI-20190529: 20190529
  CI_DRM_9902: 356ce79a30960181dc8d810c5072a9108aa24f1d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6046: e76039273b1524147c43dba061756f06003d56ae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19864: 7452c4f8f8ac802a265cc629ce51d3b8d7b3bce3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7452c4f8f8ac i915: fix remap_io_sg to verify the pgprot
22d2aa9b1a1e i915: use io_mapping_map_user
9afcebc072dd mm: add a io_mapping_map_user helper
e3d889b6653b mm: add remap_pfn_range_notrack

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/index.html

--===============6170576030362789775==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] mm: add remap_pfn_range_notrack</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88472/">https://patchwork.freedesktop.org/series/88472/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9902 -&gt; Patchwork_19864</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19864 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19864, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19864:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-nick/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-nick/igt@gem_exec_fence@nb-await@vecs0.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-icl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-icl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-cml-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-cml-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-cfl-8700k/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-cfl-8700k/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-snb-2520m/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-snb-2520m/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bxt-dsi/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bxt-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-hsw-4770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-hsw-4770/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-cml-s/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-cml-s/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-pnv-d510/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-pnv-d510/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-skl-6600u/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-cfl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-cfl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-ilk-650/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-ilk-650/igt@i915_module_load@reload.html">DMESG-FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-ivb-3770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-ivb-3770/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-elk-e7500/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-elk-e7500/igt@i915_module_load@reload.html">DMESG-FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-skl-6700k2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-skl-6700k2/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-x1275/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-x1275/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-nick/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-nick/igt@i915_module_load@reload.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-kefka/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-kefka/igt@i915_selftest@live@mman.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bwr-2160/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bwr-2160/igt@i915_selftest@live@mman.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-r/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-r/igt@i915_selftest@live@mman.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-nick/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-nick/igt@i915_selftest@live@mman.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bdw-5557u/igt@i915_selftest@live@mman.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-soraka/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-soraka/igt@i915_selftest@live@mman.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-cfl-8109u/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-cfl-8109u/igt@i915_selftest@live@mman.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-snb-2600/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-snb-2600/igt@i915_selftest@live@mman.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-byt-j1900/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-byt-j1900/igt@i915_selftest@live@mman.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-u2/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-u2/igt@i915_selftest@live@mman.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-skl-guc/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-skl-guc/igt@i915_selftest@live@mman.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-7567u/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-7567u/igt@i915_selftest@live@mman.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-glk-dsi/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-glk-dsi/igt@i915_selftest@live@mman.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-y/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-y/igt@i915_selftest@live@mman.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-7500u/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-7500u/igt@i915_selftest@live@mman.html">DMESG-WARN</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bxt-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bxt-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +5 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +4 similar issues</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bwr-2160/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bwr-2160/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-ilk-650/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-ilk-650/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">FAIL</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">FAIL</a> +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc-pipe-b:<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-glk-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-glk-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-hsw-gt1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-hsw-gt1/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-ehl-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-ehl-1/igt@i915_module_load@reload.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>
<p>{fi-ehl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-ehl-1/igt@i915_selftest@live@mman.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-dsi/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-dsi/igt@i915_selftest@live@mman.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3278">i915#3278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-rkl-11500t/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19864 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-kefka/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-kefka/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3177">i915#3177</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-bsw-kefka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2868">i915#2868</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-byt-j1900/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-byt-j1900/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-ehl-1/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-ehl-1/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-glk-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-glk-dsi/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9902/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19864/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 42)</h2>
<p>Additional (1): fi-bdw-5557u <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-icl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9902 -&gt; Patchwork_19864</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9902: 356ce79a30960181dc8d810c5072a9108aa24f1d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6046: e76039273b1524147c43dba061756f06003d56ae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19864: 7452c4f8f8ac802a265cc629ce51d3b8d7b3bce3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7452c4f8f8ac i915: fix remap_io_sg to verify the pgprot<br />
22d2aa9b1a1e i915: use io_mapping_map_user<br />
9afcebc072dd mm: add a io_mapping_map_user helper<br />
e3d889b6653b mm: add remap_pfn_range_notrack</p>

</body>
</html>

--===============6170576030362789775==--

--===============1616772862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1616772862==--
