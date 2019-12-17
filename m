Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9741222EA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 05:17:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 076866E93B;
	Tue, 17 Dec 2019 04:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 147406E938;
 Tue, 17 Dec 2019 04:17:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B746A0019;
 Tue, 17 Dec 2019 04:17:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Tue, 17 Dec 2019 04:17:11 -0000
Message-ID: <157655623102.21845.1684091543273634863@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216205122.1850923-1-hdegoede@redhat.com>
In-Reply-To: <20191216205122.1850923-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_Control_panel_and_backlight_enable_GPIOs_from_VBT_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/dsi: Control panel and backlight enable GPIOs from VBT (rev2)
URL   : https://patchwork.freedesktop.org/series/70945/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7578 -> Patchwork_15801
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_15801 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15801, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15801:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][1] ([i915#730]) -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_15801 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-lmem:        [PASS][3] -> [DMESG-WARN][4] ([i915#592])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_active:
    - fi-bxt-dsi:         [PASS][5] -> [DMESG-FAIL][6] ([i915#666])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-bxt-dsi/igt@i915_selftest@live_active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-bxt-dsi/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][7] -> [INCOMPLETE][8] ([i915#694])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [FAIL][9] ([fdo#103375]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [FAIL][11] ([fdo#111550]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_sync@basic-store-all:
    - {fi-tgl-guc}:       [INCOMPLETE][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-tgl-guc/igt@gem_sync@basic-store-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-tgl-guc/igt@gem_sync@basic-store-all.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][15] ([i915#553] / [i915#725]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][17] ([i915#722]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-icl-u2:          [INCOMPLETE][19] ([i915#140]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][21] ([fdo#109635] / [i915#217]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][23] ([fdo#111096] / [i915#323]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92]) -> [DMESG-WARN][26] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][28] ([i915#62] / [i915#92]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#592]: https://gitlab.freedesktop.org/drm/intel/issues/592
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (51 -> 44)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (8): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7578 -> Patchwork_15801

  CI-20190529: 20190529
  CI_DRM_7578: cc329d389f5609d2969d0797bc96f754adb26d62 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15801: 3fdf2fe66bbf5f6d41b9ca2b5ce8b08105346f97 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3fdf2fe66bbf drm/i915/dsi: Control panel and backlight enable GPIOs on BYT
5fb03807948e drm/i915/dsi: Move Crystal Cove PMIC panel GPIO lookup from mfd to the i915 driver
df7d57216ef5 drm/i915/dsi: Init panel-enable GPIO to low when the LCD is initially off (v2)
72d92aa99f18 drm/i915/dsi: Move poking of panel-enable GPIO to intel_dsi_vbt.c
ba8ffd907d53 pinctrl: Allow modules to use pinctrl_[un]register_mappings

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15801/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
