Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D48421306B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 02:17:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 639BF6E0E8;
	Fri,  3 Jul 2020 00:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D2BE66E048;
 Fri,  3 Jul 2020 00:17:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE004A363D;
 Fri,  3 Jul 2020 00:17:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Jul 2020 00:17:24 -0000
Message-ID: <159373544475.25591.4160850381526910210@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200702222152.14757-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200702222152.14757-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Split_the_context=27s_obj=3Avma_lut_into_its_own_m?=
 =?utf-8?q?utex_=28rev2=29?=
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

Series: drm/i915/gem: Split the context's obj:vma lut into its own mutex (rev2)
URL   : https://patchwork.freedesktop.org/series/79064/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8702 -> Patchwork_18076
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18076 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18076, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18076:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all:
    - fi-ilk-650:         [PASS][1] -> [INCOMPLETE][2] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-ilk-650/igt@gem_busy@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-ilk-650/igt@gem_busy@busy@all.html
    - fi-snb-2520m:       [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-snb-2520m/igt@gem_busy@busy@all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-snb-2520m/igt@gem_busy@busy@all.html

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][5] -> [TIMEOUT][6] +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-blb-e6850:       [PASS][7] -> [TIMEOUT][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-blb-e6850/igt@gem_close_race@basic-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-blb-e6850/igt@gem_close_race@basic-process.html
    - fi-hsw-4770:        [PASS][9] -> [TIMEOUT][10] +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-hsw-4770/igt@gem_close_race@basic-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-hsw-4770/igt@gem_close_race@basic-process.html

  * igt@gem_ctx_create@basic-files:
    - fi-byt-n2820:       [PASS][11] -> [TIMEOUT][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-byt-n2820/igt@gem_ctx_create@basic-files.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-byt-n2820/igt@gem_ctx_create@basic-files.html
    - fi-byt-j1900:       [PASS][13] -> [TIMEOUT][14] +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-byt-j1900/igt@gem_ctx_create@basic-files.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-byt-j1900/igt@gem_ctx_create@basic-files.html

  * igt@gem_ctx_exec@basic:
    - fi-ilk-650:         [PASS][15] -> [TIMEOUT][16] +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-ilk-650/igt@gem_ctx_exec@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-ilk-650/igt@gem_ctx_exec@basic.html
    - fi-elk-e7500:       [PASS][17] -> [TIMEOUT][18] +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-elk-e7500/igt@gem_ctx_exec@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-elk-e7500/igt@gem_ctx_exec@basic.html
    - fi-snb-2520m:       [PASS][19] -> [TIMEOUT][20] +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-snb-2520m/igt@gem_ctx_exec@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-snb-2520m/igt@gem_ctx_exec@basic.html

  * igt@gem_exec_basic@basic@rcs0:
    - fi-bwr-2160:        [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-bwr-2160/igt@gem_exec_basic@basic@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-bwr-2160/igt@gem_exec_basic@basic@rcs0.html

  * igt@gem_exec_create@basic:
    - fi-gdg-551:         [PASS][23] -> [TIMEOUT][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-gdg-551/igt@gem_exec_create@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-gdg-551/igt@gem_exec_create@basic.html
    - fi-bwr-2160:        [PASS][25] -> [TIMEOUT][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-bwr-2160/igt@gem_exec_create@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-bwr-2160/igt@gem_exec_create@basic.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-ivb-3770:        [PASS][27] -> [INCOMPLETE][28] +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-ivb-3770/igt@gem_exec_fence@basic-await@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-ivb-3770/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-busy@rcs0:
    - fi-blb-e6850:       [PASS][29] -> [INCOMPLETE][30] +6 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-blb-e6850/igt@gem_exec_fence@basic-busy@rcs0.html

  * igt@gem_exec_fence@basic-wait@rcs0:
    - fi-hsw-4770:        [PASS][31] -> [INCOMPLETE][32] +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-hsw-4770/igt@gem_exec_fence@basic-wait@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-hsw-4770/igt@gem_exec_fence@basic-wait@rcs0.html

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][33] -> [TIMEOUT][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
#### Warnings ####

  * igt@gem_exec_fence@basic-busy:
    - fi-bwr-2160:        [SKIP][35] ([fdo#109271]) -> [TIMEOUT][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-bwr-2160/igt@gem_exec_fence@basic-busy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-bwr-2160/igt@gem_exec_fence@basic-busy.html

  * igt@gem_exec_fence@nb-await:
    - fi-gdg-551:         [SKIP][37] ([fdo#109271]) -> [TIMEOUT][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-gdg-551/igt@gem_exec_fence@nb-await.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-gdg-551/igt@gem_exec_fence@nb-await.html
    - fi-snb-2520m:       [SKIP][39] ([fdo#109271]) -> [TIMEOUT][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-snb-2520m/igt@gem_exec_fence@nb-await.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-snb-2520m/igt@gem_exec_fence@nb-await.html

  
Known issues
------------

  Here are the changes found in Patchwork_18076 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy@all:
    - fi-pnv-d510:        [PASS][41] -> [INCOMPLETE][42] ([i915#2119] / [i915#299]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-pnv-d510/igt@gem_busy@busy@all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-pnv-d510/igt@gem_busy@busy@all.html
    - fi-gdg-551:         [PASS][43] -> [INCOMPLETE][44] ([i915#172]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-gdg-551/igt@gem_busy@busy@all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-gdg-551/igt@gem_busy@busy@all.html
    - fi-bwr-2160:        [PASS][45] -> [INCOMPLETE][46] ([i915#2119])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-bwr-2160/igt@gem_busy@busy@all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-bwr-2160/igt@gem_busy@busy@all.html
    - fi-byt-n2820:       [PASS][47] -> [INCOMPLETE][48] ([i915#45]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-byt-n2820/igt@gem_busy@busy@all.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-byt-n2820/igt@gem_busy@busy@all.html
    - fi-elk-e7500:       [PASS][49] -> [INCOMPLETE][50] ([i915#2119] / [i915#66])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-elk-e7500/igt@gem_busy@busy@all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-elk-e7500/igt@gem_busy@busy@all.html

  * igt@gem_close_race@basic-process:
    - fi-elk-e7500:       [PASS][51] -> [TIMEOUT][52] ([i915#1958] / [i915#2119])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-elk-e7500/igt@gem_close_race@basic-process.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-elk-e7500/igt@gem_close_race@basic-process.html
    - fi-snb-2600:        [PASS][53] -> [INCOMPLETE][54] ([i915#82]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-snb-2600/igt@gem_close_race@basic-process.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-snb-2600/igt@gem_close_race@basic-process.html
    - fi-bwr-2160:        [PASS][55] -> [TIMEOUT][56] ([i915#1958] / [i915#2119]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-bwr-2160/igt@gem_close_race@basic-process.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-bwr-2160/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-byt-j1900:       [PASS][57] -> [INCOMPLETE][58] ([i915#2119] / [i915#45])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-byt-j1900/igt@gem_exec_fence@basic-await@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-byt-j1900/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-busy@rcs0:
    - fi-elk-e7500:       [PASS][59] -> [INCOMPLETE][60] ([i915#66]) +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-elk-e7500/igt@gem_exec_fence@basic-busy@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-elk-e7500/igt@gem_exec_fence@basic-busy@rcs0.html
    - fi-byt-j1900:       [PASS][61] -> [INCOMPLETE][62] ([i915#45]) +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-byt-j1900/igt@gem_exec_fence@basic-busy@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-byt-j1900/igt@gem_exec_fence@basic-busy@rcs0.html

  * igt@gem_exec_fence@basic-wait@rcs0:
    - fi-pnv-d510:        [PASS][63] -> [INCOMPLETE][64] ([i915#299]) +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-pnv-d510/igt@gem_exec_fence@basic-wait@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-pnv-d510/igt@gem_exec_fence@basic-wait@rcs0.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - fi-byt-n2820:       [PASS][65] -> [INCOMPLETE][66] ([i915#2119] / [i915#45]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-byt-n2820/igt@gem_exec_fence@nb-await@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-byt-n2820/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_render_linear_blits@basic:
    - fi-gdg-551:         [PASS][67] -> [TIMEOUT][68] ([i915#1958] / [i915#2119])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-gdg-551/igt@gem_render_linear_blits@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-gdg-551/igt@gem_render_linear_blits@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [PASS][69] -> [DMESG-WARN][70] ([i915#1982])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [PASS][71] -> [DMESG-WARN][72] ([i915#1982]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][73] ([i915#1888]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_linear_blits@basic:
    - fi-tgl-u2:          [DMESG-WARN][75] ([i915#402]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-tgl-u2/igt@gem_linear_blits@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-tgl-u2/igt@gem_linear_blits@basic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [DMESG-WARN][77] ([i915#1982]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][79] ([i915#62] / [i915#95]) -> [SKIP][80] ([fdo#109271])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][81] ([i915#62] / [i915#92]) -> [DMESG-WARN][82] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][83] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][84] ([i915#62] / [i915#92]) +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][85] ([i915#1982] / [i915#62] / [i915#92]) -> [DMESG-WARN][86] ([i915#62] / [i915#92])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8702 -> Patchwork_18076

  CI-20190529: 20190529
  CI_DRM_8702: 7a5c82b68e1d0fbf600d353793c2360b3e425629 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5720: f35053d4b6d7bbcf6505ef67a8bd56acc7fb2eb2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18076: e64718ab4fd9fb2b3f5ce0a63610c76c93ced4e5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e64718ab4fd9 drm/i915/gem: Split the context's obj:vma lut into its own mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18076/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
