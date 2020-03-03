Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6BF17728B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 10:37:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1C656EA5F;
	Tue,  3 Mar 2020 09:37:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C19F26EA5F;
 Tue,  3 Mar 2020 09:37:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AFC55A41FB;
 Tue,  3 Mar 2020 09:37:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 03 Mar 2020 09:37:53 -0000
Message-ID: <158322827369.15378.135943144055872803@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=5Fdevice_managed_resources_=28rev4=29?=
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

Series: drm_device managed resources (rev4)
URL   : https://patchwork.freedesktop.org/series/73633/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8050 -> Patchwork_16793
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/index.html

Known issues
------------

  Here are the changes found in Patchwork_16793 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_self_import@basic-with_one_bo:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][3] ([fdo#108569]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/fi-icl-y/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][5] ([fdo#111096] / [i915#323]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_self_import@basic-with_fd_dup:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8050/fi-tgl-y/igt@prime_self_import@basic-with_fd_dup.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/fi-tgl-y/igt@prime_self_import@basic-with_fd_dup.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 44)
------------------------------

  Additional (5): fi-snb-2520m fi-gdg-551 fi-elk-e7500 fi-bsw-kefka fi-kbl-7560u 
  Missing    (7): fi-hsw-4200u fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8050 -> Patchwork_16793

  CI-20190529: 20190529
  CI_DRM_8050: 422d76f5669ce8b7cd0c579f60628877159cbe7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5484: 91b36b61e76901a2bd09fe93ac7bf7b8a60f258c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16793: b37c1e68565a05cdc7806b5dd628ac9654d4dfa2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b37c1e68565a drm: Add docs for managed resources
2f53ee241f1c drm/udl: drop drm_driver.release hook
d8406021b0c3 drm/udl: Drop explicit drm_mode_config_cleanup call
0e9bb354a0ab drm/mipi-dbi: Drop explicit drm_mode_config_cleanup call
751f18ea9df4 drm/mipi-dbi: Move drm_mode_config_init into mipi library
697c6956d43e drm/repaper: Drop explicit drm_mode_config_cleanup call
24a0ec563e5c drm/gm12u320: Simplify upload work
2eee0915b4ab drm/gm12u320: Use helpers for shutdown/suspend/resume
d93a707c9db4 drm/gm12u320: Use devm_drm_dev_init
61be121ef9bc drm/gm12u320: More drmm_
91d9b9298ac5 drm/tidss: Drop explicit drm_mode_config_cleanup call
550a18bc12be drm/mtk: Drop explicit drm_mode_config_cleanup call
30a766ff9f49 drm/shmob: Drop explicit drm_mode_config_cleanup call
86ec06cd8e8d drm/stm: Drop explicit drm_mode_config_cleanup call
6e39cbd160f3 drm/rockchip: Drop explicit drm_mode_config_cleanup call
4f84e9725e14 drm/rcar-du: Drop explicit drm_mode_config_cleanup call
cdbb5952a3a0 drm/pl111: Drop explicit drm_mode_config_cleanup call
b7750a2807b9 drm/meson: Drop explicit drm_mode_config_cleanup call
d98b421819cd drm/mcde: More devm_drm_dev_init
d99f2c9bc8ae drm/mcde: Drop explicit drm_mode_config_cleanup call
c94a7a7b4702 drm/ingenic: Drop explicit drm_mode_config_cleanup call
79325480f1a0 drm/cirrus: Fully embrace devm_
bcd2c5a8c4a2 drm/cirrus: Drop explicit drm_mode_config_cleanup call
a92b8584ecb3 drm/bochs: Drop explicit drm_mode_config_cleanup
58efbf01eb3f drm/bochs: Remove leftover drm_atomic_helper_shutdown
c7f9cefe5513 drm: Manage drm_mode_config_init with drmm_
a6655c6e7373 drm: Garbage collect drm_dev_fini
93f3b1c0408f drm: Manage drm_vblank_cleanup with drmm_
62e022fb467b drm: Manage drm_gem_init with drmm_
aee8779732c4 drm: manage drm_minor cleanup with drmm_
4136e6a32b4a drm: Use drmm_ for drm_dev_init cleanup
1fc8b76f5efb drm: Handle dev->unique with drmm_
2868482e7745 drm: Cleanups after drmm_add_final_kfree rollout
3c5ec01ba982 drm/<drivers>: Use drmm_add_final_kfree
bab5eb6feb59 drm/gm12u320: Use drmm_add_final_kfree
dc089b681437 drm/ingenic: Use drmm_add_final_kfree
28bcc13349df drm/repaper: Use drmm_add_final_kfree
243de5fa1919 drm/vkms: Use drmm_add_final_kfree
e0b703d6641e drm/vgem: Use drmm_add_final_kfree
df7adfe9852e drm/mcde: Use drmm_add_final_kfree
30d6738fde04 drm/tidss: Use drmm_add_final_kfree
8c97307e3650 drm/v3d: Use drmm_add_final_kfree
68143c9a033a drm/cirrus: Use drmm_add_final_kfree
946124ee3824 drm/i915: Use drmm_add_final_kfree
57c0f2606a10 drm/qxl: Use drmm_add_final_kfree
f12563484560 drm/udl: Use drmm_add_final_kfree
22061e4c2c0c drm/mipi_dbi: Use drmm_add_final_kfree in all drivers
d38c16d36c52 drm: Set final_kfree in drm_dev_alloc
4a8a3301fcf3 drm: add managed resources tied to drm_device
0cd3dec077a0 drm/i915: Don't clear drvdata in ->release
32847e747c9f mm/sl[uo]b: export __kmalloc_track(_node)_caller

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16793/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
