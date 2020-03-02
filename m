Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB87D176841
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 00:34:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7266F6E1BB;
	Mon,  2 Mar 2020 23:34:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A0DF56E1BB;
 Mon,  2 Mar 2020 23:34:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9988AA3C0D;
 Mon,  2 Mar 2020 23:34:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 02 Mar 2020 23:34:16 -0000
Message-ID: <158319205660.30646.6490445754980247042@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=5Fdevice_managed_resources_=28rev2=29?=
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

Series: drm_device managed resources (rev2)
URL   : https://patchwork.freedesktop.org/series/73633/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8049 -> Patchwork_16787
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16787/index.html

Known issues
------------

  Here are the changes found in Patchwork_16787 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-bxt-dsi:         [INCOMPLETE][1] ([fdo#103927]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/fi-bxt-dsi/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16787/fi-bxt-dsi/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][3] ([CI#94]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16787/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rpm@module-reload:
    - {fi-kbl-7560u}:     [SKIP][5] ([fdo#109271]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/fi-kbl-7560u/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16787/fi-kbl-7560u/igt@i915_pm_rpm@module-reload.html

  * igt@kms_addfb_basic@addfb25-yf-tiled:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/fi-tgl-y/igt@kms_addfb_basic@addfb25-yf-tiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16787/fi-tgl-y/igt@kms_addfb_basic@addfb25-yf-tiled.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][9] ([fdo#111407]) -> [FAIL][10] ([fdo#111096] / [i915#323])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8049/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16787/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (51 -> 44)
------------------------------

  Additional (1): fi-byt-j1900 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8049 -> Patchwork_16787

  CI-20190529: 20190529
  CI_DRM_8049: 7d5c1a40d4e68b642cf581e92435ccbf90e7482a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16787: a9ea8169e6bcc7ed2677f7b8a8d6b30ac2153da1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a9ea8169e6bc drm: Add docs for managed resources
b6c9192d985b drm/udl: drop drm_driver.release hook
b28ecec1c2ae drm/udl: Drop explicit drm_mode_config_cleanup call
8a9ebb524b11 drm/mipi-dbi: Drop explicit drm_mode_config_cleanup call
5dd3048786b4 drm/mipi-dbi: Move drm_mode_config_init into mipi library
c3e372063ec2 drm/repaper: Drop explicit drm_mode_config_cleanup call
417ecbb4a7fd drm/gm12u320: Simplify upload work
231ede3a34ad drm/gm12u320: Use helpers for shutdown/suspend/resume
a7ec4684c8d7 drm/gm12u320: Use devm_drm_dev_init
f4b7f65317d6 drm/gm12u320: More drmm_
733f1da62e1c drm/tidss: Drop explicit drm_mode_config_cleanup call
1d303f706791 drm/mtk: Drop explicit drm_mode_config_cleanup call
4fc9513bc1aa drm/shmob: Drop explicit drm_mode_config_cleanup call
968ab14c5fb0 drm/stm: Drop explicit drm_mode_config_cleanup call
f5d0537b280d drm/rockchip: Drop explicit drm_mode_config_cleanup call
e3c1e62a1b2a drm/rcar-du: Drop explicit drm_mode_config_cleanup call
f1f253097907 drm/pl111: Drop explicit drm_mode_config_cleanup call
b52b8ed118f4 drm/meson: Drop explicit drm_mode_config_cleanup call
6b64cde8d542 drm/mcde: More devm_drm_dev_init
82a25112b68a drm/mcde: Drop explicit drm_mode_config_cleanup call
2879abe6bd06 drm/ingenic: Drop explicit drm_mode_config_cleanup call
f116ed0edc8a drm/cirrus: Fully embrace devm_
c276d6303fc6 drm/cirrus: Drop explicit drm_mode_config_cleanup call
61d4b5e28677 drm/bochs: Drop explicit drm_mode_config_cleanup
4b0a472b4c70 drm/bochs: Remove leftover drm_atomic_helper_shutdown
97017c3d3b89 drm: Manage drm_mode_config_init with drmm_
442520c06e95 drm: Garbage collect drm_dev_fini
40c88d55104d drm: Manage drm_vblank_cleanup with drmm_
624214a11b88 drm: Manage drm_gem_init with drmm_
df3a798e77be drm: manage drm_minor cleanup with drmm_
25df60198485 drm: Use drmm_ for drm_dev_init cleanup
3610ca3981a7 drm: Handle dev->unique with drmm_
64c058a60eeb drm: Cleanups after drmm_add_final_kfree rollout
635a5f2aef57 drm/<drivers>: Use drmm_add_final_kfree
32df587f2129 drm/gm12u320: Use drmm_add_final_kfree
ef1bda2bfa8d drm/ingenic: Use drmm_add_final_kfree
41519ea24a3b drm/repaper: Use drmm_add_final_kfree
7135c72221bb drm/vkms: Use drmm_add_final_kfree
a5a558d5eaf4 drm/vgem: Use drmm_add_final_kfree
b728dda4a7c4 drm/mcde: Use drmm_add_final_kfree
3ab166181a34 drm/tidss: Use drmm_add_final_kfree
67deb073d634 drm/v3d: Use drmm_add_final_kfree
b33e6a1607d3 drm/cirrus: Use drmm_add_final_kfree
5c05d30a3743 drm/i915: Use drmm_add_final_kfree
7b882fa3ec4d drm/qxl: Use drmm_add_final_kfree
a3055dd77a23 drm/udl: Use drmm_add_final_kfree
eed3a3b8d7ea drm/mipi_dbi: Use drmm_add_final_kfree in all drivers
891285ff2ae5 drm: Set final_kfree in drm_dev_alloc
16e1c6586e26 drm: add managed resources tied to drm_device
dcaf5118a71e drm/i915: Don't clear drvdata in ->release
7620b1305ad8 mm/sl[uo]b: export __kmalloc_track(_node)_caller

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16787/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
