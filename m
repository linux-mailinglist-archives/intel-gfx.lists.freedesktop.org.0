Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 456661297B7
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 15:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5ECC89E06;
	Mon, 23 Dec 2019 14:52:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBADE89E06;
 Mon, 23 Dec 2019 14:52:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9E1CA010F;
 Mon, 23 Dec 2019 14:52:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai-Heng Feng" <kai.heng.feng@canonical.com>
Date: Mon, 23 Dec 2019 14:52:49 -0000
Message-ID: <157711276979.16934.14196890162896265633@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191223095604.17453-1-kai.heng.feng@canonical.com>
In-Reply-To: <20191223095604.17453-1-kai.heng.feng@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Re-init_lspcon_after_HPD_if_lspcon_probe_failed?=
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

Series: drm/i915: Re-init lspcon after HPD if lspcon probe failed
URL   : https://patchwork.freedesktop.org/series/71314/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7623 -> Patchwork_15893
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15893 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15893, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15893:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-byt-n2820:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-byt-n2820/igt@gem_close_race@basic-process.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-u2:          [PASS][2] -> [DMESG-WARN][3] +20 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-r:           [PASS][4] -> [DMESG-WARN][5] +22 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
    - fi-cml-s:           [PASS][6] -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-icl-guc:         [PASS][8] -> [DMESG-WARN][9] +21 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-icl-u2:          [PASS][10] -> [SKIP][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-guc:         [PASS][12] -> [SKIP][13] +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-u3:          [PASS][14] -> [SKIP][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u3/igt@i915_pm_rpm@basic-pci-d3-state.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-u3/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-r:           [PASS][16] -> [DMESG-FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@i915_pm_rpm@basic-rte.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-r/igt@i915_pm_rpm@basic-rte.html
    - fi-cml-u2:          [PASS][18] -> [DMESG-FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html
    - fi-icl-guc:         [PASS][20] -> [DMESG-FAIL][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-guc/igt@i915_pm_rpm@basic-rte.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-whl-u:           NOTRUN -> [DMESG-FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-whl-u/igt@i915_pm_rpm@basic-rte.html
    - fi-icl-u3:          [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u3/igt@i915_pm_rpm@basic-rte.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-u3/igt@i915_pm_rpm@basic-rte.html
    - fi-icl-u2:          [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@i915_pm_rpm@basic-rte.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-u2/igt@i915_pm_rpm@basic-rte.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-skl-6600u/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-soraka:      [PASS][28] -> [DMESG-FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-y:           [PASS][30] -> [DMESG-FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-y/igt@i915_pm_rpm@module-reload.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-y/igt@i915_pm_rpm@module-reload.html
    - fi-cml-u2:          [PASS][32] -> [SKIP][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cml-u2/igt@i915_pm_rpm@module-reload.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-cml-u2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gt_engines:
    - fi-bwr-2160:        NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-bwr-2160/igt@i915_selftest@live_gt_engines.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [PASS][35] -> [DMESG-WARN][36] +22 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
    - fi-whl-u:           NOTRUN -> [DMESG-WARN][37] +18 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-whl-u/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       NOTRUN -> [DMESG-WARN][38] +5 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6700k2:      [PASS][39] -> [DMESG-WARN][40] +25 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][41] -> [DMESG-WARN][42] +24 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-skl-guc:         NOTRUN -> [DMESG-WARN][43] +24 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-kbl-soraka:      [PASS][44] -> [DMESG-WARN][45] +20 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-icl-y:           [PASS][46] -> [DMESG-WARN][47] +19 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-y/igt@kms_flip@basic-flip-vs-modeset.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-y/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       NOTRUN -> [DMESG-WARN][48] +22 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-u2:          [DMESG-WARN][49] ([i915#289]) -> [SKIP][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-u2/igt@i915_pm_rpm@module-reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@basic-rte:
    - {fi-kbl-7560u}:     NOTRUN -> [DMESG-FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-7560u/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - {fi-kbl-7560u}:     NOTRUN -> [DMESG-WARN][52] +34 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-7560u/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_15893 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][53] -> [FAIL][54] ([fdo#103375])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-r:           [PASS][55] -> [DMESG-WARN][56] ([fdo#107139])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@gem_exec_suspend@basic-s4-devices.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-r/igt@gem_exec_suspend@basic-s4-devices.html
    - fi-icl-u2:          [PASS][57] -> [FAIL][58] ([fdo#111550])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
    - fi-kbl-soraka:      [PASS][59] -> [DMESG-WARN][60] ([fdo#107139])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-soraka/igt@gem_exec_suspend@basic-s4-devices.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-soraka/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [PASS][61] -> [INCOMPLETE][62] ([i915#505] / [i915#671])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-r:           [PASS][63] -> [SKIP][64] ([fdo#109271]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@i915_pm_rpm@basic-pci-d3-state.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-r/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-soraka:      [PASS][65] -> [SKIP][66] ([fdo#109271]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][67] -> [DMESG-FAIL][68] ([i915#553] / [i915#725])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-u2:          [INCOMPLETE][69] ([fdo#112175] / [i915#140]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@i915_selftest@live_execlists.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-u2/igt@i915_selftest@live_execlists.html
    - fi-kbl-soraka:      [DMESG-FAIL][71] ([i915#656]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
    - fi-kbl-r:           [INCOMPLETE][73] ([fdo#112175] / [fdo#112259]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@i915_selftest@live_execlists.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-r/igt@i915_selftest@live_execlists.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-x1275:       [DMESG-WARN][75] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][76] ([i915#62] / [i915#92]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][77] ([fdo#107139] / [i915#62] / [i915#92]) -> [DMESG-WARN][78] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [INCOMPLETE][79] ([i915#879]) -> [DMESG-WARN][80] ([i915#62] / [i915#92])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][81] ([i915#725]) -> [DMESG-FAIL][82] ([i915#563])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][83] ([IGT#4] / [i915#263]) -> [DMESG-FAIL][84] ([fdo#103375])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][85] ([i915#62] / [i915#92]) -> [DMESG-WARN][86] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (40 -> 45)
------------------------------

  Additional (11): fi-hsw-peppy fi-skl-guc fi-bwr-2160 fi-snb-2520m fi-kbl-7500u fi-whl-u fi-skl-lmem fi-kbl-7560u fi-byt-n2820 fi-icl-dsi fi-skl-6600u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7623 -> Patchwork_15893

  CI-20190529: 20190529
  CI_DRM_7623: 08c8f85caff9f010e7c66e79a2b6fa8a4a230fc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15893: 406a089e3e9a825a5dc708d56de47d3a179c2432 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

406a089e3e9a drm/i915: Re-init lspcon after HPD if lspcon probe failed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15893/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
