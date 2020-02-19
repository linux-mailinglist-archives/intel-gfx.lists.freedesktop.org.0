Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 587031643BA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 12:54:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F9196E5B0;
	Wed, 19 Feb 2020 11:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 551346E5B0;
 Wed, 19 Feb 2020 11:54:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4CE46A47E2;
 Wed, 19 Feb 2020 11:54:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 19 Feb 2020 11:54:54 -0000
Message-ID: <158211329428.21062.4676035762487416026@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=5Fdevice_managed_resources?=
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

Series: drm_device managed resources
URL   : https://patchwork.freedesktop.org/series/73633/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7963 -> Patchwork_16618
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/index.html

Known issues
------------

  Here are the changes found in Patchwork_16618 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-icl-u3:          [PASS][1] -> [DMESG-WARN][2] ([i915#585]) +38 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_frontbuffer_tracking@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/fi-icl-u3/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - {fi-ehl-1}:         [INCOMPLETE][3] ([i915#937]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-ehl-1/igt@gem_exec_parallel@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/fi-ehl-1/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_active:
    - fi-icl-dsi:         [DMESG-FAIL][5] ([i915#765]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-dsi/igt@i915_selftest@live_active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/fi-icl-dsi/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][7] ([i915#424]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-s:           [DMESG-FAIL][9] ([i915#877]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-kbl-7500u:       [DMESG-FAIL][11] ([fdo#112406]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-kbl-7500u/igt@i915_selftest@live_gt_heartbeat.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/fi-kbl-7500u/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bsw-n3050:       [FAIL][13] ([i915#34]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][15] ([fdo#109315]) -> [SKIP][16] ([fdo#109315] / [i915#585])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][17] ([i915#579]) -> [SKIP][18] ([fdo#109271])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u3:          [SKIP][19] ([fdo#109284] / [fdo#111827]) -> [SKIP][20] ([fdo#109284] / [fdo#111827] / [i915#585])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u3:          [SKIP][21] ([fdo#109285]) -> [SKIP][22] ([fdo#109285] / [i915#585])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_force_connector_basic@force-load-detect.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/fi-icl-u3/igt@kms_force_connector_basic@force-load-detect.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (50 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-byt-n2820 fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7963 -> Patchwork_16618

  CI-20190529: 20190529
  CI_DRM_7963: e0d737598eb749378a5dc4ed3dfafc6f79d512cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16618: baf6b6b7b9692fab9d65b3d1459d20b5e16eeb30 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

baf6b6b7b969 drm: Add docs for managed resources
bd18a1acdca1 drm/udl: drop drm_driver.release hook
5c40275785f8 drm/udl: Drop explicit drm_mode_config_cleanup call
b6a40d07bba7 drm/mipi-dbi: Drop explicit drm_mode_config_cleanup call
74ef43fcef1b drm/mipi-dbi: Move drm_mode_config_init into mipi library
bf2a234a3957 drm/repaper: Drop explicit drm_mode_config_cleanup call
7c5bdd5a00b3 drm/gm12u320: Simplify upload work
915bcdb4e0ae drm/gm12u320: Use helpers for shutdown/suspend/resume
27cf675129b9 drm/gm12u320: Use devm_drm_dev_init
4f9b370f4d2b drm/gm12u320: More drmm_
23ca53ec2412 drm/tidss: Drop explicit drm_mode_config_cleanup call
ffc1c40c19db drm/mtk: Drop explicit drm_mode_config_cleanup call
500e01e42690 drm/shmob: Drop explicit drm_mode_config_cleanup call
0b9c31121f27 drm/stm: Drop explicit drm_mode_config_cleanup call
61318d398f4e drm/rockchip: Drop explicit drm_mode_config_cleanup call
894cc8a4ae26 drm/rcar-du: Drop explicit drm_mode_config_cleanup call
18975d3cbcc8 drm/pl111: Drop explicit drm_mode_config_cleanup call
e9af67dabd91 drm/meson: Drop explicit drm_mode_config_cleanup call
89b2135f4ca3 drm/mcde: More devm_drm_dev_init
ae3a84055194 drm/mcde: Drop explicit drm_mode_config_cleanup call
c727b16e0f8f drm/ingenic: Drop explicit drm_mode_config_cleanup call
d0a6cee1f22d drm/cirrus: Fully embrace devm_
91b2e8d4ddb0 drm/cirrus: Drop explicit drm_mode_config_cleanup call
32cc07da94c2 drm/bochs: Drop explicit drm_mode_config_cleanup
76e7952b72a6 drm/bochs: Remove leftover drm_atomic_helper_shutdown
23340b1d8ce3 drm: Manage drm_mode_config_init with drmm_
f95ba04b629e drm: Garbage collect drm_dev_fini
ee3f053e5805 drm: Manage drm_vblank_cleanup with drmm_
9671405e08a0 drm: Manage drm_gem_init with drmm_
1917e51b84f6 drm: manage drm_minor cleanup with drmm_
5e79da2824c6 drm: Use drmm_ for drm_dev_init cleanup
028bfa683312 drm: Handle dev->unique with drmm_
dd0f91d8ffee drm: Cleanups after drmm_add_final_kfree rollout
8faf6ae9f858 drm/<drivers>: Use drmm_add_final_kfree
c9576f3a393f drm/gm12u320: Use drmm_add_final_kfree
7f7340798ec9 drm/inigenic: Use drmm_add_final_kfree
d26af393fb38 drm/repaper: Use drmm_add_final_kfree
55caa9d14bf2 drm/vkms: Use drmm_add_final_kfree
4be113f9f517 drm/vgem: Use drmm_add_final_kfree
6b7e106ad130 drm/mcde: Use drmm_add_final_kfree
8978c7ce4cb1 drm/tidss: Use drmm_add_final_kfree
5774e47048f1 drm/v3d: Use drmm_add_final_kfree
88fd13f769d2 drm/cirrus: Use drmm_add_final_kfree
de874f4d1c0f drm/i915: Use drmm_add_final_kfree
e39595f35360 drm/qxl: Use drmm_add_final_kfree
2d7273b79215 drm/udl: Use drmm_add_final_kfree
1922e341743c drm/udl: Use drmm_add_final_kfree
910313be66e8 drm/mipi_dbi: Use drmm_add_final_kfree in all drivers
06b9d9ecc4bb drm: Set final_kfree in drm_dev_alloc
7ffeeed91dd5 drm: add managed resources tied to drm_device
5b8201a378ad drm/i915: Don't clear drvdata in ->release
913ef020101d mm/sl[uo]b: export __kmalloc_track(_node)_caller

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
