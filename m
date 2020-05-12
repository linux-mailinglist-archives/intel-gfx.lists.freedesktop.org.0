Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7FE1CF1DD
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 11:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72CD76E8BA;
	Tue, 12 May 2020 09:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 021196E8BA;
 Tue, 12 May 2020 09:45:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E509EA0BCB;
 Tue, 12 May 2020 09:45:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 12 May 2020 09:45:43 -0000
Message-ID: <158927674390.18143.14092880089956486156@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZG1h?=
 =?utf-8?q?-fence_lockdep_annotations?=
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

Series: dma-fence lockdep annotations
URL   : https://patchwork.freedesktop.org/series/77178/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8467 -> Patchwork_17631
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17631 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17631, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17631:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-byt-j1900:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-byt-j1900/igt@gem_close_race@basic-process.html
    - fi-hsw-4770:        [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-hsw-4770/igt@gem_close_race@basic-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-hsw-4770/igt@gem_close_race@basic-process.html
    - fi-byt-n2820:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-byt-n2820/igt@gem_close_race@basic-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-byt-n2820/igt@gem_close_race@basic-process.html

  * igt@gem_tiled_blits@basic:
    - fi-bwr-2160:        [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-bwr-2160/igt@gem_tiled_blits@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-bwr-2160/igt@gem_tiled_blits@basic.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-cfl-8700k/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-tgl-y/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-icl-u2/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-bwr-2160/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-byt-n2820/igt@runner@aborted.html
    - fi-icl-guc:         NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-icl-guc/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-hsw-4770/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-whl-u/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-bxt-dsi/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-byt-j1900/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-icl-y/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_busy@busy@all}:
    - fi-kbl-x1275:       [PASS][28] -> [DMESG-WARN][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-kbl-x1275/igt@gem_busy@busy@all.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-kbl-x1275/igt@gem_busy@busy@all.html
    - fi-cfl-8700k:       [PASS][30] -> [DMESG-WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-cfl-8700k/igt@gem_busy@busy@all.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-cfl-8700k/igt@gem_busy@busy@all.html
    - fi-tgl-y:           NOTRUN -> [DMESG-WARN][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-tgl-y/igt@gem_busy@busy@all.html
    - fi-skl-6600u:       [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-skl-6600u/igt@gem_busy@busy@all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-skl-6600u/igt@gem_busy@busy@all.html
    - fi-cfl-8109u:       [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-cfl-8109u/igt@gem_busy@busy@all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-cfl-8109u/igt@gem_busy@busy@all.html
    - fi-icl-u2:          [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-icl-u2/igt@gem_busy@busy@all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-icl-u2/igt@gem_busy@busy@all.html
    - {fi-tgl-dsi}:       [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-tgl-dsi/igt@gem_busy@busy@all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-tgl-dsi/igt@gem_busy@busy@all.html
    - fi-glk-dsi:         [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-glk-dsi/igt@gem_busy@busy@all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-glk-dsi/igt@gem_busy@busy@all.html
    - fi-kbl-8809g:       [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-kbl-8809g/igt@gem_busy@busy@all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-kbl-8809g/igt@gem_busy@busy@all.html
    - fi-skl-lmem:        [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-skl-lmem/igt@gem_busy@busy@all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-skl-lmem/igt@gem_busy@busy@all.html
    - fi-kbl-r:           [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-kbl-r/igt@gem_busy@busy@all.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-kbl-r/igt@gem_busy@busy@all.html
    - fi-bdw-5557u:       [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-bdw-5557u/igt@gem_busy@busy@all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-bdw-5557u/igt@gem_busy@busy@all.html
    - fi-icl-guc:         [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-icl-guc/igt@gem_busy@busy@all.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-icl-guc/igt@gem_busy@busy@all.html
    - fi-kbl-soraka:      [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-kbl-soraka/igt@gem_busy@busy@all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-kbl-soraka/igt@gem_busy@busy@all.html
    - {fi-ehl-1}:         [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-ehl-1/igt@gem_busy@busy@all.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-ehl-1/igt@gem_busy@busy@all.html
    - fi-kbl-7500u:       [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-kbl-7500u/igt@gem_busy@busy@all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-kbl-7500u/igt@gem_busy@busy@all.html
    - fi-kbl-guc:         [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-kbl-guc/igt@gem_busy@busy@all.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-kbl-guc/igt@gem_busy@busy@all.html
    - fi-whl-u:           [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-whl-u/igt@gem_busy@busy@all.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-whl-u/igt@gem_busy@busy@all.html
    - fi-cml-u2:          [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-cml-u2/igt@gem_busy@busy@all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-cml-u2/igt@gem_busy@busy@all.html
    - fi-bxt-dsi:         [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-bxt-dsi/igt@gem_busy@busy@all.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-bxt-dsi/igt@gem_busy@busy@all.html
    - {fi-tgl-u}:         [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-tgl-u/igt@gem_busy@busy@all.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-tgl-u/igt@gem_busy@busy@all.html
    - fi-cml-s:           [PASS][69] -> [DMESG-WARN][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-cml-s/igt@gem_busy@busy@all.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-cml-s/igt@gem_busy@busy@all.html
    - fi-cfl-guc:         [PASS][71] -> [DMESG-WARN][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-cfl-guc/igt@gem_busy@busy@all.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-cfl-guc/igt@gem_busy@busy@all.html
    - fi-icl-y:           [PASS][73] -> [DMESG-WARN][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-icl-y/igt@gem_busy@busy@all.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-icl-y/igt@gem_busy@busy@all.html
    - fi-skl-guc:         [PASS][75] -> [DMESG-WARN][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-skl-guc/igt@gem_busy@busy@all.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-skl-guc/igt@gem_busy@busy@all.html
    - fi-skl-6700k2:      [PASS][77] -> [DMESG-WARN][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-skl-6700k2/igt@gem_busy@busy@all.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-skl-6700k2/igt@gem_busy@busy@all.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][79]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][80]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-ehl-1/igt@runner@aborted.html
    - {fi-tgl-u}:         NOTRUN -> [FAIL][81]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17631 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_busy@basic@flip:
    - fi-snb-2600:        [PASS][82] -> [DMESG-WARN][83] ([i915#478])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-snb-2600/igt@kms_busy@basic@flip.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-snb-2600/igt@kms_busy@basic@flip.html
    - fi-snb-2520m:       [PASS][84] -> [DMESG-WARN][85] ([i915#478])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-snb-2520m/igt@kms_busy@basic@flip.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-snb-2520m/igt@kms_busy@basic@flip.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-ilk-650:         [PASS][86] -> [DMESG-WARN][87] ([i915#478])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8467/fi-ilk-650/igt@kms_frontbuffer_tracking@basic.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/fi-ilk-650/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478


Participating hosts (49 -> 44)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8467 -> Patchwork_17631

  CI-20190529: 20190529
  CI_DRM_8467: 1a0f0c378117fc90f421a692698ad85963ecdb3a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5646: 5a5a3162a7638b3ae38b6dc2545622c204d1b97c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17631: 1ef18223426e3805f05163795d2b054ca4294003 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1ef18223426e drm/i915: Annotate dma_fence_work
a13323043876 drm/amdgpu: gpu recovery does full modesets
c02a4f686bf5 Revert "drm/amdgpu: add fbdev suspend/resume on gpu reset"
e09083945d14 drm/amdgpu: use dma-fence annotations for gpu reset code
7679cc148b5a drm/scheduler: use dma-fence annotations in tdr work
786ff5f97ade drm/amdgpu/dc: Stop dma_resv_lock inversion in commit_tail
04c66458629c drm/amdgpu: DC also loves to allocate stuff where it shouldn't
6b777e9d4248 drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC in scheduler code
dc5507ddac48 drm/amdgpu: use dma-fence annotations in cs_submit()
3b8d20ef37ac drm/scheduler: use dma-fence annotations in main thread
277acf9f1d01 drm/amdgpu: add dma-fence annotations to atomic commit path
dc212ca24327 drm/atomic-helper: Add dma-fence annotations
fabebff847de drm/vblank: Annotate with dma-fence signalling section
2bad1b068255 drm/vkms: Annotate vblank timer
30c15f819d26 dma-fence: prime lockdep annotations
cbdd4bcec7e6 dma-fence: basic lockdep annotations
761b03bd55bc dma-fence: add might_sleep annotation to _wait()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17631/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
