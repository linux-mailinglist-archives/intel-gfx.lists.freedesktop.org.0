Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E59173C13
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 16:47:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41DAE6E090;
	Fri, 28 Feb 2020 15:47:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 69D846E086;
 Fri, 28 Feb 2020 15:47:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62D49A0071;
 Fri, 28 Feb 2020 15:47:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Fri, 28 Feb 2020 15:47:05 -0000
Message-ID: <158290482537.7474.35327087451215131@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200228114110.187792-1-hdegoede@redhat.com>
In-Reply-To: <20200228114110.187792-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Some_upside-down_panel_handling_fixes?=
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

Series: drm/i915: Some upside-down panel handling fixes
URL   : https://patchwork.freedesktop.org/series/74076/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8030 -> Patchwork_16761
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16761/index.html

Known issues
------------

  Here are the changes found in Patchwork_16761 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#730])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8030/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16761/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_addfb_basic@addfb25-y-tiled:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8030/fi-tgl-y/igt@kms_addfb_basic@addfb25-y-tiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16761/fi-tgl-y/igt@kms_addfb_basic@addfb25-y-tiled.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][5] -> [FAIL][6] ([fdo#111096] / [i915#323])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8030/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16761/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-llseek-size:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8030/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16761/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730


Participating hosts (50 -> 43)
------------------------------

  Additional (2): fi-glk-dsi fi-ilk-650 
  Missing    (9): fi-kbl-soraka fi-ilk-m540 fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8030 -> Patchwork_16761

  CI-20190529: 20190529
  CI_DRM_8030: dbdc956c90598337bef46cede52b082954651c0e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5476: 6628336d5699e3fda2c3b64b1c9fc5426b6de29a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16761: 91740cf1d41cdc75321a68067c5bdd0d5e55b297 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

91740cf1d41c drm/i915/dp: Use BDB_GENERAL_FEATURES VBT block info for builtin panel-orientation
3da5c24d3382 drm/i915/dsi: Remove readback of panel orientation on BYT / CHT

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16761/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
