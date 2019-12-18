Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C813E12569B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 23:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3E406EA8B;
	Wed, 18 Dec 2019 22:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 68E476EA88;
 Wed, 18 Dec 2019 22:23:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59F5DA0118;
 Wed, 18 Dec 2019 22:23:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rajat Jain" <rajatja@google.com>
Date: Wed, 18 Dec 2019 22:23:25 -0000
Message-ID: <157670780534.8356.2632663160879089495@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217200829.120993-1-rajatja@google.com>
In-Reply-To: <20191217200829.120993-1-rajatja@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/3=5D_drm/i915=3A_Move_the_code_to_p?=
 =?utf-8?q?opulate_ACPI_device_ID_into_intel=5Facpi?=
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

Series: series starting with [v4,1/3] drm/i915: Move the code to populate ACPI device ID into intel_acpi
URL   : https://patchwork.freedesktop.org/series/71135/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7599 -> Patchwork_15833
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/index.html

Known issues
------------

  Here are the changes found in Patchwork_15833 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][1] -> [FAIL][2] ([i915#178])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][3] -> [INCOMPLETE][4] ([i915#45])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][5] ([i915#816]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][7] ([fdo#111593]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][9] ([i915#424]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][12] ([fdo#107139] / [i915#62] / [i915#92])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][13] ([i915#725]) -> [DMESG-FAIL][14] ([i915#563])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][16] ([i915#62] / [i915#92]) +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92]) -> [DMESG-WARN][18] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (48 -> 41)
------------------------------

  Additional (2): fi-snb-2520m fi-kbl-7500u 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ilk-650 fi-elk-e7500 fi-blb-e6850 fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7599 -> Patchwork_15833

  CI-20190529: 20190529
  CI_DRM_7599: 03dfaf2e5f39b632d0187544f3c988b8596f11b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15833: 46f010dc30eb82f8b1f578398fc03d266dc52b00 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

46f010dc30eb drm/i915: Add support for integrated privacy screens
686662fa34e8 drm/i915: Lookup and attach ACPI device node for connectors
a992db381df1 drm/i915: Move the code to populate ACPI device ID into intel_acpi

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15833/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
