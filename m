Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA5316A85D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 15:32:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6456E50D;
	Mon, 24 Feb 2020 14:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 618EC6E509;
 Mon, 24 Feb 2020 14:32:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5B09DA363D;
 Mon, 24 Feb 2020 14:32:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 24 Feb 2020 14:32:26 -0000
Message-ID: <158255474634.28360.990189632135723988@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224101120.4024481-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200224101120.4024481-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gtt=3A_Downgrade_gen7_=28ivb=2C_byt=2C_hsw=29_back_to_ali?=
 =?utf-8?q?asing-ppgtt?=
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

Series: drm/i915/gtt: Downgrade gen7 (ivb, byt, hsw) back to aliasing-ppgtt
URL   : https://patchwork.freedesktop.org/series/73842/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7996 -> Patchwork_16683
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16683 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16683, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16683/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16683:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-hsw-peppy:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16683/fi-hsw-peppy/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_16683 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6700k2:      [PASS][2] -> [INCOMPLETE][3] ([i915#151])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16683/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html

  * igt@kms_addfb_basic@addfb25-x-tiled:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([CI#94] / [i915#402]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16683/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [INCOMPLETE][6] ([i915#694] / [i915#816]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16683/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
    - fi-byt-j1900:       [INCOMPLETE][8] ([i915#45]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16683/fi-byt-j1900/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [INCOMPLETE][10] ([i915#45]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16683/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][12] ([CI#94]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16683/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][14] ([CI#94] / [i915#402]) -> [PASS][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16683/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][16] ([fdo#111096] / [i915#323]) -> [FAIL][17] ([fdo#111407])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16683/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@runner@aborted:
    - fi-hsw-peppy:       [FAIL][18] ([i915#694]) -> [FAIL][19] ([k.org#204565])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/fi-hsw-peppy/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16683/fi-hsw-peppy/igt@runner@aborted.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (46 -> 44)
------------------------------

  Additional (3): fi-kbl-soraka fi-ehl-1 fi-pnv-d510 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7996 -> Patchwork_16683

  CI-20190529: 20190529
  CI_DRM_7996: 2a1fa22ec29545044f07076bea91f8e382cd8356 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5461: 9d7d9d0455409d0e562ca7ffdf206c7646c50e58 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16683: 74fe1378a7cfc67cc0169d7e797dc1f03bde6176 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

74fe1378a7cf drm/i915/gtt: Downgrade gen7 (ivb, byt, hsw) back to aliasing-ppgtt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16683/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
