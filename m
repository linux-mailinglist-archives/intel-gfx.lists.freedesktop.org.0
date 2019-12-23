Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D54912999F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 18:55:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4083489D5C;
	Mon, 23 Dec 2019 17:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 42B6189D5C;
 Mon, 23 Dec 2019 17:55:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30BB1A01BB;
 Mon, 23 Dec 2019 17:55:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 23 Dec 2019 17:55:07 -0000
Message-ID: <157712370719.16936.16192337571178215453@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191223131444.20259-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191223131444.20259-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_second_DBuf_slice_for_ICL_and_TGL_=28rev11=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev11)
URL   : https://patchwork.freedesktop.org/series/70059/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7628 -> Patchwork_15894
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15894 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15894, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15894:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6600u:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-bwr-2160:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/fi-bwr-2160/igt@i915_selftest@live_gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_15894 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [PASS][4] -> [INCOMPLETE][5] ([i915#505] / [i915#671])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][6] -> [DMESG-FAIL][7] ([i915#553] / [i915#725])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][8] -> [DMESG-FAIL][9] ([i915#656])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - {fi-tgl-guc}:       [INCOMPLETE][10] ([i915#435]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/fi-tgl-guc/igt@gem_close_race@basic-threads.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/fi-tgl-guc/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [INCOMPLETE][12] ([fdo#103927]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][14] ([fdo#111407]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][16] ([i915#44]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][18] ([fdo#107139] / [i915#62] / [i915#92]) -> [DMESG-WARN][19] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][20] ([i915#62] / [i915#92]) -> [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][22] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][23] ([i915#62] / [i915#92]) +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 43)
------------------------------

  Additional (7): fi-bsw-n3050 fi-bwr-2160 fi-ivb-3770 fi-elk-e7500 fi-tgl-y fi-skl-6600u fi-snb-2600 
  Missing    (8): fi-hsw-4770r fi-ilk-m540 fi-tgl-u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-n2820 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7628 -> Patchwork_15894

  CI-20190529: 20190529
  CI_DRM_7628: 22f0a3a9b0f332ef75988890b7f1d5881588a1dd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15894: 2a5ed9f339c27003a5746cfa0fc8643c5e06b32b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2a5ed9f339c2 drm/i915: Correctly map DBUF slices to pipes
b0f2bab1a82d drm/i915: Manipulate DBuf slices properly
d2d900d8860c drm/i915: Move dbuf slice update to proper place
a1aa6331b13f drm/i915: Remove skl_ddl_allocation struct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15894/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
