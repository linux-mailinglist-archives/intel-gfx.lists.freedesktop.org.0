Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1636168C0A
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 03:33:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 947456F5B8;
	Sat, 22 Feb 2020 02:33:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 590D06F5B8;
 Sat, 22 Feb 2020 02:33:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50FEFA011A;
 Sat, 22 Feb 2020 02:33:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Sat, 22 Feb 2020 02:33:47 -0000
Message-ID: <158233882730.32576.1159926878486318956@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?_managed_resources=2C_v2?=
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

Series: drm managed resources, v2
URL   : https://patchwork.freedesktop.org/series/73794/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7984 -> Patchwork_16670
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/index.html

Known issues
------------

  Here are the changes found in Patchwork_16670 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][3] -> [TIMEOUT][4] ([fdo#112271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-s:           [PASS][5] -> [DMESG-FAIL][6] ([i915#877])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-skl-6600u:       [PASS][7] -> [TIMEOUT][8] ([fdo#111732] / [fdo#112271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-skl-6600u/igt@i915_selftest@live_gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/fi-skl-6600u/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [PASS][9] -> [DMESG-WARN][10] ([i915#585])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([CI#94] / [i915#402]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][13] ([CI#94] / [i915#402]) -> [PASS][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][15] ([i915#623]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][17] ([i915#44]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][19] ([fdo#109315] / [i915#585]) -> [SKIP][20] ([fdo#109315])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (48 -> 42)
------------------------------

  Additional (4): fi-byt-j1900 fi-skl-lmem fi-gdg-551 fi-bsw-nick 
  Missing    (10): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7984 -> Patchwork_16670

  CI-20190529: 20190529
  CI_DRM_7984: ab1d770e389d9407be633b5afbe6859e0072ca9d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16670: ab3b2e7372aa5a4877ebf82fe5f7cbd0d6531fda @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ab3b2e7372aa drm: Add docs for managed resources
f794dffa92be drm/udl: drop drm_driver.release hook
6cdacea9fe6a drm/udl: Drop explicit drm_mode_config_cleanup call
b2871f43d34d drm/mipi-dbi: Drop explicit drm_mode_config_cleanup call
24f5bcedc765 drm/mipi-dbi: Move drm_mode_config_init into mipi library
109c66428291 drm/repaper: Drop explicit drm_mode_config_cleanup call
cf47297b1c84 drm/gm12u320: Simplify upload work
a4990e78f019 drm/gm12u320: Use helpers for shutdown/suspend/resume
ea3a456a7564 drm/gm12u320: Use devm_drm_dev_init
eec1c7d28989 drm/gm12u320: More drmm_
05d198a35c44 drm/tidss: Drop explicit drm_mode_config_cleanup call
461984093aec drm/mtk: Drop explicit drm_mode_config_cleanup call
5d142f79fe80 drm/shmob: Drop explicit drm_mode_config_cleanup call
2da0997dffac drm/stm: Drop explicit drm_mode_config_cleanup call
78f50a8cea30 drm/rockchip: Drop explicit drm_mode_config_cleanup call
184140a92131 drm/rcar-du: Drop explicit drm_mode_config_cleanup call
40b7d0e47f14 drm/pl111: Drop explicit drm_mode_config_cleanup call
5a86e92f9254 drm/meson: Drop explicit drm_mode_config_cleanup call
1fb9a70e55cb drm/mcde: More devm_drm_dev_init
2c0b4754f10c drm/mcde: Drop explicit drm_mode_config_cleanup call
985fd2c905b2 drm/ingenic: Drop explicit drm_mode_config_cleanup call
51e2a1925360 drm/cirrus: Fully embrace devm_
0ba9a621bbb2 drm/cirrus: Drop explicit drm_mode_config_cleanup call
05c6c3200bb6 drm/bochs: Drop explicit drm_mode_config_cleanup
0b5c94e68094 drm/bochs: Remove leftover drm_atomic_helper_shutdown
f05dfeb9ddf2 drm: Manage drm_mode_config_init with drmm_
23a0d713e3a4 drm: Garbage collect drm_dev_fini
7434c3a76c39 drm: Manage drm_vblank_cleanup with drmm_
acf4f6b0c061 drm: Manage drm_gem_init with drmm_
f1608ba5ee0e drm: manage drm_minor cleanup with drmm_
e252681c9175 drm: Use drmm_ for drm_dev_init cleanup
3a402074a90d drm: Handle dev->unique with drmm_
7fa6b963d49f drm: Cleanups after drmm_add_final_kfree rollout
4bc52733c13a drm/<drivers>: Use drmm_add_final_kfree
cfc56a78d310 drm/gm12u320: Use drmm_add_final_kfree
25caa45d4c4c drm/inigenic: Use drmm_add_final_kfree
dd9ccae0565b drm/repaper: Use drmm_add_final_kfree
8508d5adeee0 drm/vkms: Use drmm_add_final_kfree
353f5cf59776 drm/vgem: Use drmm_add_final_kfree
887913ef4151 drm/mcde: Use drmm_add_final_kfree
2daae35ed335 drm/tidss: Use drmm_add_final_kfree
2e6a7e985729 drm/v3d: Use drmm_add_final_kfree
dcaf642df1d3 drm/cirrus: Use drmm_add_final_kfree
9c162f0327b0 drm/i915: Use drmm_add_final_kfree
671ab4640c01 drm/qxl: Use drmm_add_final_kfree
2fd445daeab3 drm/udl: Use drmm_add_final_kfree
3af3d1539d90 drm/mipi_dbi: Use drmm_add_final_kfree in all drivers
8133da7d60b2 drm: Set final_kfree in drm_dev_alloc
851da457d716 drm: add managed resources tied to drm_device
9c62343778a5 drm/i915: Don't clear drvdata in ->release
d65ee94cba2c mm/sl[uo]b: export __kmalloc_track(_node)_caller

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
