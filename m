Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B82E12E415
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 09:56:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7EAD89CAA;
	Thu,  2 Jan 2020 08:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F88389CA8;
 Thu,  2 Jan 2020 08:56:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26E21A011A;
 Thu,  2 Jan 2020 08:56:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai-Heng Feng" <kai.heng.feng@canonical.com>
Date: Thu, 02 Jan 2020 08:56:07 -0000
Message-ID: <157795536715.8910.1157078181942143004@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191224084251.28414-1-kai.heng.feng@canonical.com>
In-Reply-To: <20191224084251.28414-1-kai.heng.feng@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Re-init_lspcon_after_HPD_if_lspcon_probe_failed_=28rev?=
 =?utf-8?q?4=29?=
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

Series: drm/i915: Re-init lspcon after HPD if lspcon probe failed (rev4)
URL   : https://patchwork.freedesktop.org/series/71314/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7664 -> Patchwork_15973
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15973 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15973, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15973:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       NOTRUN -> [DMESG-WARN][1] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][2] -> [DMESG-WARN][3] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-guc:         [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-skl-guc/igt@kms_flip@basic-flip-vs-dpms.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-skl-guc/igt@kms_flip@basic-flip-vs-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_15973 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [PASS][6] -> [INCOMPLETE][7] ([fdo#103927])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][8] -> [DMESG-FAIL][9] ([i915#563])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_engines:
    - fi-cfl-8700k:       [PASS][10] -> [DMESG-FAIL][11] ([i915#889]) +7 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-cfl-8700k/igt@i915_selftest@live_gt_engines.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-cfl-8700k/igt@i915_selftest@live_gt_engines.html

  * igt@i915_selftest@live_gt_pm:
    - fi-cfl-8700k:       [PASS][12] -> [DMESG-WARN][13] ([i915#889]) +23 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [PASS][14] -> [DMESG-FAIL][15] ([fdo#109635] / [i915#262])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u2:          [PASS][16] -> [DMESG-FAIL][17] ([fdo#109635])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][18] ([i915#816]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gt_pm:
    - fi-bwr-2160:        [FAIL][20] ([i915#878]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-bwr-2160/igt@i915_selftest@live_gt_pm.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-bwr-2160/igt@i915_selftest@live_gt_pm.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [INCOMPLETE][22] ([i915#879]) -> [DMESG-WARN][23] ([i915#62] / [i915#92])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][24] ([i915#725]) -> [DMESG-FAIL][25] ([i915#553] / [i915#725])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][26] ([IGT#4] / [i915#263]) -> [FAIL][27] ([i915#217])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][28] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][29] ([i915#62] / [i915#92]) +5 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][30] ([i915#62] / [i915#92]) -> [DMESG-WARN][31] ([i915#62] / [i915#92] / [i915#95]) +7 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7664/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#878]: https://gitlab.freedesktop.org/drm/intel/issues/878
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (46 -> 40)
------------------------------

  Additional (6): fi-bdw-5557u fi-skl-6770hq fi-kbl-7500u fi-ivb-3770 fi-skl-6700k2 fi-snb-2600 
  Missing    (12): fi-ilk-m540 fi-bsw-n3050 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-skl-lmem fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7664 -> Patchwork_15973

  CI-20190529: 20190529
  CI_DRM_7664: d207bb67a1192ff32488fdc403e6708def18d80f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15973: 2e56996acbe5ea3ce0975453b82f1b82c182cbea @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2e56996acbe5 drm/i915: Re-init lspcon after HPD if lspcon probe failed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15973/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
