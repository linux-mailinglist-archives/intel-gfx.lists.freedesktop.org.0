Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A07821769BE
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 02:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D916E907;
	Tue,  3 Mar 2020 01:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E53C89178;
 Tue,  3 Mar 2020 01:00:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96FFFA363D;
 Tue,  3 Mar 2020 01:00:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Tue, 03 Mar 2020 01:00:57 -0000
Message-ID: <158319725761.15378.14893295726646856806@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211183358.157448-1-lyude@redhat.com>
In-Reply-To: <20200211183358.157448-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/dp=2C_i915=3A_eDP_DPCD_backlight_control_detection_fixes_=28re?=
 =?utf-8?b?djMp?=
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

Series: drm/dp, i915: eDP DPCD backlight control detection fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/72991/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8049 -> Patchwork_16789
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/index.html

Known issues
------------

  Here are the changes found in Patchwork_16789 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][1] -> [INCOMPLETE][2] ([i915#140])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/fi-icl-y/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@bad-pitch-32:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-32.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-32.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-bxt-dsi:         [INCOMPLETE][5] ([fdo#103927]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/fi-bxt-dsi/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/fi-bxt-dsi/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_addfb_basic@addfb25-yf-tiled:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/fi-tgl-y/igt@kms_addfb_basic@addfb25-yf-tiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/fi-tgl-y/igt@kms_addfb_basic@addfb25-yf-tiled.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][9] ([fdo#111407]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (51 -> 41)
------------------------------

  Additional (1): fi-byt-j1900 
  Missing    (11): fi-kbl-soraka fi-ilk-m540 fi-bdw-samus fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-kbl-7560u fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8049 -> Patchwork_16789

  CI-20190529: 20190529
  CI_DRM_8049: 7d5c1a40d4e68b642cf581e92435ccbf90e7482a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16789: 156ef8bcad25ab2853b8aa2992b9383d783c952f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

156ef8bcad25 drm/i915: Force DPCD backlight mode for some Dell CML 2020 panels
b1e882ad37de drm/i915: Force DPCD backlight mode on X1 Extreme 2nd Gen 4K AMOLED panel
d0dcb4914034 drm/dp: Introduce EDID-based quirks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16789/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
