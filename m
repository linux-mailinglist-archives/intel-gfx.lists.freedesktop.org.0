Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E8A1922E5
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC39E887EF;
	Wed, 25 Mar 2020 08:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCF7A887EF;
 Wed, 25 Mar 2020 08:37:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C67C4A011B;
 Wed, 25 Mar 2020 08:37:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 25 Mar 2020 08:37:31 -0000
Message-ID: <158512545180.29635.568193685241006513@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=5Fdevice_managed_resources_=28rev8=29?=
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

Series: drm_device managed resources (rev8)
URL   : https://patchwork.freedesktop.org/series/73633/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8185 -> Patchwork_17078
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/index.html

Known issues
------------

  Here are the changes found in Patchwork_17078 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-icl-dsi:         [INCOMPLETE][1] -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-icl-dsi/igt@i915_pm_backlight@basic-brightness.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/fi-icl-dsi/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [INCOMPLETE][3] ([fdo#103927] / [i915#656]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-lmem:        [INCOMPLETE][5] ([i915#424]) -> [DMESG-FAIL][6] ([i915#933])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#933]: https://gitlab.freedesktop.org/drm/intel/issues/933


Participating hosts (45 -> 37)
------------------------------

  Additional (2): fi-byt-j1900 fi-skl-6700k2 
  Missing    (10): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-ctg-p8600 fi-cfl-8109u fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8185 -> Patchwork_17078

  CI-20190529: 20190529
  CI_DRM_8185: dbd2532fc5cf023b28bd631b51eea8452739b421 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5537: 190245120758e754813d76b2c6c613413a0dba29 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17078: baa4dcb0aee21ef3ce40fc5bba95afaa08330465 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

baa4dcb0aee2 drm: Add docs for managed resources
a8d9478f18b2 drm/udl: drop drm_driver.release hook
ef6c6b9d2e19 drm/udl: Drop explicit drm_mode_config_cleanup call
34437aa99da1 drm/mipi-dbi: Drop explicit drm_mode_config_cleanup call
a83a298090f6 drm/mipi-dbi: Move drm_mode_config_init into mipi library
5f5b2edee63a drm/repaper: Drop explicit drm_mode_config_cleanup call
b7f4c804fea1 drm/gm12u320: Simplify upload work
3dcc6ec7d1d2 drm/gm12u320: Use helpers for shutdown/suspend/resume
5d8729b98c80 drm/gm12u320: Use devm_drm_dev_init
2a991f3e5988 drm/gm12u320: More drmm_
c8348cd6090b drm/tidss: Drop explicit drm_mode_config_cleanup call
2a6636367e37 drm/mtk: Drop explicit drm_mode_config_cleanup call
ef6c48afeaad drm/shmob: Drop explicit drm_mode_config_cleanup call
81c677e3c2de drm/stm: Drop explicit drm_mode_config_cleanup call
ae8a792f81f0 drm/rockchip: Drop explicit drm_mode_config_cleanup call
5cb1ab78d0a3 drm/rcar-du: Drop explicit drm_mode_config_cleanup call
3031a702f3a4 drm/pl111: Drop explicit drm_mode_config_cleanup call
9d6ffea3634c drm/meson: Drop explicit drm_mode_config_cleanup call
90cc1dbe6df1 drm/mcde: More devm_drm_dev_init
b284276ec6be drm/mcde: Drop explicit drm_mode_config_cleanup call
e661300e8e74 drm/ingenic: Drop explicit drm_mode_config_cleanup call
23dc60bf1d01 drm/cirrus: Fully embrace devm_
6511b2aa6617 drm/cirrus: Drop explicit drm_mode_config_cleanup call
1156334fc354 drm/bochs: Drop explicit drm_mode_config_cleanup
2a1a6da02338 drm/bochs: Remove leftover drm_atomic_helper_shutdown
dff759c5a339 drm: Manage drm_mode_config_init with drmm_
4858cc4ba0e3 drm: Garbage collect drm_dev_fini
d0a27fe712ed drm: Manage drm_vblank_cleanup with drmm_
20465db66178 drm: Manage drm_gem_init with drmm_
4968ba2846b2 drm: manage drm_minor cleanup with drmm_
5f3415797801 drm: Use drmm_ for drm_dev_init cleanup
430dc60ad84d drm: Handle dev->unique with drmm_
09c19285280f drm: Cleanups after drmm_add_final_kfree rollout
5d7cf79a8549 drm/<drivers>: Use drmm_add_final_kfree
195eacb42788 drm/gm12u320: Use drmm_add_final_kfree
6c5bc69f860a drm/ingenic: Use drmm_add_final_kfree
d41231272cba drm/repaper: Use drmm_add_final_kfree
9d3bf8891313 drm/vkms: Use drmm_add_final_kfree
faca8d3cc32f drm/vgem: Use drmm_add_final_kfree
dd7421f43362 drm/mcde: Use drmm_add_final_kfree
985789a21bf7 drm/tidss: Use drmm_add_final_kfree
ac75b8adf4be drm/v3d: Use drmm_add_final_kfree
fe66408e5fd3 drm/cirrus: Use drmm_add_final_kfree
169c2c69d925 drm/i915: Use drmm_add_final_kfree
3c1e123eb046 drm/qxl: Use drmm_add_final_kfree
1a69dd93ff0a drm/udl: Use drmm_add_final_kfree
533466d6d0ad drm/mipi_dbi: Use drmm_add_final_kfree in all drivers
e2a9e90fb1c7 drm: Set final_kfree in drm_dev_alloc
c5829952b42a drm: add managed resources tied to drm_device
0db382972a08 drm/i915: Don't clear drvdata in ->release
5c1fd37276a0 mm/sl[uo]b: export __kmalloc_track(_node)_caller

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17078/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
