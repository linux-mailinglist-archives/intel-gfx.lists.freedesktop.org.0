Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1942D136AA0
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 11:09:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFDFD6E9AC;
	Fri, 10 Jan 2020 10:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EF5336E9A8;
 Fri, 10 Jan 2020 10:09:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6FF0A0087;
 Fri, 10 Jan 2020 10:09:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Fri, 10 Jan 2020 10:09:05 -0000
Message-ID: <157865094594.30838.4696083829030977126@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110092127.27847-1-tzimmermann@suse.de>
In-Reply-To: <20200110092127.27847-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Clean_up_VBLANK_callbacks_in_struct_drm=5Fdriver?=
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

Series: drm: Clean up VBLANK callbacks in struct drm_driver
URL   : https://patchwork.freedesktop.org/series/71873/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7715 -> Patchwork_16048
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16048/index.html

Known issues
------------

  Here are the changes found in Patchwork_16048 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-6700k2:      [PASS][1] -> [INCOMPLETE][2] ([i915#198])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7715/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16048/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [PASS][3] -> [DMESG-WARN][4] ([i915#889])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7715/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16048/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-x1275:       [PASS][5] -> [INCOMPLETE][6] ([i915#879])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7715/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16048/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-hsw-4770:        [PASS][7] -> [INCOMPLETE][8] ([i915#151])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7715/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16048/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][9] -> [DMESG-FAIL][10] ([i915#563])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7715/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16048/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-peppy:       [PASS][11] -> [DMESG-FAIL][12] ([i915#553] / [i915#725])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7715/fi-hsw-peppy/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16048/fi-hsw-peppy/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][13] ([i915#178]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7715/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16048/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][15] ([i915#656]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7715/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16048/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [DMESG-FAIL][17] ([i915#722]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7715/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16048/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (44 -> 39)
------------------------------

  Additional (8): fi-byt-j1900 fi-glk-dsi fi-kbl-guc fi-kbl-8809g fi-elk-e7500 fi-kbl-7560u fi-tgl-y fi-bsw-nick 
  Missing    (13): fi-ehl-1 fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-kbl-7500u fi-ctg-p8600 fi-whl-u fi-skl-lmem fi-byt-n2820 fi-byt-clapper fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7715 -> Patchwork_16048

  CI-20190529: 20190529
  CI_DRM_7715: 337449c74a6745cf1d9d60c41f170d31a291f0c0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5359: 28451bcec2245dcc1fd0eb1d4c76335b2b4f97a5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16048: dadf262439d81673a98e649029a16118347446f7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dadf262439d8 drm: Cleanup VBLANK callbacks in struct drm_driver
84acced102ba drm/vmwgfx: Convert to CRTC VBLANK callbacks
903a2a016c51 drm/vkms: Convert to CRTC VBLANK callbacks
3cfb12b0e696 drm/vc4: Convert to CRTC VBLANK callbacks
525588523ac7 drm/stm: Convert to CRTC VBLANK callbacks
086db47a9d9b drm/sti: Convert to CRTC VBLANK callbacks
a88d8ab0a3a3 drm/radeon: Convert to CRTC VBLANK callbacks
172a0bc8d942 drm/nouveau: Convert to CRTC VBLANK callbacks
9f3580b11e21 drm/msm: Convert to CRTC VBLANK callbacks
c7747dd915c1 drm/i915: Convert to CRTC VBLANK callbacks
dbf1b08fc990 drm/gma500: Convert to CRTC VBLANK callbacks
585dc3993334 drm/amdgpu: Convert to CRTC VBLANK callbacks
115af48b3a62 drm: Add get_vblank_timestamp() to struct drm_crtc_funcs
cbfbe29f84f9 drm: Evaluate struct drm_device.vblank_disable_immediate on each use
4fb79c555089 drm: Remove struct drm_driver.get_scanout_position()
47676fe9e9da drm/stm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
450559e9416c drm/vc4: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
7aa032e1e5eb drm/msm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
78fac3c06e60 drm/radeon: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
cc4157b82402 drm/nouveau: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
daf9deab4b37 drm/i915: Don't use struct drm_driver.get_scanout_position()
62a0fc25c2ed drm/amdgpu: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
30f2cd6c8fad drm: Add get_scanout_position() to struct drm_crtc_helper_funcs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16048/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
