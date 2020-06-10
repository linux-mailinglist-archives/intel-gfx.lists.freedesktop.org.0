Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A86C81F5D41
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 22:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC02C6E860;
	Wed, 10 Jun 2020 20:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 33FDA6E860;
 Wed, 10 Jun 2020 20:35:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D69EA363D;
 Wed, 10 Jun 2020 20:35:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 10 Jun 2020 20:35:36 -0000
Message-ID: <159182133615.20176.7157278350431313834@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZG1h?=
 =?utf-8?q?-fence_lockdep_annotations=2C_round_2_=28rev3=29?=
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

Series: dma-fence lockdep annotations, round 2 (rev3)
URL   : https://patchwork.freedesktop.org/series/77986/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8611 -> Patchwork_17923
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17923 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17923, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17923:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all:
    - fi-kbl-x1275:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-kbl-x1275/igt@gem_busy@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-kbl-x1275/igt@gem_busy@busy@all.html
    - fi-cfl-8700k:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-cfl-8700k/igt@gem_busy@busy@all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-cfl-8700k/igt@gem_busy@busy@all.html
    - fi-skl-6600u:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-skl-6600u/igt@gem_busy@busy@all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-skl-6600u/igt@gem_busy@busy@all.html
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-cfl-8109u/igt@gem_busy@busy@all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-cfl-8109u/igt@gem_busy@busy@all.html
    - fi-icl-u2:          [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-icl-u2/igt@gem_busy@busy@all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-icl-u2/igt@gem_busy@busy@all.html
    - fi-glk-dsi:         [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-glk-dsi/igt@gem_busy@busy@all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-glk-dsi/igt@gem_busy@busy@all.html
    - fi-skl-lmem:        [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-skl-lmem/igt@gem_busy@busy@all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-skl-lmem/igt@gem_busy@busy@all.html
    - fi-kbl-r:           [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-kbl-r/igt@gem_busy@busy@all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-kbl-r/igt@gem_busy@busy@all.html
    - fi-bdw-5557u:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-bdw-5557u/igt@gem_busy@busy@all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-bdw-5557u/igt@gem_busy@busy@all.html
    - fi-icl-guc:         [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-icl-guc/igt@gem_busy@busy@all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-icl-guc/igt@gem_busy@busy@all.html
    - fi-kbl-soraka:      [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-kbl-soraka/igt@gem_busy@busy@all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-kbl-soraka/igt@gem_busy@busy@all.html
    - fi-kbl-7500u:       [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-kbl-7500u/igt@gem_busy@busy@all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-kbl-7500u/igt@gem_busy@busy@all.html
    - fi-kbl-guc:         [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-kbl-guc/igt@gem_busy@busy@all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-kbl-guc/igt@gem_busy@busy@all.html
    - fi-whl-u:           [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-whl-u/igt@gem_busy@busy@all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-whl-u/igt@gem_busy@busy@all.html
    - fi-cml-u2:          [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-cml-u2/igt@gem_busy@busy@all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-cml-u2/igt@gem_busy@busy@all.html
    - fi-bxt-dsi:         [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-bxt-dsi/igt@gem_busy@busy@all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-bxt-dsi/igt@gem_busy@busy@all.html
    - fi-cml-s:           [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-cml-s/igt@gem_busy@busy@all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-cml-s/igt@gem_busy@busy@all.html
    - fi-cfl-guc:         [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-cfl-guc/igt@gem_busy@busy@all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-cfl-guc/igt@gem_busy@busy@all.html
    - fi-icl-y:           [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-icl-y/igt@gem_busy@busy@all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-icl-y/igt@gem_busy@busy@all.html
    - fi-skl-guc:         [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-skl-guc/igt@gem_busy@busy@all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-skl-guc/igt@gem_busy@busy@all.html
    - fi-skl-6700k2:      [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-skl-6700k2/igt@gem_busy@busy@all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-skl-6700k2/igt@gem_busy@busy@all.html
    - fi-tgl-u2:          NOTRUN -> [DMESG-WARN][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-tgl-u2/igt@gem_busy@busy@all.html

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][44] -> [DMESG-WARN][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-byt-j1900:       [PASS][46] -> [DMESG-WARN][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-byt-j1900/igt@gem_close_race@basic-process.html
    - fi-hsw-4770:        [PASS][48] -> [DMESG-WARN][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-hsw-4770/igt@gem_close_race@basic-process.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-hsw-4770/igt@gem_close_race@basic-process.html
    - fi-byt-n2820:       [PASS][50] -> [DMESG-WARN][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-byt-n2820/igt@gem_close_race@basic-process.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-byt-n2820/igt@gem_close_race@basic-process.html

  * igt@kms_busy@basic@flip:
    - fi-snb-2600:        [PASS][52] -> [DMESG-WARN][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-snb-2600/igt@kms_busy@basic@flip.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-snb-2600/igt@kms_busy@basic@flip.html
    - fi-snb-2520m:       [PASS][54] -> [DMESG-WARN][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-snb-2520m/igt@kms_busy@basic@flip.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-snb-2520m/igt@kms_busy@basic@flip.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-ilk-650:         [PASS][56] -> [DMESG-WARN][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-ilk-650/igt@kms_frontbuffer_tracking@basic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-ilk-650/igt@kms_frontbuffer_tracking@basic.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       NOTRUN -> [FAIL][58]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][59]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][60]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-icl-u2/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][61]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][62]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-bdw-5557u/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][63]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-byt-n2820/igt@runner@aborted.html
    - fi-icl-guc:         NOTRUN -> [FAIL][64]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-icl-guc/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-hsw-4770/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-snb-2600/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-whl-u/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][68]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][69]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][70]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-bxt-dsi/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-byt-j1900/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][73]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][74]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-icl-y/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][75]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-tgl-u2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_busy@busy@all:
    - {fi-tgl-dsi}:       [PASS][76] -> [DMESG-WARN][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-tgl-dsi/igt@gem_busy@busy@all.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-tgl-dsi/igt@gem_busy@busy@all.html
    - {fi-ehl-1}:         [PASS][78] -> [DMESG-WARN][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-ehl-1/igt@gem_busy@busy@all.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-ehl-1/igt@gem_busy@busy@all.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][80]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][81]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17923 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-soraka:      [PASS][82] -> [DMESG-WARN][83] ([i915#1982])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982


Participating hosts (48 -> 42)
------------------------------

  Additional (1): fi-tgl-u2 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8611 -> Patchwork_17923

  CI-20190529: 20190529
  CI_DRM_8611: b87354483fa40fef86da19ade9bfe9349f0cf6d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5702: d16ad07e7f2a028e14d61f570931c87fa5ce404c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17923: c8130cec52d56bce2b4f09cd005c0f7d68806ac0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c8130cec52d5 drm/i915: Annotate dma_fence_work
c40ab1c8276b drm/amdgpu: gpu recovery does full modesets
f08fc8bb8383 Revert "drm/amdgpu: add fbdev suspend/resume on gpu reset"
718c082d14cb drm/amdgpu: use dma-fence annotations for gpu reset code
d1361c491f79 drm/scheduler: use dma-fence annotations in tdr work
2dbc37297b21 drm/amdgpu/dc: Stop dma_resv_lock inversion in commit_tail
18403b85aff4 drm/amdgpu: DC also loves to allocate stuff where it shouldn't
805637835bf6 drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC in scheduler code
d05e15f8ad27 drm/amdgpu: use dma-fence annotations in cs_submit()
e86ec566effc drm/scheduler: use dma-fence annotations in main thread
812e8d183ea1 drm/amdgpu: add dma-fence annotations to atomic commit path
49852bebf34d drm/atomic-helper: Add dma-fence annotations
74cf66d0c736 drm/vblank: Annotate with dma-fence signalling section
abea167ccc2c drm/vkms: Annotate vblank timer
e85757129eef dma-fence: prime lockdep annotations
4a356e005b80 dma-fence: basic lockdep annotations
464bebc66202 dma-buf: minor doc touch-ups
b91d6e9b2219 mm: Track mmu notifiers in fs_reclaim_acquire/release

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17923/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
