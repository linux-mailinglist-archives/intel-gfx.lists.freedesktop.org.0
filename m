Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3734A17A6A3
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 14:47:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BDFD6E0BF;
	Thu,  5 Mar 2020 13:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB5E16E0BF;
 Thu,  5 Mar 2020 13:47:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E449BA00EF;
 Thu,  5 Mar 2020 13:47:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Thu, 05 Mar 2020 13:47:20 -0000
Message-ID: <158341604093.17235.18430199243694724767@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129224729.4684-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200129224729.4684-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hotplug=3A_Use_phy_to_get_the_hpd=5Fpin_instead_of_the_po?=
 =?utf-8?b?cnQgKHJldjYp?=
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

Series: drm/i915/hotplug: Use phy to get the hpd_pin instead of the port (rev6)
URL   : https://patchwork.freedesktop.org/series/72747/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8068 -> Patchwork_16830
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/index.html

Known issues
------------

  Here are the changes found in Patchwork_16830 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][1] -> [FAIL][2] ([CI#94])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#1382])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][5] -> [FAIL][6] ([i915#217] / [i915#976])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
#### Possible fixes ####

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][11] ([i915#424]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#1382]: https://gitlab.freedesktop.org/drm/intel/issues/1382
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (52 -> 45)
------------------------------

  Additional (1): fi-gdg-551 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8068 -> Patchwork_16830

  CI-20190529: 20190529
  CI_DRM_8068: f8e69af5cca45947ebce78f677b75b0ecc4ba744 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5492: 2be153507cdd652843f6ab44cc2a52a7f30206d9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16830: 5bce3620610d00ef00a407fbf3f20eee734f84f7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5bce3620610d drm/i915/hotplug: Use phy to get the hpd_pin instead of the port (v5)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
