Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD4E21A0C7
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 15:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF9E6EA6B;
	Thu,  9 Jul 2020 13:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 28C886E0CA;
 Thu,  9 Jul 2020 13:26:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 23F2FA47DA;
 Thu,  9 Jul 2020 13:26:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 09 Jul 2020 13:26:13 -0000
Message-ID: <159430117311.31092.7588712272379295272@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZG1h?=
 =?utf-8?q?-fence_annotations=2C_round_3_=28rev6=29?=
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

Series: dma-fence annotations, round 3 (rev6)
URL   : https://patchwork.freedesktop.org/series/79212/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8718 -> Patchwork_18122
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/index.html

Known issues
------------

  Here are the changes found in Patchwork_18122 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-apl-guc/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-apl-guc/igt@i915_module_load@reload.html
    - fi-kbl-soraka:      [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-kbl-soraka/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-n3050:       [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-u2:          [PASS][9] -> [DMESG-WARN][10] ([i915#402])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([i915#402]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][13] ([i915#1888]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_pm:
    - fi-apl-guc:         [DMESG-FAIL][17] ([i915#1751]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-apl-guc/igt@i915_selftest@live@gt_pm.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-y:           [DMESG-WARN][19] ([i915#1982]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-tgl-y/igt@kms_busy@basic@flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-tgl-y/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [DMESG-WARN][21] ([i915#1982]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - {fi-kbl-7560u}:     [DMESG-WARN][23] ([i915#1982]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-plain-flip@d-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][25] ([i915#1982]) -> [PASS][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-tgl-dsi/igt@kms_flip@basic-plain-flip@d-dsi1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-tgl-dsi/igt@kms_flip@basic-plain-flip@d-dsi1.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [DMESG-WARN][27] ([i915#402]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-tgl-y/igt@vgem_basic@setversion.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][29] ([i915#62] / [i915#92]) -> [DMESG-WARN][30] ([i915#1982] / [i915#62] / [i915#92])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][31] ([fdo#109271]) -> [FAIL][32] ([i915#579])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-kbl-x1275:       [DMESG-WARN][33] ([i915#62] / [i915#92]) -> [DMESG-WARN][34] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-x1275:       [DMESG-WARN][35] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][36] ([i915#62] / [i915#92]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1751]: https://gitlab.freedesktop.org/drm/intel/issues/1751
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 37)
------------------------------

  Additional (1): fi-ilk-650 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8718 -> Patchwork_18122

  CI-20190529: 20190529
  CI_DRM_8718: 1bab8016997931971e986af01de252120896af95 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5729: a048d54f58dd70b07dbeb4541b273ec230ddb586 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18122: 971910d9209711dd2626c2788611dad949653205 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

971910d92097 drm/amdgpu: gpu recovery does full modesets
77e2e55426dd Revert "drm/amdgpu: add fbdev suspend/resume on gpu reset"
11967393ce15 drm/amdgpu: use dma-fence annotations for gpu reset code
5f09a1d7a2d8 drm/scheduler: use dma-fence annotations in tdr work
26eae69dc709 drm/amdgpu/dc: Stop dma_resv_lock inversion in commit_tail
6660214e85f5 drm/amdgpu: DC also loves to allocate stuff where it shouldn't
d86363507ad2 drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC in scheduler code
5e5dbfd6d1ec drm/amdgpu: use dma-fence annotations in cs_submit()
f332e8b0c75a drm/scheduler: use dma-fence annotations in main thread
39dc5478117b drm/atomic-helper: Add dma-fence annotations
3d04ddeaf40d drm/tilcdc: Use standard drm_atomic_helper_commit
ee1ca3dd92f2 drm/tidss: Annotate dma-fence critical section in commit path
627ff2bada55 drm/tegra: Annotate dma-fence critical section in commit path
49148da69b74 drm/rcar-du: Annotate dma-fence critical section in commit path
d525fd5dc000 drm/omapdrm: Annotate dma-fence critical section in commit path
5b7ea987488e drm/imx: Annotate dma-fence critical section in commit path
75d8ed548bbf drm/atmel: Use drm_atomic_helper_commit
8925fab7b0c5 drm/malidp: Annotate dma-fence critical section in commit path
5d76f227525e drm/komdea: Annotate dma-fence critical section in commit path
37fe1fb7e37d drm/amdgpu: add dma-fence annotations to atomic commit path
855bf7ca2525 drm/vblank: Annotate with dma-fence signalling section
f5a16e131fbb drm/vkms: Annotate vblank timer
235ccf350083 drm/virtio: Remove open-coded commit-tail function
550e03fe8f5d dma-fence: prime lockdep annotations
6993be4b66a4 dma-fence: basic lockdep annotations

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18122/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
