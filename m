Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEC93C5D6C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 15:38:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 337BD898F5;
	Mon, 12 Jul 2021 13:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 37E5A89AF3;
 Mon, 12 Jul 2021 13:38:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F6ECA00FD;
 Mon, 12 Jul 2021 13:38:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Mon, 12 Jul 2021 13:38:51 -0000
Message-ID: <162609713118.23768.18433878992635980447@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210712123321.3658-1-tzimmermann@suse.de>
In-Reply-To: <20210712123321.3658-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/vgem=3A_Restore_mmap_functionality_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0818759790=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0818759790==
Content-Type: multipart/alternative;
 boundary="===============0509412258468733621=="

--===============0509412258468733621==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/vgem: Restore mmap functionality (rev2)
URL   : https://patchwork.freedesktop.org/series/92373/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10333 -> Patchwork_20574
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20574 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20574, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20574:

### IGT changes ###

#### Possible regressions ####

  * igt@vgem_basic@unload:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8109u/igt@vgem_basic@unload.html
    - fi-tgl-y:           NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@vgem_basic@unload.html

  
#### Warnings ####

  * igt@vgem_basic@unload:
    - fi-kbl-7567u:       [INCOMPLETE][3] ([i915#3744]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-7567u/igt@vgem_basic@unload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-7567u/igt@vgem_basic@unload.html
    - fi-cml-s:           [INCOMPLETE][5] ([i915#3744]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-cml-s/igt@vgem_basic@unload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cml-s/igt@vgem_basic@unload.html
    - fi-elk-e7500:       [INCOMPLETE][7] ([i915#3744]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-elk-e7500/igt@vgem_basic@unload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-elk-e7500/igt@vgem_basic@unload.html
    - fi-skl-6700k2:      [INCOMPLETE][9] ([i915#3744]) -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-skl-6700k2/igt@vgem_basic@unload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-skl-6700k2/igt@vgem_basic@unload.html
    - fi-skl-guc:         [INCOMPLETE][11] ([i915#3744]) -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-skl-guc/igt@vgem_basic@unload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-skl-guc/igt@vgem_basic@unload.html
    - fi-cfl-guc:         [INCOMPLETE][13] ([i915#3744]) -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-cfl-guc/igt@vgem_basic@unload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-guc/igt@vgem_basic@unload.html
    - fi-hsw-4770:        [INCOMPLETE][15] ([i915#3744]) -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-hsw-4770/igt@vgem_basic@unload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-hsw-4770/igt@vgem_basic@unload.html
    - fi-ilk-650:         [INCOMPLETE][17] ([i915#3744]) -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-ilk-650/igt@vgem_basic@unload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-ilk-650/igt@vgem_basic@unload.html
    - fi-cml-u2:          [INCOMPLETE][19] ([i915#3744]) -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-cml-u2/igt@vgem_basic@unload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cml-u2/igt@vgem_basic@unload.html
    - fi-bxt-dsi:         [INCOMPLETE][21] ([i915#3744]) -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-bxt-dsi/igt@vgem_basic@unload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bxt-dsi/igt@vgem_basic@unload.html
    - fi-kbl-soraka:      [INCOMPLETE][23] ([i915#3744]) -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-soraka/igt@vgem_basic@unload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-soraka/igt@vgem_basic@unload.html
    - fi-bsw-nick:        [INCOMPLETE][25] ([i915#3744]) -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-bsw-nick/igt@vgem_basic@unload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bsw-nick/igt@vgem_basic@unload.html
    - fi-bdw-5557u:       [INCOMPLETE][27] ([i915#3744]) -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-bdw-5557u/igt@vgem_basic@unload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bdw-5557u/igt@vgem_basic@unload.html
    - fi-kbl-8809g:       [INCOMPLETE][29] ([i915#3744]) -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-8809g/igt@vgem_basic@unload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-8809g/igt@vgem_basic@unload.html
    - fi-kbl-r:           [INCOMPLETE][31] ([i915#3744]) -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-r/igt@vgem_basic@unload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-r/igt@vgem_basic@unload.html
    - fi-bwr-2160:        [INCOMPLETE][33] ([i915#3744]) -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-bwr-2160/igt@vgem_basic@unload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bwr-2160/igt@vgem_basic@unload.html
    - fi-bsw-kefka:       [INCOMPLETE][35] ([i915#3744]) -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-bsw-kefka/igt@vgem_basic@unload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bsw-kefka/igt@vgem_basic@unload.html
    - fi-kbl-guc:         [INCOMPLETE][37] ([i915#3744]) -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-guc/igt@vgem_basic@unload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-guc/igt@vgem_basic@unload.html
    - fi-kbl-7500u:       [INCOMPLETE][39] ([i915#3744]) -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-7500u/igt@vgem_basic@unload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-7500u/igt@vgem_basic@unload.html
    - fi-kbl-x1275:       [INCOMPLETE][41] ([i915#3744]) -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-x1275/igt@vgem_basic@unload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-x1275/igt@vgem_basic@unload.html
    - fi-pnv-d510:        [INCOMPLETE][43] ([i915#299] / [i915#3744]) -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-pnv-d510/igt@vgem_basic@unload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-pnv-d510/igt@vgem_basic@unload.html
    - fi-skl-6600u:       [INCOMPLETE][45] ([i915#3744]) -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-skl-6600u/igt@vgem_basic@unload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-skl-6600u/igt@vgem_basic@unload.html
    - fi-icl-y:           [INCOMPLETE][47] ([i915#3744]) -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-icl-y/igt@vgem_basic@unload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-icl-y/igt@vgem_basic@unload.html
    - fi-cfl-8700k:       [INCOMPLETE][49] ([i915#3744]) -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-cfl-8700k/igt@vgem_basic@unload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8700k/igt@vgem_basic@unload.html
    - fi-snb-2520m:       [INCOMPLETE][51] ([i915#3744]) -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-snb-2520m/igt@vgem_basic@unload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-snb-2520m/igt@vgem_basic@unload.html
    - fi-ivb-3770:        [INCOMPLETE][53] ([i915#3744]) -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-ivb-3770/igt@vgem_basic@unload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-ivb-3770/igt@vgem_basic@unload.html
    - fi-glk-dsi:         [INCOMPLETE][55] ([i915#3744]) -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-glk-dsi/igt@vgem_basic@unload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-glk-dsi/igt@vgem_basic@unload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@vgem_basic@unload:
    - {fi-ehl-2}:         [INCOMPLETE][57] ([i915#3744]) -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-ehl-2/igt@vgem_basic@unload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-ehl-2/igt@vgem_basic@unload.html
    - {fi-jsl-1}:         [INCOMPLETE][59] ([i915#3744]) -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-jsl-1/igt@vgem_basic@unload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-jsl-1/igt@vgem_basic@unload.html
    - {fi-tgl-1115g4}:    [INCOMPLETE][61] ([i915#3744]) -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-tgl-1115g4/igt@vgem_basic@unload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-1115g4/igt@vgem_basic@unload.html
    - {fi-hsw-gt1}:       [INCOMPLETE][63] ([i915#3744]) -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-hsw-gt1/igt@vgem_basic@unload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-hsw-gt1/igt@vgem_basic@unload.html
    - {fi-tgl-dsi}:       [INCOMPLETE][65] ([i915#3744]) -> [FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-tgl-dsi/igt@vgem_basic@unload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-dsi/igt@vgem_basic@unload.html

  
Known issues
------------

  Here are the changes found in Patchwork_20574 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-compute:
    - fi-cfl-guc:         NOTRUN -> [SKIP][67] ([fdo#109271]) +17 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html
    - fi-skl-guc:         NOTRUN -> [SKIP][68] ([fdo#109271]) +17 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-skl-guc/igt@amdgpu/amd_basic@cs-compute.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][69] ([fdo#109271]) +18 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-elk-e7500/igt@amdgpu/amd_basic@cs-compute.html

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-hsw-4770:        NOTRUN -> [SKIP][70] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-hsw-4770/igt@amdgpu/amd_basic@cs-gfx.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][71] ([fdo#109271]) +17 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-kbl-guc:         NOTRUN -> [SKIP][72] ([fdo#109271]) +17 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-guc/igt@amdgpu/amd_basic@cs-sdma.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][73] ([fdo#109271]) +24 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8109u/igt@amdgpu/amd_basic@cs-sdma.html
    - fi-kbl-7500u:       NOTRUN -> [SKIP][74] ([fdo#109271]) +17 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@amdgpu/amd_basic@memory-alloc:
    - fi-cml-u2:          NOTRUN -> [SKIP][75] ([fdo#109315]) +17 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cml-u2/igt@amdgpu/amd_basic@memory-alloc.html

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][76] ([fdo#109271]) +17 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html
    - fi-glk-dsi:         NOTRUN -> [SKIP][77] ([fdo#109271]) +17 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-glk-dsi/igt@amdgpu/amd_basic@query-info.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][78] ([fdo#109271])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-8809g/igt@amdgpu/amd_basic@query-info.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][79] ([fdo#109271])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-soraka/igt@amdgpu/amd_basic@query-info.html
    - fi-tgl-y:           NOTRUN -> [SKIP][80] ([fdo#109315])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-icl-y:           NOTRUN -> [SKIP][81] ([fdo#109315]) +17 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][82] ([fdo#109271]) +17 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html
    - fi-bdw-5557u:       NOTRUN -> [SKIP][83] ([fdo#109271]) +17 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_basic@userptr:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][84] ([fdo#109271]) +17 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bxt-dsi/igt@amdgpu/amd_basic@userptr.html

  * igt@amdgpu/amd_cs_nop@fork-compute0:
    - fi-ivb-3770:        NOTRUN -> [SKIP][85] ([fdo#109271]) +18 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-ivb-3770/igt@amdgpu/amd_cs_nop@fork-compute0.html

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-tgl-y:           NOTRUN -> [SKIP][86] ([fdo#109315] / [i915#2575]) +16 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@nop-compute0:
    - fi-ilk-650:         NOTRUN -> [SKIP][87] ([fdo#109271]) +18 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html
    - fi-cml-s:           NOTRUN -> [SKIP][88] ([fdo#109315]) +17 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cml-s/igt@amdgpu/amd_cs_nop@nop-compute0.html

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - fi-bwr-2160:        NOTRUN -> [SKIP][89] ([fdo#109271]) +18 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bwr-2160/igt@amdgpu/amd_cs_nop@nop-gfx0.html

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-r:           NOTRUN -> [SKIP][90] ([fdo#109271]) +17 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-skl-6600u:       NOTRUN -> [SKIP][91] ([fdo#109271]) +17 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][92] ([fdo#109271]) +17 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][93] ([fdo#109271]) +17 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][94] ([fdo#109271]) +17 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][95] ([fdo#109271]) +18 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-pnv-d510/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-snb-2520m:       NOTRUN -> [SKIP][96] ([fdo#109271]) +18 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-y:           NOTRUN -> [SKIP][97] ([i915#2190])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2190])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-y:           NOTRUN -> [DMESG-FAIL][99] ([i915#2373])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-y:           NOTRUN -> [DMESG-FAIL][100] ([i915#1759])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][101] ([i915#1886] / [i915#2291])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][102] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8109u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-tgl-y:           NOTRUN -> [SKIP][103] ([fdo#111827]) +8 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-y:           NOTRUN -> [SKIP][104] ([fdo#109285])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#533])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           NOTRUN -> [SKIP][106] ([i915#3301])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cfl-8109u:       [INCOMPLETE][107] ([i915#155]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [FAIL][109] ([i915#3449]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3449]: https://gitlab.freedesktop.org/drm/intel/issues/3449
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [i915#3744]: https://gitlab.freedesktop.org/drm/intel/issues/3744
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (39 -> 39)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (1): fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10333 -> Patchwork_20574

  CI-20190529: 20190529
  CI_DRM_10333: 138708ec9f303e98fded4239cafa0577d1f47030 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6134: cd63c83e23789eb194d38b8d272247a88122f2f6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20574: a1ecfc5d71bb340328f4f59f391d92f2fc27bddb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a1ecfc5d71bb drm/vgem: Restore mmap functionality

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/index.html

--===============0509412258468733621==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/vgem: Restore mmap functionality (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92373/">https://patchwork.freedesktop.org/series/92373/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10333 -&gt; Patchwork_20574</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20574 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20574, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20574:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8109u/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-7567u/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-7567u/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-cml-s/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cml-s/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-elk-e7500/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-elk-e7500/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-skl-6700k2/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-skl-6700k2/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-skl-guc/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-skl-guc/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-cfl-guc/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-guc/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-hsw-4770/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-hsw-4770/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-ilk-650/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-ilk-650/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-cml-u2/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cml-u2/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-bxt-dsi/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bxt-dsi/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-soraka/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-soraka/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-bsw-nick/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bsw-nick/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-bdw-5557u/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bdw-5557u/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-8809g/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-8809g/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-r/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-r/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-bwr-2160/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bwr-2160/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-bsw-kefka/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bsw-kefka/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-guc/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-guc/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-7500u/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-7500u/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-x1275/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-x1275/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-pnv-d510/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-pnv-d510/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-skl-6600u/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-skl-6600u/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-icl-y/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-icl-y/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-cfl-8700k/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8700k/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-snb-2520m/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-snb-2520m/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-ivb-3770/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-ivb-3770/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-glk-dsi/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-glk-dsi/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-ehl-2/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-ehl-2/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-jsl-1/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-jsl-1/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-tgl-1115g4/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-1115g4/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-hsw-gt1/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-hsw-gt1/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-tgl-dsi/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-dsi/igt@vgem_basic@unload.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20574 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-compute:</p>
<ul>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-skl-guc/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-elk-e7500/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-hsw-4770/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-guc/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8109u/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +24 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@memory-alloc:</p>
<ul>
<li>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cml-u2/igt@amdgpu/amd_basic@memory-alloc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-glk-dsi/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-8809g/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-soraka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bxt-dsi/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-compute0:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-ivb-3770/igt@amdgpu/amd_cs_nop@fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-compute0:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cml-s/igt@amdgpu/amd_cs_nop@nop-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-bwr-2160/igt@amdgpu/amd_cs_nop@nop-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-pnv-d510/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1759">i915#1759</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8109u/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-tgl-y/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10333/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3449">i915#3449</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20574/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (1): fi-tgl-y <br />
  Missing    (1): fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10333 -&gt; Patchwork_20574</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10333: 138708ec9f303e98fded4239cafa0577d1f47030 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6134: cd63c83e23789eb194d38b8d272247a88122f2f6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20574: a1ecfc5d71bb340328f4f59f391d92f2fc27bddb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a1ecfc5d71bb drm/vgem: Restore mmap functionality</p>

</body>
</html>

--===============0509412258468733621==--

--===============0818759790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0818759790==--
