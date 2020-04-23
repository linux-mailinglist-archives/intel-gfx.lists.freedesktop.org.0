Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F03B1B64EA
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 22:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A122C6E9B8;
	Thu, 23 Apr 2020 20:02:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A9A236E0E1;
 Thu, 23 Apr 2020 20:02:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1363A47E6;
 Thu, 23 Apr 2020 20:02:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 23 Apr 2020 20:02:13 -0000
Message-ID: <158767213362.26749.14289342599776371896@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423182440.21876-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200423182440.21876-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Add_context_batchbuffers_registers_to_live?=
 =?utf-8?q?=5Flrc=5Ffixed?=
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

Series: drm/i915/selftests: Add context batchbuffers registers to live_lrc_fixed
URL   : https://patchwork.freedesktop.org/series/76407/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8354 -> Patchwork_17446
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17446 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17446, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17446:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-cml-s:           [PASS][1] -> [SKIP][2] +31 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cml-s/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-s/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_fence@basic-await:
    - fi-cml-u2:          NOTRUN -> [SKIP][3] +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-u2/igt@gem_exec_fence@basic-await.html

  * igt@gem_exec_fence@basic-wait:
    - fi-cml-s:           NOTRUN -> [SKIP][4] +5 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-s/igt@gem_exec_fence@basic-wait.html

  * igt@gem_sync@basic-each:
    - fi-cml-u2:          [PASS][5] -> [SKIP][6] +31 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cml-u2/igt@gem_sync@basic-each.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-u2/igt@gem_sync@basic-each.html

  * igt@i915_module_load@reload:
    - fi-whl-u:           [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-whl-u/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-whl-u/igt@i915_module_load@reload.html
    - fi-skl-guc:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-guc/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-skl-guc/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-apl-guc:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-apl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_engines:
    - fi-kbl-7500u:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-7500u/igt@i915_selftest@live@gt_engines.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-7500u/igt@i915_selftest@live@gt_engines.html
    - fi-cfl-8109u:       [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-8109u/igt@i915_selftest@live@gt_engines.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cfl-8109u/igt@i915_selftest@live@gt_engines.html
    - fi-kbl-soraka:      [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-soraka/igt@i915_selftest@live@gt_engines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-soraka/igt@i915_selftest@live@gt_engines.html
    - fi-bxt-dsi:         [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bxt-dsi/igt@i915_selftest@live@gt_engines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bxt-dsi/igt@i915_selftest@live@gt_engines.html
    - fi-skl-6700k2:      [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-6700k2/igt@i915_selftest@live@gt_engines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-skl-6700k2/igt@i915_selftest@live@gt_engines.html
    - fi-cml-u2:          [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cml-u2/igt@i915_selftest@live@gt_engines.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-u2/igt@i915_selftest@live@gt_engines.html
    - fi-bsw-n3050:       [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-n3050/igt@i915_selftest@live@gt_engines.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bsw-n3050/igt@i915_selftest@live@gt_engines.html
    - fi-cfl-guc:         [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-guc/igt@i915_selftest@live@gt_engines.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cfl-guc/igt@i915_selftest@live@gt_engines.html
    - fi-cml-s:           [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cml-s/igt@i915_selftest@live@gt_engines.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-s/igt@i915_selftest@live@gt_engines.html
    - fi-kbl-x1275:       [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-x1275/igt@i915_selftest@live@gt_engines.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-x1275/igt@i915_selftest@live@gt_engines.html
    - fi-glk-dsi:         [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-glk-dsi/igt@i915_selftest@live@gt_engines.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-glk-dsi/igt@i915_selftest@live@gt_engines.html
    - fi-bsw-kefka:       [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-kefka/igt@i915_selftest@live@gt_engines.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bsw-kefka/igt@i915_selftest@live@gt_engines.html
    - fi-cfl-8700k:       [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-8700k/igt@i915_selftest@live@gt_engines.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cfl-8700k/igt@i915_selftest@live@gt_engines.html
    - fi-kbl-r:           [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-r/igt@i915_selftest@live@gt_engines.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-r/igt@i915_selftest@live@gt_engines.html
    - fi-bsw-nick:        [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-nick/igt@i915_selftest@live@gt_engines.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bsw-nick/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-icl-guc:         [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-icl-guc/igt@i915_selftest@live@gt_lrc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-icl-guc/igt@i915_selftest@live@gt_lrc.html
    - fi-cml-u2:          [PASS][45] -> [DMESG-FAIL][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cml-u2/igt@i915_selftest@live@gt_lrc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-u2/igt@i915_selftest@live@gt_lrc.html
    - fi-bsw-n3050:       [PASS][47] -> [DMESG-FAIL][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
    - fi-kbl-soraka:      [PASS][49] -> [DMESG-FAIL][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-soraka/igt@i915_selftest@live@gt_lrc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-soraka/igt@i915_selftest@live@gt_lrc.html
    - fi-cml-s:           [PASS][51] -> [DMESG-FAIL][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cml-s/igt@i915_selftest@live@gt_lrc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-s/igt@i915_selftest@live@gt_lrc.html
    - fi-kbl-x1275:       [PASS][53] -> [DMESG-FAIL][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-x1275/igt@i915_selftest@live@gt_lrc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-x1275/igt@i915_selftest@live@gt_lrc.html
    - fi-icl-y:           [PASS][55] -> [DMESG-FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-icl-y/igt@i915_selftest@live@gt_lrc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-icl-y/igt@i915_selftest@live@gt_lrc.html
    - fi-bsw-nick:        [PASS][57] -> [DMESG-FAIL][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html
    - fi-bdw-5557u:       [PASS][59] -> [DMESG-FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bdw-5557u/igt@i915_selftest@live@gt_lrc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bdw-5557u/igt@i915_selftest@live@gt_lrc.html
    - fi-icl-u2:          [PASS][61] -> [DMESG-FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-bxt-dsi:         [PASS][63] -> [DMESG-FAIL][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bxt-dsi/igt@i915_selftest@live@gt_mocs.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bxt-dsi/igt@i915_selftest@live@gt_mocs.html
    - fi-cfl-8700k:       [PASS][65] -> [DMESG-FAIL][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-8700k/igt@i915_selftest@live@gt_mocs.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cfl-8700k/igt@i915_selftest@live@gt_mocs.html
    - fi-kbl-7500u:       [PASS][67] -> [DMESG-FAIL][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-7500u/igt@i915_selftest@live@gt_mocs.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-7500u/igt@i915_selftest@live@gt_mocs.html
    - fi-kbl-r:           [PASS][69] -> [DMESG-FAIL][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-r/igt@i915_selftest@live@gt_mocs.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-r/igt@i915_selftest@live@gt_mocs.html
    - fi-cfl-8109u:       [PASS][71] -> [DMESG-FAIL][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-8109u/igt@i915_selftest@live@gt_mocs.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cfl-8109u/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@mman:
    - fi-bsw-kefka:       [PASS][73] -> [INCOMPLETE][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-kefka/igt@i915_selftest@live@mman.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bsw-kefka/igt@i915_selftest@live@mman.html
    - fi-kbl-r:           [PASS][75] -> [INCOMPLETE][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-r/igt@i915_selftest@live@mman.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-r/igt@i915_selftest@live@mman.html
    - fi-bsw-nick:        [PASS][77] -> [INCOMPLETE][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-nick/igt@i915_selftest@live@mman.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bsw-nick/igt@i915_selftest@live@mman.html
    - fi-kbl-soraka:      [PASS][79] -> [INCOMPLETE][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-soraka/igt@i915_selftest@live@mman.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-soraka/igt@i915_selftest@live@mman.html
    - fi-cfl-8109u:       [PASS][81] -> [INCOMPLETE][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-8109u/igt@i915_selftest@live@mman.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cfl-8109u/igt@i915_selftest@live@mman.html
    - fi-bxt-dsi:         [PASS][83] -> [INCOMPLETE][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bxt-dsi/igt@i915_selftest@live@mman.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bxt-dsi/igt@i915_selftest@live@mman.html
    - fi-cml-u2:          [PASS][85] -> [INCOMPLETE][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cml-u2/igt@i915_selftest@live@mman.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-u2/igt@i915_selftest@live@mman.html
    - fi-bsw-n3050:       [PASS][87] -> [INCOMPLETE][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-n3050/igt@i915_selftest@live@mman.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bsw-n3050/igt@i915_selftest@live@mman.html
    - fi-cfl-guc:         [PASS][89] -> [INCOMPLETE][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-guc/igt@i915_selftest@live@mman.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cfl-guc/igt@i915_selftest@live@mman.html
    - fi-cml-s:           [PASS][91] -> [INCOMPLETE][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cml-s/igt@i915_selftest@live@mman.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-s/igt@i915_selftest@live@mman.html
    - fi-skl-6700k2:      [PASS][93] -> [INCOMPLETE][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-6700k2/igt@i915_selftest@live@mman.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-skl-6700k2/igt@i915_selftest@live@mman.html
    - fi-cfl-8700k:       [PASS][95] -> [INCOMPLETE][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-8700k/igt@i915_selftest@live@mman.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cfl-8700k/igt@i915_selftest@live@mman.html
    - fi-kbl-x1275:       [PASS][97] -> [INCOMPLETE][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-x1275/igt@i915_selftest@live@mman.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-x1275/igt@i915_selftest@live@mman.html
    - fi-kbl-7500u:       [PASS][99] -> [INCOMPLETE][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-7500u/igt@i915_selftest@live@mman.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-7500u/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@uncore:
    - fi-glk-dsi:         [PASS][101] -> [DMESG-FAIL][102] +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-glk-dsi/igt@i915_selftest@live@uncore.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-glk-dsi/igt@i915_selftest@live@uncore.html
    - fi-bsw-kefka:       [PASS][103] -> [DMESG-FAIL][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-kefka/igt@i915_selftest@live@uncore.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bsw-kefka/igt@i915_selftest@live@uncore.html
    - fi-skl-6700k2:      [PASS][105] -> [DMESG-FAIL][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-6700k2/igt@i915_selftest@live@uncore.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-skl-6700k2/igt@i915_selftest@live@uncore.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-y:           [DMESG-FAIL][107] ([i915#1233]) -> [DMESG-FAIL][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_busy@busy}:
    - fi-cml-u2:          NOTRUN -> [SKIP][109] +3 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-u2/igt@gem_busy@busy.html

  * {igt@gem_exec_parallel@engines}:
    - fi-cml-s:           NOTRUN -> [SKIP][110] +3 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-s/igt@gem_exec_parallel@engines.html

  * {igt@gem_exec_store@basic}:
    - fi-cml-s:           [PASS][111] -> [SKIP][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cml-s/igt@gem_exec_store@basic.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-s/igt@gem_exec_store@basic.html
    - fi-cml-u2:          [PASS][113] -> [SKIP][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cml-u2/igt@gem_exec_store@basic.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cml-u2/igt@gem_exec_store@basic.html

  * igt@i915_selftest@live@gt_lrc:
    - {fi-ehl-1}:         [PASS][115] -> [DMESG-FAIL][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-ehl-1/igt@i915_selftest@live@gt_lrc.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-ehl-1/igt@i915_selftest@live@gt_lrc.html
    - {fi-tgl-dsi}:       [DMESG-FAIL][117] ([i915#1233]) -> [DMESG-FAIL][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html
    - {fi-tgl-u}:         [DMESG-FAIL][119] ([i915#1233]) -> [DMESG-FAIL][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-tgl-u/igt@i915_selftest@live@gt_lrc.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-tgl-u/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_17446 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-skl-6600u:       [PASS][121] -> [SKIP][122] ([fdo#109271]) +31 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-6600u/igt@gem_close_race@basic-threads.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-skl-6600u/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_param@basic:
    - fi-glk-dsi:         [PASS][123] -> [SKIP][124] ([fdo#109271]) +28 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-glk-dsi/igt@gem_ctx_param@basic.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-glk-dsi/igt@gem_ctx_param@basic.html

  * igt@gem_ctx_param@basic-default:
    - fi-skl-6700k2:      [PASS][125] -> [SKIP][126] ([fdo#109271]) +31 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-6700k2/igt@gem_ctx_param@basic-default.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-skl-6700k2/igt@gem_ctx_param@basic-default.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [PASS][127] -> [SKIP][128] ([fdo#109271]) +31 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-r:           [PASS][129] -> [SKIP][130] ([fdo#109271]) +31 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-8809g:       [PASS][131] -> [SKIP][132] ([fdo#109271]) +26 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_render_linear_blits@basic:
    - fi-cfl-8700k:       [PASS][133] -> [SKIP][134] ([fdo#109271]) +31 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html

  * igt@gem_sync@basic-each:
    - fi-whl-u:           [PASS][135] -> [SKIP][136] ([fdo#109271]) +31 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-whl-u/igt@gem_sync@basic-each.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-whl-u/igt@gem_sync@basic-each.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-apl-guc:         [PASS][137] -> [SKIP][138] ([fdo#109271]) +31 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html
    - fi-bxt-dsi:         [PASS][139] -> [SKIP][140] ([fdo#109271]) +28 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bxt-dsi/igt@gem_tiled_fence_blits@basic.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bxt-dsi/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_module_load@reload:
    - fi-skl-6600u:       [PASS][141] -> [INCOMPLETE][142] ([i915#69])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-6600u/igt@i915_module_load@reload.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-skl-6600u/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][143] -> [INCOMPLETE][144] ([i915#151])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-8809g:       [PASS][145] -> [INCOMPLETE][146] ([i915#151])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - fi-cfl-8109u:       [PASS][147] -> [SKIP][148] ([fdo#109271]) +31 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-8109u/igt@i915_pm_rps@basic-api.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cfl-8109u/igt@i915_pm_rps@basic-api.html
    - fi-bsw-nick:        [PASS][149] -> [SKIP][150] ([fdo#109271]) +23 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-nick/igt@i915_pm_rps@basic-api.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bsw-nick/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-cfl-guc:         [PASS][151] -> [DMESG-FAIL][152] ([i915#889]) +2 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-guc/igt@i915_selftest@live@gt_lrc.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cfl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@mman:
    - fi-glk-dsi:         [PASS][153] -> [INCOMPLETE][154] ([i915#58] / [k.org#198133])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-glk-dsi/igt@i915_selftest@live@mman.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-glk-dsi/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-skl-lmem:        [PASS][155] -> [INCOMPLETE][156] ([i915#198])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-lmem/igt@i915_selftest@live@sanitycheck.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-skl-lmem/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-skl-guc:         [PASS][157] -> [SKIP][158] ([fdo#109271]) +31 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-cfl-guc:         [PASS][159] -> [SKIP][160] ([fdo#109271]) +31 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-7500u:       [PASS][161] -> [SKIP][162] ([fdo#109271]) +32 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-7500u/igt@prime_vgem@basic-fence-flip.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-7500u/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][163] -> [SKIP][164] ([fdo#109271]) +30 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - fi-kbl-guc:         [PASS][165] -> [SKIP][166] ([fdo#109271]) +26 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-guc/igt@prime_vgem@basic-read.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-guc/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - fi-skl-lmem:        [PASS][167] -> [SKIP][168] ([fdo#109271]) +31 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-lmem/igt@prime_vgem@basic-write.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-skl-lmem/igt@prime_vgem@basic-write.html
    - fi-bsw-n3050:       [PASS][169] -> [SKIP][170] ([fdo#109271]) +29 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-n3050/igt@prime_vgem@basic-write.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-bsw-n3050/igt@prime_vgem@basic-write.html
    - fi-kbl-soraka:      [PASS][171] -> [SKIP][172] ([fdo#109271]) +28 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-soraka/igt@prime_vgem@basic-write.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-soraka/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      [DMESG-FAIL][173] ([i915#1744]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1744]: https://gitlab.freedesktop.org/drm/intel/issues/1744
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 43)
------------------------------

  Additional (1): fi-bwr-2160 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8354 -> Patchwork_17446

  CI-20190529: 20190529
  CI_DRM_8354: 6ec6eeeda39e1733777f9115ba813a992a47b5fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5608: e7bcaf1dd251d454706c7cd64282f531aec50183 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17446: 2a21fd4722b45da17859a29564dc4266513429b2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2a21fd4722b4 drm/i915/selftests: Add context batchbuffers registers to live_lrc_fixed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17446/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
