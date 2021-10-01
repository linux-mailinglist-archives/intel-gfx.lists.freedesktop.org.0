Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E35E41E56B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 02:12:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D658F6ECA9;
	Fri,  1 Oct 2021 00:12:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E41C6ECA7;
 Fri,  1 Oct 2021 00:12:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1648AA8836;
 Fri,  1 Oct 2021 00:12:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1241069705749540824=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 01 Oct 2021 00:12:35 -0000
Message-ID: <163304715505.25585.5548840740221720598@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210930231117.2462-1-andi.shyti@intel.com>
In-Reply-To: <20210930231117.2462-1-andi.shyti@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_move_remaining_debugfs_interfaces_into_gt_=28rev7?=
 =?utf-8?q?=29?=
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

--===============1241069705749540824==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: move remaining debugfs interfaces into gt (rev7)
URL   : https://patchwork.freedesktop.org/series/75333/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10670 -> Patchwork_21211
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21211 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21211, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21211:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_hangman@error-state-basic:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-kbl-7500u/igt@i915_hangman@error-state-basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-kbl-7500u/igt@i915_hangman@error-state-basic.html
    - fi-kbl-soraka:      [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html
    - fi-bwr-2160:        [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-bwr-2160/igt@i915_hangman@error-state-basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-bwr-2160/igt@i915_hangman@error-state-basic.html
    - fi-kbl-r:           [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-kbl-r/igt@i915_hangman@error-state-basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-kbl-r/igt@i915_hangman@error-state-basic.html
    - fi-kbl-8809g:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-kbl-8809g/igt@i915_hangman@error-state-basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-kbl-8809g/igt@i915_hangman@error-state-basic.html
    - fi-bsw-nick:        [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-bsw-nick/igt@i915_hangman@error-state-basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-bsw-nick/igt@i915_hangman@error-state-basic.html
    - fi-glk-dsi:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-glk-dsi/igt@i915_hangman@error-state-basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-glk-dsi/igt@i915_hangman@error-state-basic.html
    - fi-icl-u2:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-icl-u2/igt@i915_hangman@error-state-basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-icl-u2/igt@i915_hangman@error-state-basic.html
    - fi-cfl-8109u:       [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-cfl-8109u/igt@i915_hangman@error-state-basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-cfl-8109u/igt@i915_hangman@error-state-basic.html
    - fi-skl-6600u:       [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-skl-6600u/igt@i915_hangman@error-state-basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-skl-6600u/igt@i915_hangman@error-state-basic.html
    - fi-cfl-8700k:       [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-cfl-8700k/igt@i915_hangman@error-state-basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-cfl-8700k/igt@i915_hangman@error-state-basic.html
    - fi-bsw-kefka:       [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-bsw-kefka/igt@i915_hangman@error-state-basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-bsw-kefka/igt@i915_hangman@error-state-basic.html
    - fi-pnv-d510:        [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-pnv-d510/igt@i915_hangman@error-state-basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-pnv-d510/igt@i915_hangman@error-state-basic.html
    - fi-ilk-650:         [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-ilk-650/igt@i915_hangman@error-state-basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-ilk-650/igt@i915_hangman@error-state-basic.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@i915_hangman@error-state-basic.html
    - fi-bsw-n3050:       [PASS][30] -> [FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-bsw-n3050/igt@i915_hangman@error-state-basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-bsw-n3050/igt@i915_hangman@error-state-basic.html
    - fi-rkl-11600:       [PASS][32] -> [FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-rkl-11600/igt@i915_hangman@error-state-basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-rkl-11600/igt@i915_hangman@error-state-basic.html
    - fi-kbl-7567u:       [PASS][34] -> [FAIL][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-kbl-7567u/igt@i915_hangman@error-state-basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-kbl-7567u/igt@i915_hangman@error-state-basic.html
    - fi-icl-y:           [PASS][36] -> [FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-icl-y/igt@i915_hangman@error-state-basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-icl-y/igt@i915_hangman@error-state-basic.html
    - fi-cfl-guc:         [PASS][38] -> [FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-cfl-guc/igt@i915_hangman@error-state-basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-cfl-guc/igt@i915_hangman@error-state-basic.html
    - fi-elk-e7500:       [PASS][40] -> [FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-elk-e7500/igt@i915_hangman@error-state-basic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-elk-e7500/igt@i915_hangman@error-state-basic.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][42]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@i915_hangman@error-state-basic.html
    - fi-bxt-dsi:         [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-bxt-dsi/igt@i915_hangman@error-state-basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-bxt-dsi/igt@i915_hangman@error-state-basic.html
    - fi-cml-u2:          [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-cml-u2/igt@i915_hangman@error-state-basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-cml-u2/igt@i915_hangman@error-state-basic.html
    - fi-rkl-guc:         [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-rkl-guc/igt@i915_hangman@error-state-basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-rkl-guc/igt@i915_hangman@error-state-basic.html

  
#### Warnings ####

  * igt@i915_hangman@error-state-basic:
    - fi-apl-guc:         [DMESG-WARN][49] ([i915#1610]) -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-apl-guc/igt@i915_hangman@error-state-basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@i915_hangman@error-state-basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_hangman@error-state-basic:
    - {fi-tgl-dsi}:       [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-tgl-dsi/igt@i915_hangman@error-state-basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-dsi/igt@i915_hangman@error-state-basic.html
    - {fi-ehl-2}:         [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-ehl-2/igt@i915_hangman@error-state-basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-ehl-2/igt@i915_hangman@error-state-basic.html
    - {fi-jsl-1}:         [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-jsl-1/igt@i915_hangman@error-state-basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-jsl-1/igt@i915_hangman@error-state-basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_21211 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][57] ([fdo#109315])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][58] ([fdo#109271])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-kbl-soraka/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][59] ([fdo#109315] / [i915#2575]) +16 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          NOTRUN -> [INCOMPLETE][60] ([i915#4130])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          NOTRUN -> [FAIL][61] ([i915#1888])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][62] ([i915#2190])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][63] ([i915#2190])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][64] ([i915#1155])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@gt_engines:
    - fi-apl-guc:         NOTRUN -> [DMESG-FAIL][65] ([i915#2927])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@workarounds:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][66] ([i915#1610])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@i915_selftest@live@workarounds.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][67] ([fdo#111827]) +8 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-u2:          NOTRUN -> [SKIP][68] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-apl-guc:         NOTRUN -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-u2:          NOTRUN -> [SKIP][70] ([i915#4103]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][71] ([i915#4103]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - fi-cfl-8109u:       [PASS][72] -> [FAIL][73] ([i915#4165]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][74] ([fdo#109285])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][75] ([fdo#109285])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [PASS][76] -> [DMESG-WARN][77] ([i915#295]) +18 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-apl-guc:         NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#533])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][79] ([i915#1072]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@primary_page_flip:
    - fi-apl-guc:         NOTRUN -> [SKIP][80] ([fdo#109271]) +11 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@kms_psr@primary_page_flip.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-u2:          NOTRUN -> [SKIP][81] ([i915#3301])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][82] ([i915#3301])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-tgl-u2:          NOTRUN -> [FAIL][83] ([i915#1602] / [i915#2722])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-apl-guc:         [FAIL][84] ([i915#2426] / [i915#3363]) -> [FAIL][85] ([fdo#109271] / [i915#2426] / [i915#3363])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-apl-guc/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4165]: https://gitlab.freedesktop.org/drm/intel/issues/4165
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (32 -> 29)
------------------------------

  Additional (2): fi-tgl-1115g4 fi-tgl-u2 
  Missing    (5): bat-dg1-6 fi-bsw-cyan bat-adlp-4 bat-jsl-2 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10670 -> Patchwork_21211

  CI-20190529: 20190529
  CI_DRM_10670: 3d3b1ccf805891e2b05ba21cb98790aa0cfa48a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21211: 8fdbaf0abd82f3501d87567b33838786a90b40b0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8fdbaf0abd82 drm/i915/gt: move remaining debugfs interfaces into gt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/index.html

--===============1241069705749540824==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: move remaining debugfs interfaces into gt (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/75333/">https://patchwork.freedesktop.org/series/75333/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10670 -&gt; Patchwork_21211</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21211 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21211, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21211:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-kbl-7500u/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-kbl-7500u/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-bwr-2160/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-bwr-2160/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-kbl-r/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-kbl-r/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-kbl-8809g/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-kbl-8809g/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-bsw-nick/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-bsw-nick/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-glk-dsi/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-glk-dsi/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-icl-u2/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-icl-u2/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-cfl-8109u/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-cfl-8109u/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-skl-6600u/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-skl-6600u/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-cfl-8700k/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-cfl-8700k/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-bsw-kefka/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-bsw-kefka/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-pnv-d510/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-pnv-d510/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-ilk-650/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-ilk-650/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-bsw-n3050/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-bsw-n3050/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-rkl-11600/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-rkl-11600/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-kbl-7567u/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-kbl-7567u/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-icl-y/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-icl-y/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-cfl-guc/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-cfl-guc/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-elk-e7500/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-elk-e7500/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-bxt-dsi/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-bxt-dsi/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-cml-u2/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-cml-u2/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-rkl-guc/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-rkl-guc/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_hangman@error-state-basic:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-apl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@i915_hangman@error-state-basic.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-tgl-dsi/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-dsi/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-ehl-2/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-ehl-2/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-jsl-1/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-jsl-1/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21211 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-kbl-soraka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@i915_selftest@live@gt_engines.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10670/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21211/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (32 -&gt; 29)</h2>
<p>Additional (2): fi-tgl-1115g4 fi-tgl-u2 <br />
  Missing    (5): bat-dg1-6 fi-bsw-cyan bat-adlp-4 bat-jsl-2 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10670 -&gt; Patchwork_21211</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10670: 3d3b1ccf805891e2b05ba21cb98790aa0cfa48a8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21211: 8fdbaf0abd82f3501d87567b33838786a90b40b0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8fdbaf0abd82 drm/i915/gt: move remaining debugfs interfaces into gt</p>

</body>
</html>

--===============1241069705749540824==--
