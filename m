Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4253B191D60
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 00:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DBDE891B9;
	Tue, 24 Mar 2020 23:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 61E8D891B9;
 Tue, 24 Mar 2020 23:17:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5BCA9A47DF;
 Tue, 24 Mar 2020 23:17:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 24 Mar 2020 23:17:36 -0000
Message-ID: <158509185634.5747.7116566130230315363@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=5Fdevice_managed_resources_=28rev7=29?=
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

Series: drm_device managed resources (rev7)
URL   : https://patchwork.freedesktop.org/series/73633/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8184 -> Patchwork_17074
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17074/index.html

Known issues
------------

  Here are the changes found in Patchwork_17074 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#189])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8184/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17074/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][3] ([i915#877]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8184/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17074/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  
#### Warnings ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-lmem:        [INCOMPLETE][5] ([i915#424]) -> [DMESG-FAIL][6] ([i915#481])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8184/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17074/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][7] ([i915#1209]) -> [FAIL][8] ([i915#1485] / [i915#192] / [i915#193] / [i915#194])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8184/fi-kbl-8809g/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17074/fi-kbl-8809g/igt@runner@aborted.html

  
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#481]: https://gitlab.freedesktop.org/drm/intel/issues/481
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (40 -> 41)
------------------------------

  Additional (6): fi-kbl-soraka fi-bsw-n3050 fi-byt-j1900 fi-kbl-7500u fi-cfl-8109u fi-kbl-7560u 
  Missing    (5): fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8184 -> Patchwork_17074

  CI-20190529: 20190529
  CI_DRM_8184: 1a72c9d9d3140e92190485d766b9d165932c5b86 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5535: d1dcf40cc6869ac858586c5ad9f09af6617ce2ee @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17074: 1eab7d6989ddec146d7a4c84db4d5e191891b6fd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1eab7d6989dd drm: Add docs for managed resources
6b5f55ae0e4b drm/udl: drop drm_driver.release hook
a18c3359dd5f drm/udl: Drop explicit drm_mode_config_cleanup call
0b7aec23a492 drm/mipi-dbi: Drop explicit drm_mode_config_cleanup call
b53161c5e59e drm/mipi-dbi: Move drm_mode_config_init into mipi library
ae60691f4e71 drm/repaper: Drop explicit drm_mode_config_cleanup call
0ac911b345c3 drm/gm12u320: Simplify upload work
de2c1853b136 drm/gm12u320: Use helpers for shutdown/suspend/resume
9e8af690b11c drm/gm12u320: Use devm_drm_dev_init
a9be2f852109 drm/gm12u320: More drmm_
43c7dc5664ae drm/tidss: Drop explicit drm_mode_config_cleanup call
f7848b464ea3 drm/mtk: Drop explicit drm_mode_config_cleanup call
171ebef2bd8d drm/shmob: Drop explicit drm_mode_config_cleanup call
60148391818a drm/stm: Drop explicit drm_mode_config_cleanup call
eb1e76dbc719 drm/rockchip: Drop explicit drm_mode_config_cleanup call
582b972d98b2 drm/rcar-du: Drop explicit drm_mode_config_cleanup call
a7a82feb57b6 drm/pl111: Drop explicit drm_mode_config_cleanup call
1d46bf8e3214 drm/meson: Drop explicit drm_mode_config_cleanup call
d91bfa1380e0 drm/mcde: More devm_drm_dev_init
567631ed96bc drm/mcde: Drop explicit drm_mode_config_cleanup call
ea853880511a drm/ingenic: Drop explicit drm_mode_config_cleanup call
d125bb619e9b drm/cirrus: Fully embrace devm_
d3c19b8672e5 drm/cirrus: Drop explicit drm_mode_config_cleanup call
49a81974bfbe drm/bochs: Drop explicit drm_mode_config_cleanup
66b5bf6c1d10 drm/bochs: Remove leftover drm_atomic_helper_shutdown
6108261bffbc drm: Manage drm_mode_config_init with drmm_
f0a630503538 drm: Garbage collect drm_dev_fini
d778e63bdf3d drm: Manage drm_vblank_cleanup with drmm_
f93ff21e691a drm: Manage drm_gem_init with drmm_
700aba27b628 drm: manage drm_minor cleanup with drmm_
089ff2cd9e9a drm: Use drmm_ for drm_dev_init cleanup
420694797b28 drm: Handle dev->unique with drmm_
9dd49a7c49aa drm: Cleanups after drmm_add_final_kfree rollout
573ca830adcd drm/<drivers>: Use drmm_add_final_kfree
c01b2a8871e0 drm/gm12u320: Use drmm_add_final_kfree
33e0fb0794f7 drm/ingenic: Use drmm_add_final_kfree
6d0fb8071168 drm/repaper: Use drmm_add_final_kfree
e18724e987d7 drm/vkms: Use drmm_add_final_kfree
3ac713b82bd1 drm/vgem: Use drmm_add_final_kfree
1058a7ec412b drm/mcde: Use drmm_add_final_kfree
7712d516462d drm/tidss: Use drmm_add_final_kfree
79c9d4154407 drm/v3d: Use drmm_add_final_kfree
993e87f1a49a drm/cirrus: Use drmm_add_final_kfree
b8bf4addd08d drm/i915: Use drmm_add_final_kfree
648cc4f29283 drm/qxl: Use drmm_add_final_kfree
b9562b8c0b3b drm/udl: Use drmm_add_final_kfree
f5c3aceaaf48 drm/mipi_dbi: Use drmm_add_final_kfree in all drivers
eb0e9b4246b6 drm: Set final_kfree in drm_dev_alloc
b262cc982e91 drm: add managed resources tied to drm_device
d5e9e9dffec3 drm/i915: Don't clear drvdata in ->release
ccd08fc6b11b mm/sl[uo]b: export __kmalloc_track(_node)_caller

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17074/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
