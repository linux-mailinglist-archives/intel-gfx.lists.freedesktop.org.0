Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC13177C8C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 18:00:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EE9A6E925;
	Tue,  3 Mar 2020 17:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA99C6E91C;
 Tue,  3 Mar 2020 17:00:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D15C0A0094;
 Tue,  3 Mar 2020 17:00:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 03 Mar 2020 17:00:15 -0000
Message-ID: <158325481582.15380.11815013138689906466@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303140009.1494819-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200303140009.1494819-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Drop_the_timeline-=3Emutex_as_we_wait_for_retiremen?=
 =?utf-8?q?t_=28rev2=29?=
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

Series: drm/i915/gt: Drop the timeline->mutex as we wait for retirement (rev2)
URL   : https://patchwork.freedesktop.org/series/74204/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8055 -> Patchwork_16798
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16798 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16798, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16798/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16798:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8055/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16798/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  
Known issues
------------

  Here are the changes found in Patchwork_16798 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][3] -> [FAIL][4] ([CI#94])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8055/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16798/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload:
    - fi-ilk-650:         [PASS][5] -> [DMESG-WARN][6] ([i915#116])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8055/fi-ilk-650/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16798/fi-ilk-650/igt@i915_module_load@reload.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8] ([fdo#111096] / [i915#323])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8055/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16798/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@vgem_basic@dmabuf-fence-before:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([CI#94] / [i915#402]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8055/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16798/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - fi-tgl-y:           [DMESG-WARN][11] ([CI#94] / [i915#402]) -> [PASS][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8055/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16798/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#116]: https://gitlab.freedesktop.org/drm/intel/issues/116
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 47)
------------------------------

  Additional (5): fi-ehl-1 fi-cfl-8109u fi-elk-e7500 fi-bsw-kefka fi-kbl-7560u 
  Missing    (4): fi-ctg-p8600 fi-byt-clapper fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8055 -> Patchwork_16798

  CI-20190529: 20190529
  CI_DRM_8055: df5c59f81df63a983b7490968e16c3255adc196b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5484: 91b36b61e76901a2bd09fe93ac7bf7b8a60f258c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16798: 20b19f9f99f11d91bf02b00ac7af718f4753d406 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

20b19f9f99f1 drm/i915/gt: Drop the timeline->mutex as we wait for retirement

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16798/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
