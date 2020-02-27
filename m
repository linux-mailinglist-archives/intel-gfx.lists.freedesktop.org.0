Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A867172BFF
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 00:08:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5717D6E0A6;
	Thu, 27 Feb 2020 23:08:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6365F6E0A6;
 Thu, 27 Feb 2020 23:08:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5B0D8A00EF;
 Thu, 27 Feb 2020 23:08:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 27 Feb 2020 23:08:19 -0000
Message-ID: <158284489934.29656.13024548781635372187@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?_managed_resources=2C_v3?=
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

Series: drm managed resources, v3
URL   : https://patchwork.freedesktop.org/series/74035/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8022 -> Patchwork_16742
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16742:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/fi-tgl-dsi/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16742 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [PASS][2] -> [INCOMPLETE][3] ([i915#189])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][4] -> [FAIL][5] ([fdo#111407])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [DMESG-FAIL][6] ([i915#623]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [FAIL][8] ([i915#217]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623


Participating hosts (49 -> 43)
------------------------------

  Additional (2): fi-kbl-7560u fi-byt-n2820 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-bsw-cyan fi-ctg-p8600 fi-icl-guc fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8022 -> Patchwork_16742

  CI-20190529: 20190529
  CI_DRM_8022: 45f1af19e4d4bf8a6ecea2e52760f45f4dc2f64b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16742: 67fab894610f2849a9949cac4f50dc9be5bd6a73 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

67fab894610f drm: Add docs for managed resources
c09b8c858e24 drm/udl: drop drm_driver.release hook
053dcfac7bf0 drm/udl: Drop explicit drm_mode_config_cleanup call
7a29cbef7a7b drm/mipi-dbi: Drop explicit drm_mode_config_cleanup call
8628c73484eb drm/mipi-dbi: Move drm_mode_config_init into mipi library
33199c7a5cf5 drm/repaper: Drop explicit drm_mode_config_cleanup call
a41c4ee063a1 drm/gm12u320: Simplify upload work
cd471d8320bd drm/gm12u320: Use helpers for shutdown/suspend/resume
734d1f20a3b2 drm/gm12u320: Use devm_drm_dev_init
91c6c16477b1 drm/gm12u320: More drmm_
7b918b7f8a7f drm/tidss: Drop explicit drm_mode_config_cleanup call
3706744a0632 drm/mtk: Drop explicit drm_mode_config_cleanup call
c62efc2f5505 drm/shmob: Drop explicit drm_mode_config_cleanup call
638c408cdf87 drm/stm: Drop explicit drm_mode_config_cleanup call
437802fa34d9 drm/rockchip: Drop explicit drm_mode_config_cleanup call
8a0990f57696 drm/rcar-du: Drop explicit drm_mode_config_cleanup call
c3d58b97f693 drm/pl111: Drop explicit drm_mode_config_cleanup call
53b2850f0e91 drm/meson: Drop explicit drm_mode_config_cleanup call
550d75a30b0d drm/mcde: More devm_drm_dev_init
db4cb6a2a297 drm/mcde: Drop explicit drm_mode_config_cleanup call
9de2210215ab drm/ingenic: Drop explicit drm_mode_config_cleanup call
32849bdd46dd drm/cirrus: Fully embrace devm_
3e1422d7b395 drm/cirrus: Drop explicit drm_mode_config_cleanup call
032c477b8535 drm/bochs: Drop explicit drm_mode_config_cleanup
bae61fb84f02 drm/bochs: Remove leftover drm_atomic_helper_shutdown
ff4b1e9c0cd5 drm: Manage drm_mode_config_init with drmm_
f8aa03194190 drm: Garbage collect drm_dev_fini
1403b664b8f3 drm: Manage drm_vblank_cleanup with drmm_
8439bc5631d4 drm: Manage drm_gem_init with drmm_
fcd5293f48f1 drm: manage drm_minor cleanup with drmm_
cec56e603a98 drm: Use drmm_ for drm_dev_init cleanup
8ed861f9ca43 drm: Handle dev->unique with drmm_
1133300b929e drm: Cleanups after drmm_add_final_kfree rollout
29dca11dea40 drm/<drivers>: Use drmm_add_final_kfree
734047b9fe9a drm/gm12u320: Use drmm_add_final_kfree
198c8d676e70 drm/inigenic: Use drmm_add_final_kfree
2c53d8f7aa76 drm/repaper: Use drmm_add_final_kfree
23caadaaa4e4 drm/vkms: Use drmm_add_final_kfree
2aa7aae5379e drm/vgem: Use drmm_add_final_kfree
8a45f0ff3cfc drm/mcde: Use drmm_add_final_kfree
e5cce3035cf1 drm/tidss: Use drmm_add_final_kfree
485c70a70cc9 drm/v3d: Use drmm_add_final_kfree
c6d78a4558ca drm/cirrus: Use drmm_add_final_kfree
b8609f6d42b0 drm/i915: Use drmm_add_final_kfree
d83f6589c0c8 drm/qxl: Use drmm_add_final_kfree
baa47cdbcf93 drm/udl: Use drmm_add_final_kfree
c20ad9c632a2 drm/mipi_dbi: Use drmm_add_final_kfree in all drivers
bfa0eec45347 drm: Set final_kfree in drm_dev_alloc
2ac9ab98ee4f drm: add managed resources tied to drm_device
a13910588767 drm/i915: Don't clear drvdata in ->release
e3a16eee86fc mm/sl[uo]b: export __kmalloc_track(_node)_caller

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
