Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 792CC218AF4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 17:15:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAE1F6E063;
	Wed,  8 Jul 2020 15:15:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 542D36E063;
 Wed,  8 Jul 2020 15:15:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E090A47DF;
 Wed,  8 Jul 2020 15:15:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 08 Jul 2020 15:15:29 -0000
Message-ID: <159422132928.3840.10778261978572730666@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZG1h?=
 =?utf-8?q?-fence_annotations=2C_round_3_=28rev4=29?=
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

Series: dma-fence annotations, round 3 (rev4)
URL   : https://patchwork.freedesktop.org/series/79212/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8715 -> Patchwork_18108
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/index.html

Known issues
------------

  Here are the changes found in Patchwork_18108 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-apl-guc/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-apl-guc/igt@i915_module_load@reload.html
    - fi-kbl-soraka:      [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-kbl-soraka/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-n3050:       [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
    - fi-byt-j1900:       [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-tgl-y/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-tgl-y/igt@kms_busy@basic@flip.html

  * igt@vgem_basic@dmabuf-fence-before:
    - fi-tgl-y:           [PASS][13] -> [DMESG-WARN][14] ([i915#402]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html

  
#### Possible fixes ####

  * igt@gem_exec_store@basic:
    - fi-tgl-y:           [DMESG-WARN][15] ([i915#402]) -> [PASS][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-tgl-y/igt@gem_exec_store@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-tgl-y/igt@gem_exec_store@basic.html

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [DMESG-WARN][17] ([i915#1982]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-tgl-u2/igt@i915_module_load@reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-u2:          [INCOMPLETE][19] ([i915#1932] / [i915#2045]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][21] ([i915#1982]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@b-dsi1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@b-dsi1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [DMESG-WARN][23] ([i915#1982]) -> [PASS][24] +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][25] ([i915#62] / [i915#95]) -> [SKIP][26] ([fdo#109271])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([i915#62] / [i915#92]) -> [DMESG-WARN][28] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][29] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][30] ([i915#62] / [i915#92]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1932]: https://gitlab.freedesktop.org/drm/intel/issues/1932
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2045]: https://gitlab.freedesktop.org/drm/intel/issues/2045
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 37)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8715 -> Patchwork_18108

  CI-20190529: 20190529
  CI_DRM_8715: 76c2d43437601608d75f61a9eb6cf3a7aae5e02b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5728: 6988eebf78e9ce9746b8c2b7d21cb4174d6623a9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18108: ae3b151a12e8c286d7e9662d99a7748b752245de @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ae3b151a12e8 drm/amdgpu: gpu recovery does full modesets
7356174d08f1 Revert "drm/amdgpu: add fbdev suspend/resume on gpu reset"
63ba1f44b57a drm/amdgpu: use dma-fence annotations for gpu reset code
d719490f44aa drm/scheduler: use dma-fence annotations in tdr work
ba811ca16a82 drm/amdgpu/dc: Stop dma_resv_lock inversion in commit_tail
fcd17dbe5bd0 drm/amdgpu: DC also loves to allocate stuff where it shouldn't
638685715960 drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC in scheduler code
eabbd8e2991d drm/amdgpu: use dma-fence annotations in cs_submit()
b9b516836545 drm/scheduler: use dma-fence annotations in main thread
53e56008bec6 drm/atomic-helper: Add dma-fence annotations
23f8fbc6d2c3 drm/tilcdc: Use standard drm_atomic_helper_commit
210b307a72de drm/tidss: Annotate dma-fence critical section in commit path
bb577d2f1fe5 drm/tegra: Annotate dma-fence critical section in commit path
92d70000efa9 drm/rcar-du: Annotate dma-fence critical section in commit path
de27ae218fde drm/omapdrm: Annotate dma-fence critical section in commit path
5ee21a1c8241 drm/imx: Annotate dma-fence critical section in commit path
324a0d205f55 drm/atmel: Use drm_atomic_helper_commit
ddc4ff34e5cd drm/malidp: Annotate dma-fence critical section in commit path
3385e7391e3d drm/komdea: Annotate dma-fence critical section in commit path
4f101a23805c drm/amdgpu: add dma-fence annotations to atomic commit path
02ba87b23736 drm/vblank: Annotate with dma-fence signalling section
7370ac9d9804 drm/vkms: Annotate vblank timer
243aa816da5b dma-buf.rst: Document why idenfinite fences are a bad idea
da3d6f1684b1 dma-fence: prime lockdep annotations
633d2f5ee456 dma-fence: basic lockdep annotations

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18108/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
