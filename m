Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA7F18757C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 23:23:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70B956E52E;
	Mon, 16 Mar 2020 22:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3711D6E52E;
 Mon, 16 Mar 2020 22:23:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F075A0094;
 Mon, 16 Mar 2020 22:23:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Mon, 16 Mar 2020 22:23:55 -0000
Message-ID: <158439743516.18994.7559760556907139746@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312053841.2794-1-vandita.kulkarni@intel.com>
In-Reply-To: <20200312053841.2794-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_mipi_dsi_cmd_mode_=28rev8=29?=
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

Series: Add support for mipi dsi cmd mode (rev8)
URL   : https://patchwork.freedesktop.org/series/69290/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8138 -> Patchwork_16982
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/index.html

Known issues
------------

  Here are the changes found in Patchwork_16982 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][1] -> [FAIL][2] ([CI#94])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([fdo#109635] / [i915#262])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - fi-bwr-2160:        [INCOMPLETE][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-bwr-2160/igt@i915_selftest@live@perf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/fi-bwr-2160/igt@i915_selftest@live@perf.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [FAIL][7] ([i915#217]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262


Participating hosts (40 -> 44)
------------------------------

  Additional (8): fi-bdw-5557u fi-hsw-peppy fi-skl-6770hq fi-ilk-650 fi-gdg-551 fi-ivb-3770 fi-cfl-8109u fi-snb-2600 
  Missing    (4): fi-byt-squawks fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8138 -> Patchwork_16982

  CI-20190529: 20190529
  CI_DRM_8138: 652084cff0971058d1acb1746001f89ef8ea7321 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5512: f6fef7eff6f121e5e89afd7e70116f471ccd5b8b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16982: 43785a14fc4abcd5137d04c291788f4efe141aeb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

43785a14fc4a drm/i915/dsi: Clear the DSI IIR
ce4fc1ba719f drm/i915/dsi: Initiate fame request in cmd mode
167b44070f5f drm/i915/dsi: Add TE handler for dsi cmd mode.
e943545f217e drm/i915/dsi: Configure TE interrupt for cmd mode
c16239040c2e drm/i915/dsi: Use private flags to indicate TE in cmd mode
1579eb831109 drm/i915/dsi: Add check for periodic command mode
248f98d7878b drm/i915/dsi: Add cmd mode flags in display mode private flags
01f67de3b52d drm/i915/dsi: Add vblank calculation for command mode
006bc864d36a drm/i915/dsi: Configure transcoder operation for command mode.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16982/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
