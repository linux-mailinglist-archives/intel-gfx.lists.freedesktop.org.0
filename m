Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7061BCD55
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 22:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B271E6E9B9;
	Tue, 28 Apr 2020 20:26:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7652D6E93F;
 Tue, 28 Apr 2020 20:26:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F701A47E6;
 Tue, 28 Apr 2020 20:26:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 28 Apr 2020 20:26:51 -0000
Message-ID: <158810561142.17774.11036455546886192856@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Put_drm=5Fdisplay=5Fmode_on_diet_=28rev4=29?=
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

Series: drm: Put drm_display_mode on diet (rev4)
URL   : https://patchwork.freedesktop.org/series/73674/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8387 -> Patchwork_17497
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17497 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17497, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17497/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17497:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-snb-2520m:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17497/fi-snb-2520m/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17497/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17497/fi-ivb-3770/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17497 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-guc:         [PASS][4] -> [INCOMPLETE][5] ([i915#1580])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/fi-icl-guc/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17497/fi-icl-guc/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-dsi}:       [DMESG-FAIL][6] ([i915#656]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17497/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [SKIP][8] ([fdo#109271]) -> [FAIL][9] ([i915#665] / [i915#704])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8387/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17497/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#665]: https://gitlab.freedesktop.org/drm/intel/issues/665
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704


Participating hosts (50 -> 42)
------------------------------

  Missing    (8): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8387 -> Patchwork_17497

  CI-20190529: 20190529
  CI_DRM_8387: 2f06b2b1d33997d1fb16564959f0ebee8a26b632 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17497: c1a74fbc130f7246b5fb95ecf67c9edc22ca5df3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c1a74fbc130f drm: Replace mode->export_head with a boolean
1899ce9671ee drm: Nuke mode->private_flags
4fb36e6875cf drm/gma500: Stop using mode->private_flags
c9d66b575ee4 drm/i915: Replace I915_MODE_FLAG_INHERITED with a boolean
599655854c63 drm/i915: Stop using mode->private_flags
c6250bb8bb4c drm/mcde: Use mode->clock instead of reverse calculating it from the vrefresh
6183fd17cc04 drm: pahole struct drm_display_mode
cb12bfa009ef drm: Flatten drm_mode_vrefresh()
80a8d788d6dd drm: Shrink drm_display_mode timings
193c14ba7aa6 drm: Make mode->flags u32
39beb28d7f54 drm: Shrink mode->type to u8
def3490cecd2 drm: Shrink {width,height}_mm to u16
236701787646 drm/msm/dpu: Stop copying around mode->private_flags
88e33e5f3e3c drm: Nuke mode->vrefresh
eaecaca706ae drm/i915: Introduce some local intel_dp variables
391d956587ff drm: Nuke mode->hsync

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17497/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
