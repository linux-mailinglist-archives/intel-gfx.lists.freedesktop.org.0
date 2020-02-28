Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7AE172E76
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 03:03:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 698916EDB5;
	Fri, 28 Feb 2020 02:02:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A061A6E993;
 Fri, 28 Feb 2020 02:02:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9CD07A3C0D;
 Fri, 28 Feb 2020 02:02:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 28 Feb 2020 02:02:57 -0000
Message-ID: <158285537763.7475.2471837327005432917@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227204727.2009346-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200227204727.2009346-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Check_engine-is-awake_on_reset_later?=
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

Series: drm/i915/gt: Check engine-is-awake on reset later
URL   : https://patchwork.freedesktop.org/series/74041/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8023 -> Patchwork_16746
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/index.html

Known issues
------------

  Here are the changes found in Patchwork_16746 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#730])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [FAIL][3] ([i915#217] / [i915#976]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][5] ([fdo#111096] / [i915#323]) -> [FAIL][6] ([fdo#111407])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (46 -> 41)
------------------------------

  Additional (4): fi-blb-e6850 fi-kbl-7560u fi-ivb-3770 fi-snb-2600 
  Missing    (9): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-kbl-8809g fi-byt-clapper fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8023 -> Patchwork_16746

  CI-20190529: 20190529
  CI_DRM_8023: fa9a02bbdfd6553ee633171f23183a115d0da577 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5474: 1be610f852de155cd915e7cda65cb2737adf04d4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16746: 80652fd6bc925a26ae98f3dcebd545a302a3589b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

80652fd6bc92 drm/i915/gt: Check engine-is-awake on reset later

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16746/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
