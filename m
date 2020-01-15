Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A763D13C655
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 15:39:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CF0F6EAC2;
	Wed, 15 Jan 2020 14:39:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D70E56EABE;
 Wed, 15 Jan 2020 14:39:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF267A00E9;
 Wed, 15 Jan 2020 14:39:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yannick FERTRE" <yannick.fertre@st.com>
Date: Wed, 15 Jan 2020 14:39:33 -0000
Message-ID: <157909917384.2009.11435954561159915167@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115121652.7050-1-tzimmermann@suse.de>
In-Reply-To: <20200115121652.7050-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Clean_up_VBLANK_callbacks_in_struct_drm=5Fdriver_=28rev7=29?=
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

Series: drm: Clean up VBLANK callbacks in struct drm_driver (rev7)
URL   : https://patchwork.freedesktop.org/series/71873/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7748 -> Patchwork_16109
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/index.html

Known issues
------------

  Here are the changes found in Patchwork_16109 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][1] -> [FAIL][2] ([i915#178])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][3] -> [DMESG-FAIL][4] ([i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-n3050:       [TIMEOUT][5] ([fdo#112271]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][7] ([i915#671]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][9] ([i915#563]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-4770r:       [DMESG-FAIL][11] ([i915#722]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][13] ([i915#553] / [i915#725]) -> [DMESG-FAIL][14] ([i915#770])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][15] ([i915#217]) -> [DMESG-WARN][16] ([IGT#4] / [i915#263])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770


Participating hosts (42 -> 44)
------------------------------

  Additional (7): fi-byt-j1900 fi-ivb-3770 fi-skl-lmem fi-blb-e6850 fi-bsw-nick fi-skl-6600u fi-snb-2600 
  Missing    (5): fi-ilk-m540 fi-ehl-1 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7748 -> Patchwork_16109

  CI-20190529: 20190529
  CI_DRM_7748: 1793de9a4215356790b87608fcfc9e99eeb6954d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16109: c52556e3079288ed36479ff776e1b52cb9696e78 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16109/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  Building modules, stage 2.
  MODPOST 122 modules
ERROR: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
scripts/Makefile.modpost:93: recipe for target '__modpost' failed
make[1]: *** [__modpost] Error 1
Makefile:1282: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

c52556e30792 drm: Clean-up VBLANK-related callbacks in struct drm_driver
61527d1c7a93 drm/vmwgfx: Convert to CRTC VBLANK callbacks
b29321882b4f drm/vkms: Convert to CRTC VBLANK callbacks
e952fa736e1b drm/vc4: Convert to CRTC VBLANK callbacks
bdb33d490006 drm/vc4: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
704e97144a39 drm/sti: Convert to CRTC VBLANK callbacks
d6dc7e620f0d drm/stm: Convert to CRTC VBLANK callbacks
30e9f7f1f87b drm/stm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
173cf84c27e3 drm/msm: Convert to CRTC VBLANK callbacks
966e9c656ca6 drm/msm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
72b4efee8c65 drm/radeon: Convert to CRTC VBLANK callbacks
1f6db288e0fa drm/radeon: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
a6ce542fd47d drm/nouveau: Convert to CRTC VBLANK callbacks
e07dbc1495a4 drm/nouveau: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
6973748c37f8 drm/i915: Convert to CRTC VBLANK callbacks
93037221d20f drm/gma500: Convert to CRTC VBLANK callbacks
cd78a84d2d2a drm/amdgpu: Convert to CRTC VBLANK callbacks
fa076645f81a drm/amdgpu: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
f092246f0d79 drm: Add get_vblank_timestamp() to struct drm_crtc_funcs
f69356546e68 drm: Evaluate struct drm_device.vblank_disable_immediate on each use
b5db489929e6 drm: Add get_scanout_position() to struct drm_crtc_helper_funcs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
