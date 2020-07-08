Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB0D218649
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 13:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E496E8B5;
	Wed,  8 Jul 2020 11:37:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 17F1A6E8B5;
 Wed,  8 Jul 2020 11:37:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0918FA66C9;
 Wed,  8 Jul 2020 11:37:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 08 Jul 2020 11:37:53 -0000
Message-ID: <159420827300.3838.848458514643070644@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZG1h?=
 =?utf-8?q?-fence_annotations=2C_round_3_=28rev3=29?=
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

Series: dma-fence annotations, round 3 (rev3)
URL   : https://patchwork.freedesktop.org/series/79212/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8714 -> Patchwork_18104
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18104 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18104, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18104:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-skl-guc/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_18104 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][3] -> [FAIL][4] ([i915#1888])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-byt-j1900/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-kbl-soraka/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-kbl-soraka/igt@i915_module_load@reload.html
    - fi-tgl-u2:          [PASS][9] -> [DMESG-WARN][10] ([i915#402])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-tgl-u2/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-tgl-u2/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-bsw-kefka/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-bsw-kefka/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [PASS][13] -> [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-dsi:         [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-tgl-y:           [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@vgem_basic@create:
    - fi-tgl-y:           [PASS][21] -> [DMESG-WARN][22] ([i915#402]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-tgl-y/igt@vgem_basic@create.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-tgl-y/igt@vgem_basic@create.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][23] ([i915#1888]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][25] ([i915#1982]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-tgl-dsi/igt@i915_module_load@reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-tgl-dsi/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-whl-u:           [DMESG-WARN][27] ([i915#95]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - fi-tgl-y:           [DMESG-WARN][29] ([i915#402]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-y:           [DMESG-WARN][31] ([i915#1982]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-tgl-y/igt@kms_busy@basic@flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-tgl-y/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][33] ([i915#1982]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - {fi-kbl-7560u}:     [DMESG-WARN][35] ([i915#1982]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [DMESG-WARN][37] ([i915#1982]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][39] ([i915#62]) -> [SKIP][40] ([fdo#109271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][41] ([i915#62] / [i915#92]) -> [DMESG-WARN][42] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][43] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][44] ([i915#62] / [i915#92]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 37)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8714 -> Patchwork_18104

  CI-20190529: 20190529
  CI_DRM_8714: d8410c7e293b66004f3f6ae4ba59b2183ebdd7e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5727: 90254c14f4e68bec9d4a114ddf039075f3c1a30c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18104: 47ed173fd0b837840bc9093dd4dfa37380958223 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

47ed173fd0b8 drm/amdgpu: gpu recovery does full modesets
6aa853e24521 Revert "drm/amdgpu: add fbdev suspend/resume on gpu reset"
5fdd54c6974d drm/amdgpu: use dma-fence annotations for gpu reset code
29c3190fa73b drm/scheduler: use dma-fence annotations in tdr work
07032cd8c5f2 drm/amdgpu/dc: Stop dma_resv_lock inversion in commit_tail
3e2b4524f35d drm/amdgpu: DC also loves to allocate stuff where it shouldn't
08a1abeacf54 drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC in scheduler code
f319fa901c28 drm/amdgpu: use dma-fence annotations in cs_submit()
74339207897b drm/scheduler: use dma-fence annotations in main thread
b1f0acbfec34 drm/atomic-helper: Add dma-fence annotations
303a50f11c03 drm/tilcdc: Use standard drm_atomic_helper_commit
ea09fe39c55f drm/tidss: Annotate dma-fence critical section in commit path
b3989beb2077 drm/tegra: Annotate dma-fence critical section in commit path
af70ed03628c drm/rcar-du: Annotate dma-fence critical section in commit path
2b096a5c1792 drm/omapdrm: Annotate dma-fence critical section in commit path
2982112bb0d2 drm/imx: Annotate dma-fence critical section in commit path
bf7d0350b99a drm/atmel: Use drm_atomic_helper_commit
bad6ba61c1ca drm/malidp: Annotate dma-fence critical section in commit path
138045f656fe drm/komdea: Annotate dma-fence critical section in commit path
ba04ea411e5f drm/amdgpu: add dma-fence annotations to atomic commit path
d3b4c50ee800 drm/vblank: Annotate with dma-fence signalling section
4b497ae3a35a drm/vkms: Annotate vblank timer
578a233f0b40 dma-buf.rst: Document why idenfinite fences are a bad idea
ee3fa130ea12 dma-fence: prime lockdep annotations
5b91575f3093 dma-fence: basic lockdep annotations

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18104/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
