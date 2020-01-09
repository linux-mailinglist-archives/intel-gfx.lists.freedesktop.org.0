Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC6D1360BE
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 20:07:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C42B6E043;
	Thu,  9 Jan 2020 19:07:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E08B6E043;
 Thu,  9 Jan 2020 19:07:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3475EA00C7;
 Thu,  9 Jan 2020 19:07:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Thu, 09 Jan 2020 19:07:18 -0000
Message-ID: <157859683819.4566.10675422050853423674@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109110835.29764-1-vandita.kulkarni@intel.com>
In-Reply-To: <20200109110835.29764-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_mipi_dsi_cmd_mode_=28rev5=29?=
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

Series: Add support for mipi dsi cmd mode (rev5)
URL   : https://patchwork.freedesktop.org/series/69290/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7712 -> Patchwork_16037
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16037:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic-flip-pipe-b:
    - {fi-ehl-1}:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/fi-ehl-1/igt@kms_busy@basic-flip-pipe-b.html

  
Known issues
------------

  Here are the changes found in Patchwork_16037 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [PASS][2] -> [DMESG-WARN][3] ([i915#88])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7712/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][4] -> [FAIL][5] ([i915#178])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7712/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][6] -> [DMESG-FAIL][7] ([i915#725])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7712/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-byt-n2820:       [PASS][8] -> [DMESG-FAIL][9] ([i915#725])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7712/fi-byt-n2820/igt@i915_selftest@live_blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/fi-byt-n2820/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][10] -> [FAIL][11] ([fdo#111096] / [i915#323])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7712/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-wait-default:
    - {fi-ehl-1}:         [INCOMPLETE][12] ([i915#949]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7712/fi-ehl-1/igt@gem_exec_fence@basic-wait-default.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/fi-ehl-1/igt@gem_exec_fence@basic-wait-default.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [DMESG-WARN][14] ([i915#889]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7712/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-lmem:        [DMESG-WARN][16] ([i915#889]) -> [PASS][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7712/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [DMESG-FAIL][18] ([i915#723]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7712/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/fi-bsw-nick/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][20] ([i915#656]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7712/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-skl-lmem:        [INCOMPLETE][22] -> [SKIP][23] ([fdo#109271])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7712/fi-skl-lmem/igt@amdgpu/amd_prime@i915-to-amd.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/fi-skl-lmem/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [DMESG-WARN][24] ([i915#889]) -> [INCOMPLETE][25] ([i915#671])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7712/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#949]: https://gitlab.freedesktop.org/drm/intel/issues/949


Participating hosts (51 -> 43)
------------------------------

  Additional (2): fi-kbl-7560u fi-snb-2520m 
  Missing    (10): fi-hsw-4200u fi-byt-j1900 fi-hsw-peppy fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7712 -> Patchwork_16037

  CI-20190529: 20190529
  CI_DRM_7712: 4949fcae0866c0b98582f1f5e8875bb1691ed959 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16037: 12bd8cefd44e94ebe19152e900060b6686bdb7f1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

12bd8cefd44e drm/i915/dsi: Clear the DSI IIR
a53fa85f2e20 drm/i915/dsi: Initiate fame request in cmd mode
58fc15b1ccc8 drm/i915/dsi: Add TE handler for dsi cmd mode.
825cd0f599e9 drm/i915/dsi: Configure TE interrupt for cmd mode
6030ddd5f802 drm/i915/dsi: Use private flags to indicate TE in cmd mode
e1487b9829a6 drm/i915/dsi: Add check for periodic command mode
0e9b605c70f0 drm/i915/dsi: Add cmd mode flags in display mode private flags
9d1777f786fa drm/i915/dsi: Add vblank calculation for command mode
9ee67cfb4bda drm/i915/dsi: Configure transcoder operation for command mode.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16037/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
