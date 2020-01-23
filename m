Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2BB147189
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 20:12:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C70336FE30;
	Thu, 23 Jan 2020 19:12:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D2F106FE2D;
 Thu, 23 Jan 2020 19:12:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9EB7A010F;
 Thu, 23 Jan 2020 19:12:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Igor Druzhinin" <igor.druzhinin@citrix.com>
Date: Thu, 23 Jan 2020 19:12:40 -0000
Message-ID: <157980676080.1145.7287056540685560487@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1579723824-25711-1-git-send-email-igor.druzhinin@citrix.com>
In-Reply-To: <1579723824-25711-1-git-send-email-igor.druzhinin@citrix.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_fix_high-order_allocation_failure_on_late_load?=
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

Series: drm/i915/gvt: fix high-order allocation failure on late load
URL   : https://patchwork.freedesktop.org/series/72455/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7802 -> Patchwork_16228
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/index.html

Known issues
------------

  Here are the changes found in Patchwork_16228 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-FAIL][2] ([i915#563])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [PASS][3] -> [DMESG-FAIL][4] ([i915#623])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bsw-kefka:       [PASS][5] -> [DMESG-FAIL][6] ([i915#541])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-bsw-kefka/igt@i915_selftest@live_gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-bsw-kefka/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8] ([fdo#109635] / [i915#217])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_self_import@basic-llseek-size:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([CI#94] / [i915#402]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-j1900:       [INCOMPLETE][11] ([i915#45]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-byt-j1900/igt@gem_exec_parallel@fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-byt-j1900/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][13] ([CI#94]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][15] ([i915#505]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bxt-dsi:         [DMESG-FAIL][17] ([fdo#112406]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-bxt-dsi/igt@i915_selftest@live_gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-bxt-dsi/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][19] ([fdo#111407]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_busy@basic-wait-before-default:
    - fi-tgl-y:           [DMESG-WARN][21] ([CI#94] / [i915#402]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@prime_busy@basic-wait-before-default.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-tgl-y/igt@prime_busy@basic-wait-before-default.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [TIMEOUT][23] ([fdo#112271]) -> [FAIL][24] ([i915#694])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][25] ([i915#563]) -> [DMESG-FAIL][26] ([i915#725])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-tgl-y:           [SKIP][27] ([CI#94] / [fdo#111827]) -> [SKIP][28] ([CI#94] / [fdo#111827] / [i915#1017]) +8 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-y:           [SKIP][29] ([CI#94] / [fdo#109285]) -> [SKIP][30] ([CI#94] / [fdo#109285] / [i915#1017])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1017]: https://gitlab.freedesktop.org/drm/intel/issues/1017
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (43 -> 40)
------------------------------

  Additional (7): fi-bdw-5557u fi-hsw-peppy fi-snb-2520m fi-gdg-551 fi-skl-lmem fi-kbl-7560u fi-snb-2600 
  Missing    (10): fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bwr-2160 fi-ilk-650 fi-bsw-cyan fi-ctg-p8600 fi-cfl-8109u fi-kbl-8809g fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7802 -> Patchwork_16228

  CI-20190529: 20190529
  CI_DRM_7802: cd932df72f11bdff93423a8d4a9e0e9ccb0985d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5381: 4ff48cdd5c94140d2dd9bfa3225a6e1e0238e247 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16228: 04f69b9ec4d80f9dee580c03005b350b5eee67c6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

04f69b9ec4d8 drm/i915/gvt: fix high-order allocation failure on late load

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16228/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
