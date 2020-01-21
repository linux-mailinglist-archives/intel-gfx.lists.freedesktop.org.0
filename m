Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D18814409A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 16:37:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ECFB6ED46;
	Tue, 21 Jan 2020 15:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 225866ED45;
 Tue, 21 Jan 2020 15:37:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19BCEA00C7;
 Tue, 21 Jan 2020 15:37:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 21 Jan 2020 15:37:01 -0000
Message-ID: <157962102108.11479.4068722673389304055@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121113915.9813-1-jani.nikula@intel.com>
In-Reply-To: <20200121113915.9813-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_add_display_engine_uncore_helpers_=28rev2=29?=
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

Series: drm/i915: add display engine uncore helpers (rev2)
URL   : https://patchwork.freedesktop.org/series/72331/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7783 -> Patchwork_16190
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16190 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16190, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16190:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-hsw-peppy:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-hsw-peppy/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16190 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_create@basic-files:
    - fi-icl-u3:          [PASS][2] -> [INCOMPLETE][3] ([fdo#109100] / [i915#140])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-icl-u3/igt@gem_ctx_create@basic-files.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-icl-u3/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_parallel@fds:
    - fi-hsw-peppy:       [PASS][4] -> [TIMEOUT][5] ([fdo#112271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-hsw-peppy/igt@gem_exec_parallel@fds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-hsw-peppy/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-7500u:       [PASS][6] -> [DMESG-WARN][7] ([fdo#107139])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-7500u/igt@gem_exec_suspend@basic-s4-devices.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-kbl-7500u/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [PASS][8] -> [INCOMPLETE][9] ([i915#671] / [i915#971])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][10] -> [FAIL][11] ([fdo#111096] / [i915#323])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [INCOMPLETE][12] ([i915#45] / [i915#999]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
    - {fi-ehl-1}:         [INCOMPLETE][14] ([i915#937]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-ehl-1/igt@gem_exec_parallel@contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-ehl-1/igt@gem_exec_parallel@contexts.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [DMESG-WARN][16] ([i915#889]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6700k2:      [INCOMPLETE][18] ([i915#671]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-x1275:       [DMESG-WARN][20] ([i915#889]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [INCOMPLETE][22] ([i915#151]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bxt-dsi:         [SKIP][24] ([fdo#109271]) -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-hsw-4770:        [SKIP][26] ([fdo#109271]) -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-kbl-soraka:      [SKIP][28] ([fdo#109271]) -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-whl-u:           [SKIP][30] ([fdo#109271]) -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-whl-u/igt@kms_chamelium@common-hpd-after-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-whl-u/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-pnv-d510:        [SKIP][32] ([fdo#109271]) -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-dsi:         [SKIP][34] ([fdo#109284]) -> [SKIP][35] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-icl-dsi/igt@kms_chamelium@dp-crc-fast.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-icl-dsi/igt@kms_chamelium@dp-crc-fast.html
    - fi-skl-guc:         [SKIP][36] ([fdo#109271]) -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html
    - fi-bwr-2160:        [SKIP][38] ([fdo#109271]) -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-bwr-2160/igt@kms_chamelium@dp-crc-fast.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-bwr-2160/igt@kms_chamelium@dp-crc-fast.html
    - fi-bdw-5557u:       [SKIP][40] ([fdo#109271]) -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html
    - fi-icl-y:           [SKIP][42] ([fdo#109284]) -> [SKIP][43] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cfl-guc:         [SKIP][44] ([fdo#109271]) -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
    - fi-icl-guc:         [SKIP][46] ([fdo#109284]) -> [SKIP][47] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-icl-guc/igt@kms_chamelium@dp-edid-read.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-icl-guc/igt@kms_chamelium@dp-edid-read.html
    - fi-elk-e7500:       [SKIP][48] ([fdo#109271]) -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-elk-e7500/igt@kms_chamelium@dp-edid-read.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-elk-e7500/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-ilk-650:         [SKIP][50] ([fdo#109271]) -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html
    - fi-ivb-3770:        [SKIP][52] ([fdo#109271]) -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-lmem:        [SKIP][54] ([fdo#109271]) -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-skl-lmem/igt@kms_chamelium@hdmi-crc-fast.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-skl-lmem/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-kbl-x1275:       [SKIP][56] ([fdo#109271]) -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-blb-e6850:       [SKIP][58] ([fdo#109271]) -> [SKIP][59] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-blb-e6850/igt@kms_chamelium@hdmi-edid-read.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-blb-e6850/igt@kms_chamelium@hdmi-edid-read.html
    - fi-kbl-8809g:       [SKIP][60] ([fdo#109271]) -> [SKIP][61] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html
    - fi-kbl-r:           [SKIP][62] ([fdo#109271]) -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-apl-guc:         [SKIP][64] ([fdo#109271]) -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-apl-guc/igt@kms_chamelium@hdmi-hpd-fast.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-apl-guc/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-snb-2520m:       [SKIP][66] ([fdo#109271]) -> [SKIP][67] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-cfl-8700k:       [SKIP][68] ([fdo#109271]) -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-cfl-8700k/igt@kms_chamelium@vga-edid-read.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-cfl-8700k/igt@kms_chamelium@vga-edid-read.html
    - fi-hsw-4770r:       [SKIP][70] ([fdo#109271]) -> [SKIP][71] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-hsw-4770r/igt@kms_chamelium@vga-edid-read.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-hsw-4770r/igt@kms_chamelium@vga-edid-read.html
    - fi-skl-6600u:       [SKIP][72] ([fdo#109271]) -> [SKIP][73] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-fast:
    - fi-kbl-guc:         [SKIP][74] ([fdo#109271]) -> [SKIP][75] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#109100]: https://bugs.freedesktop.org/show_bug.cgi?id=109100
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [i915#971]: https://gitlab.freedesktop.org/drm/intel/issues/971
  [i915#999]: https://gitlab.freedesktop.org/drm/intel/issues/999


Participating hosts (44 -> 43)
------------------------------

  Additional (4): fi-bsw-kefka fi-glk-dsi fi-bsw-nick fi-snb-2600 
  Missing    (5): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7783 -> Patchwork_16190

  CI-20190529: 20190529
  CI_DRM_7783: 3ee976286895f0bd54388efc16b12f62c624ff19 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5376: 5cf58d947a02379d2885d6dd4f8bb487cfc3eed2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16190: 21a0a18251dfd4806bbe24ec9134b4b062a8f267 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

21a0a18251df drm/i915: add display engine uncore helpers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16190/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
