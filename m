Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF6E129ADE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 21:30:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 727DE89FD9;
	Mon, 23 Dec 2019 20:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EC3A189FD7;
 Mon, 23 Dec 2019 20:30:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E36FCA010F;
 Mon, 23 Dec 2019 20:30:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai-Heng Feng" <kai.heng.feng@canonical.com>
Date: Mon, 23 Dec 2019 20:30:38 -0000
Message-ID: <157713303890.16936.14494763150208411509@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191223171310.21192-1-kai.heng.feng@canonical.com>
In-Reply-To: <20191223171310.21192-1-kai.heng.feng@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Re-init_lspcon_after_HPD_if_lspcon_probe_failed_=28rev?=
 =?utf-8?q?2=29?=
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

Series: drm/i915: Re-init lspcon after HPD if lspcon probe failed (rev2)
URL   : https://patchwork.freedesktop.org/series/71314/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7630 -> Patchwork_15898
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15898 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15898, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15898:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-WARN][2] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][3] -> [DMESG-WARN][4] +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][5] ([IGT#4] / [i915#263]) -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_15898 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [PASS][7] -> [INCOMPLETE][8] ([fdo#103927])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][9] -> [INCOMPLETE][10] ([i915#671])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][11] -> [DMESG-FAIL][12] ([i915#722])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [PASS][13] -> [DMESG-WARN][14] ([i915#263])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - {fi-tgl-u}:         [INCOMPLETE][15] ([fdo#111736]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-tgl-u/igt@gem_exec_create@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-tgl-u/igt@gem_exec_create@basic.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [DMESG-WARN][17] ([i915#289]) -> [PASS][18] +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-icl-u2/igt@i915_module_load@reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-icl-u2/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][19] ([i915#725]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_memory_region:
    - fi-bwr-2160:        [FAIL][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-bwr-2160/igt@i915_selftest@live_memory_region.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-bwr-2160/igt@i915_selftest@live_memory_region.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][23] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][24] ([fdo#107139] / [i915#62] / [i915#92])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][26] ([i915#62] / [i915#92]) +7 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([i915#62] / [i915#92]) -> [DMESG-WARN][28] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 42)
------------------------------

  Additional (9): fi-hsw-4770r fi-byt-j1900 fi-skl-6770hq fi-glk-dsi fi-whl-u fi-gdg-551 fi-ivb-3770 fi-bsw-nick fi-snb-2600 
  Missing    (10): fi-ilk-m540 fi-bdw-5557u fi-bsw-n3050 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7630 -> Patchwork_15898

  CI-20190529: 20190529
  CI_DRM_7630: 28a2aa0ebf1520ea8a0dd89299f7ceea80dfd96f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15898: faec8f1a1bbc91eca8c24c3a96faced51f568baa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

faec8f1a1bbc drm/i915: Re-init lspcon after HPD if lspcon probe failed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15898/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
