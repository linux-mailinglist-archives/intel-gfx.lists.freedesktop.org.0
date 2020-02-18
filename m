Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB6B1625FF
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 13:20:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F7BE6E27C;
	Tue, 18 Feb 2020 12:20:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 975D26E267;
 Tue, 18 Feb 2020 12:20:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8748CA47E1;
 Tue, 18 Feb 2020 12:20:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 18 Feb 2020 12:20:46 -0000
Message-ID: <158202844654.31433.1655715888880413778@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218111624.1198504-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200218111624.1198504-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/gt=3A_Show_the_cumulative_?=
 =?utf-8?q?context_runtime_in_engine_debug?=
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

Series: series starting with [1/6] drm/i915/gt: Show the cumulative context runtime in engine debug
URL   : https://patchwork.freedesktop.org/series/73567/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7958 -> Patchwork_16596
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16596 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16596, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16596:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_create@basic-files:
    - fi-bdw-5557u:       [PASS][1] -> [FAIL][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-bdw-5557u/igt@gem_ctx_create@basic-files.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-bdw-5557u/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_parallel@contexts:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-7500u/igt@gem_exec_parallel@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-7500u/igt@gem_exec_parallel@contexts.html
    - fi-icl-u2:          [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-u2/igt@gem_exec_parallel@contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-icl-u2/igt@gem_exec_parallel@contexts.html
    - fi-snb-2520m:       [PASS][7] -> [FAIL][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-snb-2520m/igt@gem_exec_parallel@contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-snb-2520m/igt@gem_exec_parallel@contexts.html
    - fi-skl-lmem:        [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-lmem/igt@gem_exec_parallel@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-lmem/igt@gem_exec_parallel@contexts.html
    - fi-skl-6770hq:      [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-6770hq/igt@gem_exec_parallel@contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-6770hq/igt@gem_exec_parallel@contexts.html
    - fi-elk-e7500:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-elk-e7500/igt@gem_exec_parallel@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-elk-e7500/igt@gem_exec_parallel@contexts.html
    - fi-ilk-650:         [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-ilk-650/igt@gem_exec_parallel@contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-ilk-650/igt@gem_exec_parallel@contexts.html
    - fi-kbl-x1275:       [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-x1275/igt@gem_exec_parallel@contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-x1275/igt@gem_exec_parallel@contexts.html
    - fi-icl-y:           [PASS][19] -> [FAIL][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-y/igt@gem_exec_parallel@contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-icl-y/igt@gem_exec_parallel@contexts.html
    - fi-skl-guc:         [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-guc/igt@gem_exec_parallel@contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-guc/igt@gem_exec_parallel@contexts.html
    - fi-kbl-8809g:       [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-8809g/igt@gem_exec_parallel@contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-8809g/igt@gem_exec_parallel@contexts.html
    - fi-kbl-guc:         [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-guc/igt@gem_exec_parallel@contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-guc/igt@gem_exec_parallel@contexts.html
    - fi-skl-6600u:       [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-6600u/igt@gem_exec_parallel@contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-6600u/igt@gem_exec_parallel@contexts.html
    - fi-cfl-8700k:       [PASS][29] -> [FAIL][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cfl-8700k/igt@gem_exec_parallel@contexts.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-cfl-8700k/igt@gem_exec_parallel@contexts.html
    - fi-apl-guc:         [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-apl-guc/igt@gem_exec_parallel@contexts.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-apl-guc/igt@gem_exec_parallel@contexts.html
    - fi-skl-6700k2:      [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-6700k2/igt@gem_exec_parallel@contexts.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-6700k2/igt@gem_exec_parallel@contexts.html
    - fi-icl-guc:         [PASS][35] -> [FAIL][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-guc/igt@gem_exec_parallel@contexts.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-icl-guc/igt@gem_exec_parallel@contexts.html
    - fi-kbl-soraka:      [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-soraka/igt@gem_exec_parallel@contexts.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-soraka/igt@gem_exec_parallel@contexts.html
    - fi-glk-dsi:         [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-glk-dsi/igt@gem_exec_parallel@contexts.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-glk-dsi/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-cml-s:           [PASS][41] -> [FAIL][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cml-s/igt@gem_exec_parallel@fds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-cml-s/igt@gem_exec_parallel@fds.html
    - fi-cfl-guc:         [PASS][43] -> [FAIL][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cfl-guc/igt@gem_exec_parallel@fds.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-cfl-guc/igt@gem_exec_parallel@fds.html
    - fi-bsw-n3050:       [PASS][45] -> [FAIL][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-bsw-n3050/igt@gem_exec_parallel@fds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-bsw-n3050/igt@gem_exec_parallel@fds.html
    - fi-icl-u3:          [PASS][47] -> [FAIL][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-u3/igt@gem_exec_parallel@fds.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-icl-u3/igt@gem_exec_parallel@fds.html
    - fi-cml-u2:          [PASS][49] -> [FAIL][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cml-u2/igt@gem_exec_parallel@fds.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-cml-u2/igt@gem_exec_parallel@fds.html
    - fi-snb-2600:        [PASS][51] -> [FAIL][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-snb-2600/igt@gem_exec_parallel@fds.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-snb-2600/igt@gem_exec_parallel@fds.html
    - fi-bxt-dsi:         [PASS][53] -> [FAIL][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-bxt-dsi/igt@gem_exec_parallel@fds.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-bxt-dsi/igt@gem_exec_parallel@fds.html
    - fi-bsw-nick:        [PASS][55] -> [FAIL][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-bsw-nick/igt@gem_exec_parallel@fds.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-bsw-nick/igt@gem_exec_parallel@fds.html
    - fi-icl-dsi:         [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-dsi/igt@gem_exec_parallel@fds.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-icl-dsi/igt@gem_exec_parallel@fds.html
    - fi-cfl-8109u:       [PASS][59] -> [FAIL][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cfl-8109u/igt@gem_exec_parallel@fds.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-cfl-8109u/igt@gem_exec_parallel@fds.html
    - fi-snb-2520m:       [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-snb-2520m/igt@gem_exec_parallel@fds.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-snb-2520m/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-apl-guc:         [PASS][63] -> [DMESG-FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-apl-guc/igt@i915_selftest@live_gem_contexts.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-apl-guc/igt@i915_selftest@live_gem_contexts.html
    - fi-bxt-dsi:         [PASS][65] -> [DMESG-FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-bxt-dsi/igt@i915_selftest@live_gem_contexts.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-bxt-dsi/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-u2:          [PASS][67] -> [DMESG-FAIL][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cml-u2/igt@i915_selftest@live_gem_contexts.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-cml-u2/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-dsi:         [PASS][69] -> [DMESG-FAIL][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-dsi/igt@i915_selftest@live_gem_contexts.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-icl-dsi/igt@i915_selftest@live_gem_contexts.html
    - fi-kbl-7500u:       [PASS][71] -> [DMESG-FAIL][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-7500u/igt@i915_selftest@live_gem_contexts.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-7500u/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-4770:        [PASS][73] -> [DMESG-FAIL][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-y:           [PASS][75] -> [DMESG-FAIL][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-y/igt@i915_selftest@live_gem_contexts.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-icl-y/igt@i915_selftest@live_gem_contexts.html
    - fi-glk-dsi:         [PASS][77] -> [DMESG-FAIL][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-glk-dsi/igt@i915_selftest@live_gem_contexts.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-glk-dsi/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-u3:          [PASS][79] -> [DMESG-FAIL][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-u3/igt@i915_selftest@live_gem_contexts.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-icl-u3/igt@i915_selftest@live_gem_contexts.html
    - fi-ilk-650:         [PASS][81] -> [DMESG-FAIL][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-ilk-650/igt@i915_selftest@live_gem_contexts.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-ilk-650/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-guc:         [PASS][83] -> [DMESG-FAIL][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-guc/igt@i915_selftest@live_gem_contexts.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-icl-guc/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-u2:          [PASS][85] -> [DMESG-FAIL][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-u2/igt@i915_selftest@live_gem_contexts.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-icl-u2/igt@i915_selftest@live_gem_contexts.html
    - fi-kbl-guc:         [PASS][87] -> [DMESG-FAIL][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-guc/igt@i915_selftest@live_gem_contexts.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-guc/igt@i915_selftest@live_gem_contexts.html
    - fi-bdw-5557u:       [PASS][89] -> [DMESG-FAIL][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-bdw-5557u/igt@i915_selftest@live_gem_contexts.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-bdw-5557u/igt@i915_selftest@live_gem_contexts.html
    - fi-bsw-nick:        [PASS][91] -> [DMESG-FAIL][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-bsw-nick/igt@i915_selftest@live_gem_contexts.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-bsw-nick/igt@i915_selftest@live_gem_contexts.html
    - fi-snb-2600:        [PASS][93] -> [DMESG-FAIL][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-snb-2600/igt@i915_selftest@live_gem_contexts.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-snb-2600/igt@i915_selftest@live_gem_contexts.html
    - fi-kbl-x1275:       [PASS][95] -> [DMESG-FAIL][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
    - fi-bsw-n3050:       [PASS][97] -> [DMESG-FAIL][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-bsw-n3050/igt@i915_selftest@live_gem_contexts.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-bsw-n3050/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-s:           [PASS][99] -> [DMESG-FAIL][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_workarounds:
    - fi-ivb-3770:        [PASS][101] -> [INCOMPLETE][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-ivb-3770/igt@i915_selftest@live_workarounds.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-ivb-3770/igt@i915_selftest@live_workarounds.html
    - fi-hsw-4770r:       [PASS][103] -> [INCOMPLETE][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-hsw-4770r/igt@i915_selftest@live_workarounds.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-hsw-4770r/igt@i915_selftest@live_workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [DMESG-FAIL][105] ([i915#722]) -> [DMESG-FAIL][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [DMESG-FAIL][107] ([i915#1052]) -> [DMESG-FAIL][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@contexts:
    - {fi-tgl-u}:         [PASS][109] -> [FAIL][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-tgl-u/igt@gem_exec_parallel@contexts.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-tgl-u/igt@gem_exec_parallel@contexts.html
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][111]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-7560u/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - {fi-tgl-dsi}:       [PASS][112] -> [FAIL][113] +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-tgl-dsi/igt@gem_exec_parallel@fds.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-tgl-dsi/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_gem_contexts:
    - {fi-kbl-7560u}:     NOTRUN -> [DMESG-FAIL][114]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-7560u/igt@i915_selftest@live_gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16596 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_create@basic-files:
    - fi-byt-n2820:       [PASS][115] -> [FAIL][116] ([i915#694]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-byt-n2820/igt@gem_ctx_create@basic-files.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-byt-n2820/igt@gem_ctx_create@basic-files.html
    - fi-ivb-3770:        [PASS][117] -> [FAIL][118] ([i915#694]) +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-ivb-3770/igt@gem_ctx_create@basic-files.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-ivb-3770/igt@gem_ctx_create@basic-files.html
    - fi-hsw-4770r:       [PASS][119] -> [FAIL][120] ([i915#694]) +2 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-hsw-4770r/igt@gem_ctx_create@basic-files.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-hsw-4770r/igt@gem_ctx_create@basic-files.html
    - fi-byt-j1900:       [PASS][121] -> [FAIL][122] ([i915#694])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-byt-j1900/igt@gem_ctx_create@basic-files.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-byt-j1900/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_parallel@contexts:
    - fi-hsw-4770r:       [PASS][123] -> [TIMEOUT][124] ([fdo#112271])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-hsw-4770r/igt@gem_exec_parallel@contexts.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-hsw-4770r/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-skl-guc:         [PASS][125] -> [FAIL][126] ([fdo#112130])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-guc/igt@gem_exec_parallel@fds.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-guc/igt@gem_exec_parallel@fds.html
    - fi-hsw-4770:        [PASS][127] -> [FAIL][128] ([i915#694]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-hsw-4770/igt@gem_exec_parallel@fds.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-hsw-4770/igt@gem_exec_parallel@fds.html
    - fi-skl-lmem:        [PASS][129] -> [FAIL][130] ([fdo#112130])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-lmem/igt@gem_exec_parallel@fds.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-lmem/igt@gem_exec_parallel@fds.html
    - fi-kbl-soraka:      [PASS][131] -> [FAIL][132] ([fdo#112130])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-soraka/igt@gem_exec_parallel@fds.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-soraka/igt@gem_exec_parallel@fds.html
    - fi-kbl-8809g:       [PASS][133] -> [FAIL][134] ([fdo#112130])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-8809g/igt@gem_exec_parallel@fds.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-8809g/igt@gem_exec_parallel@fds.html
    - fi-skl-6770hq:      [PASS][135] -> [FAIL][136] ([fdo#112130])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-6770hq/igt@gem_exec_parallel@fds.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-6770hq/igt@gem_exec_parallel@fds.html
    - fi-kbl-x1275:       [PASS][137] -> [FAIL][138] ([fdo#112130])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-x1275/igt@gem_exec_parallel@fds.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-x1275/igt@gem_exec_parallel@fds.html
    - fi-skl-6600u:       [PASS][139] -> [FAIL][140] ([fdo#112130])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-6600u/igt@gem_exec_parallel@fds.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-6600u/igt@gem_exec_parallel@fds.html
    - fi-apl-guc:         [PASS][141] -> [FAIL][142] ([fdo#112130])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-apl-guc/igt@gem_exec_parallel@fds.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-apl-guc/igt@gem_exec_parallel@fds.html
    - fi-skl-6700k2:      [PASS][143] -> [FAIL][144] ([fdo#112130])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-6700k2/igt@gem_exec_parallel@fds.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-6700k2/igt@gem_exec_parallel@fds.html
    - fi-kbl-guc:         [PASS][145] -> [FAIL][146] ([fdo#112130])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-guc/igt@gem_exec_parallel@fds.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-guc/igt@gem_exec_parallel@fds.html
    - fi-kbl-7500u:       [PASS][147] -> [FAIL][148] ([fdo#112130])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-7500u/igt@gem_exec_parallel@fds.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-kbl-7500u/igt@gem_exec_parallel@fds.html
    - fi-glk-dsi:         [PASS][149] -> [FAIL][150] ([fdo#112130])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-glk-dsi/igt@gem_exec_parallel@fds.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-glk-dsi/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [PASS][151] -> [DMESG-FAIL][152] ([i915#623])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
    - fi-skl-6600u:       [PASS][153] -> [DMESG-FAIL][154] ([i915#623])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-6600u/igt@i915_selftest@live_gem_contexts.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-6600u/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-8700k:       [PASS][155] -> [DMESG-FAIL][156] ([i915#623])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-skl-guc:         [PASS][157] -> [DMESG-FAIL][158] ([i915#623])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-guc/igt@i915_selftest@live_gem_contexts.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-guc/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-8109u:       [PASS][159] -> [DMESG-FAIL][160] ([i915#623])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cfl-8109u/igt@i915_selftest@live_gem_contexts.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-cfl-8109u/igt@i915_selftest@live_gem_contexts.html
    - fi-skl-6700k2:      [PASS][161] -> [DMESG-FAIL][162] ([i915#623])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-6700k2/igt@i915_selftest@live_gem_contexts.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-6700k2/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-guc:         [PASS][163] -> [DMESG-FAIL][164] ([i915#623])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6770hq:      [INCOMPLETE][165] ([i915#151]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [DMESG-FAIL][167] ([i915#765]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-y/igt@i915_selftest@live_active.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-icl-y/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-guc:         [TIMEOUT][169] ([fdo#112271]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-guc/igt@i915_selftest@live_gtt.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-icl-guc/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [FAIL][171] ([i915#217] / [i915#976]) -> [PASS][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Warnings ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][173] ([fdo#112271] / [i915#1084] / [i915#816]) -> [FAIL][174] ([i915#694])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][175] ([i915#694]) -> [TIMEOUT][176] ([fdo#112271])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#112130]: https://bugs.freedesktop.org/show_bug.cgi?id=112130
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (51 -> 44)
------------------------------

  Additional (2): fi-hsw-peppy fi-kbl-7560u 
  Missing    (9): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-kefka fi-blb-e6850 fi-byt-clapper fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7958 -> Patchwork_16596

  CI-20190529: 20190529
  CI_DRM_7958: af30970548f72cf8a37886f009e0cfe02b23c8a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5445: 21e523814d692978d6d04ba85eadd67fcbd88b7e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16596: 25201c4b415a921586fc5e999e8e9720d9e1bd31 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

25201c4b415a drm/i915/gem: Consolidate ctx->engines[] release
80b24ffec43b drm/i915/gem: Check that the context wasn't closed during setup
0b1cbf2f8e55 drm/i915/gt: Prevent allocation on a banned context
6f9a3708f010 drm/i915/gt: Fix up missing error propagation for heartbeat pulses
a5a21f76779e drm/i915/execlists: Check the sentinel is alone in the ELSP
bc3998499b8b drm/i915/gt: Show the cumulative context runtime in engine debug

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16596/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
