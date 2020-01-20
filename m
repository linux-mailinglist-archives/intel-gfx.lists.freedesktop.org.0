Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CABF142B4F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 13:54:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898AA6E92B;
	Mon, 20 Jan 2020 12:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7F80789C61;
 Mon, 20 Jan 2020 12:54:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7836A0119;
 Mon, 20 Jan 2020 12:54:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yannick FERTRE" <yannick.fertre@st.com>
Date: Mon, 20 Jan 2020 12:54:37 -0000
Message-ID: <157952487765.680.15969509547014454082@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120082314.14756-1-tzimmermann@suse.de>
In-Reply-To: <20200120082314.14756-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Clean_up_VBLANK_callbacks_in_struct_drm=5Fdriver_=28rev8=29?=
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

Series: drm: Clean up VBLANK callbacks in struct drm_driver (rev8)
URL   : https://patchwork.freedesktop.org/series/71873/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7777 -> Patchwork_16170
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16170 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16170, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16170/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16170:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_uncore:
    - fi-cfl-8700k:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7777/fi-cfl-8700k/igt@i915_selftest@live_uncore.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16170/fi-cfl-8700k/igt@i915_selftest@live_uncore.html

  
Known issues
------------

  Here are the changes found in Patchwork_16170 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][3] -> [TIMEOUT][4] ([fdo#112271] / [i915#816])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7777/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16170/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [PASS][5] -> [FAIL][6] ([fdo#103375])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7777/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16170/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [PASS][7] -> [INCOMPLETE][8] ([fdo#103927])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7777/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16170/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8700k:       [PASS][9] -> [DMESG-WARN][10] ([i915#889]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7777/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16170/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][11] -> [DMESG-FAIL][12] ([i915#563])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7777/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16170/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [DMESG-WARN][13] ([fdo#111764]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7777/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16170/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live_blt:
    - fi-byt-j1900:       [DMESG-FAIL][15] ([i915#725]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7777/fi-byt-j1900/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16170/fi-byt-j1900/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][17] ([i915#553] / [i915#725]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7777/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16170/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [FAIL][19] ([fdo#109635] / [i915#217]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7777/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16170/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (40 -> 37)
------------------------------

  Additional (7): fi-kbl-soraka fi-snb-2520m fi-ilk-650 fi-elk-e7500 fi-skl-lmem fi-skl-6600u fi-snb-2600 
  Missing    (10): fi-ilk-m540 fi-kbl-7560u fi-bdw-5557u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-ivb-3770 fi-bsw-kefka fi-blb-e6850 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7777 -> Patchwork_16170

  CI-20190529: 20190529
  CI_DRM_7777: 7d2e349542ee3d682a98cc12c3ebdd4677d00d71 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5372: 0d00a27fbbd4d4a77d24499ea9811e07e65eb0ac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16170: ea9e1d01e89826eb1492d5e8ac2b8893524d46eb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ea9e1d01e898 drm: Remove legacy version of get_scanout_position()
637a859efe2f drm: Clean-up VBLANK-related callbacks in struct drm_driver
1d5b01bc601e drm/vmwgfx: Convert to CRTC VBLANK callbacks
8f7b89e2e7f0 drm/vkms: Convert to CRTC VBLANK callbacks
05e2648135b8 drm/vc4: Convert to CRTC VBLANK callbacks
578cb860b55c drm/vc4: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
df86ce675e2a drm/sti: Convert to CRTC VBLANK callbacks
84b4fc193aa2 drm/stm: Convert to CRTC VBLANK callbacks
a9016521a16d drm/stm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
582c54684002 drm/msm: Convert to CRTC VBLANK callbacks
a2a551836901 drm/msm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
5126874a465c drm/radeon: Convert to CRTC VBLANK callbacks
97ac4623f4db drm/radeon: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
609bd5e15846 drm/nouveau: Convert to CRTC VBLANK callbacks
42922e924da6 drm/nouveau: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
09f7b2308ef5 drm/i915: Convert to CRTC VBLANK callbacks
58dd8e07443b drm/gma500: Convert to CRTC VBLANK callbacks
62238b52f5ad drm/amdgpu: Convert to CRTC VBLANK callbacks
415b65185cc9 drm/amdgpu: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
5be5473c0489 drm: Add get_vblank_timestamp() to struct drm_crtc_funcs
c83894778e46 drm: Add get_scanout_position() to struct drm_crtc_helper_funcs
9ff81bf712fd drm: Remove internal setup of struct drm_device.vblank_disable_immediate

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16170/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
