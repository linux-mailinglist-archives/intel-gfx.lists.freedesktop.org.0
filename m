Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 686DB6AB306
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Mar 2023 23:48:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BAE910E025;
	Sun,  5 Mar 2023 22:48:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A12AB10E025;
 Sun,  5 Mar 2023 22:48:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96813A0169;
 Sun,  5 Mar 2023 22:48:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4280732128707172571=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Osipenko" <dmitry.osipenko@collabora.com>
Date: Sun, 05 Mar 2023 22:48:25 -0000
Message-ID: <167805650558.20600.8854454028646770075@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230305221011.1404672-1-dmitry.osipenko@collabora.com>
In-Reply-To: <20230305221011.1404672-1-dmitry.osipenko@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_generic_memory_shrinker_to_VirtIO-GPU_and_Panfrost_DRM_drivers?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============4280732128707172571==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add generic memory shrinker to VirtIO-GPU and Panfrost DRM drivers
URL   : https://patchwork.freedesktop.org/series/114671/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12811 -> Patchwork_114671v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/index.html

Participating hosts (37 -> 38)
------------------------------

  Additional (1): fi-kbl-soraka 

Known issues
------------

  Here are the changes found in Patchwork_114671v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271]) +16 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - bat-dg2-11:         NOTRUN -> [SKIP][3] ([i915#5354])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@vgem_basic@dmabuf-mmap:
    - bat-atsm-1:         [PASS][4] -> [ABORT][5] ([i915#8242])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-atsm-1/igt@vgem_basic@dmabuf-mmap.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-atsm-1/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-guc:         [PASS][6] -> [ABORT][7] ([i915#8242])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html
    - bat-jsl-3:          [PASS][8] -> [ABORT][9] ([i915#8242])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-jsl-3/igt@vgem_basic@dmabuf-mmap.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-jsl-3/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg2-9:          [PASS][10] -> [ABORT][11] ([i915#8242])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-dg2-9/igt@vgem_basic@dmabuf-mmap.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-dg2-9/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-x1275:       [PASS][12] -> [ABORT][13] ([i915#8242])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-kbl-x1275/igt@vgem_basic@dmabuf-mmap.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-kbl-x1275/igt@vgem_basic@dmabuf-mmap.html
    - fi-hsw-4770:        [PASS][14] -> [ABORT][15] ([i915#8242])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-8109u:       [PASS][16] -> [ABORT][17] ([i915#8242])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html
    - bat-rpls-2:         [PASS][18] -> [ABORT][19] ([i915#8242])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-rpls-2/igt@vgem_basic@dmabuf-mmap.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-rpls-2/igt@vgem_basic@dmabuf-mmap.html
    - fi-ivb-3770:        [PASS][20] -> [ABORT][21] ([i915#8242])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg2-8:          [PASS][22] -> [ABORT][23] ([i915#8242])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-dg2-8/igt@vgem_basic@dmabuf-mmap.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-dg2-8/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-guc:         [PASS][24] -> [ABORT][25] ([i915#8242])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html
    - fi-ilk-650:         [PASS][26] -> [ABORT][27] ([i915#8242])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html
    - bat-jsl-1:          [PASS][28] -> [ABORT][29] ([i915#8242])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-jsl-1/igt@vgem_basic@dmabuf-mmap.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-jsl-1/igt@vgem_basic@dmabuf-mmap.html
    - fi-blb-e6850:       [PASS][30] -> [ABORT][31] ([i915#8242])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-blb-e6850/igt@vgem_basic@dmabuf-mmap.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-blb-e6850/igt@vgem_basic@dmabuf-mmap.html
    - fi-bsw-n3050:       [PASS][32] -> [ABORT][33] ([i915#8242])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-bsw-n3050/igt@vgem_basic@dmabuf-mmap.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-bsw-n3050/igt@vgem_basic@dmabuf-mmap.html
    - bat-rpls-1:         [PASS][34] -> [ABORT][35] ([i915#8242])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-rpls-1/igt@vgem_basic@dmabuf-mmap.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-rpls-1/igt@vgem_basic@dmabuf-mmap.html
    - bat-adlp-6:         [PASS][36] -> [ABORT][37] ([i915#8242])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-adlp-6/igt@vgem_basic@dmabuf-mmap.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-adlp-6/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-6600u:       [PASS][38] -> [ABORT][39] ([i915#8242])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html
    - fi-apl-guc:         [PASS][40] -> [ABORT][41] ([i915#8242])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-apl-guc/igt@vgem_basic@dmabuf-mmap.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-apl-guc/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg1-5:          [PASS][42] -> [ABORT][43] ([i915#8242])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-dg1-5/igt@vgem_basic@dmabuf-mmap.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-dg1-5/igt@vgem_basic@dmabuf-mmap.html
    - fi-pnv-d510:        [PASS][44] -> [ABORT][45] ([i915#8242])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg1-7:          [PASS][46] -> [ABORT][47] ([i915#8242])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-dg1-7/igt@vgem_basic@dmabuf-mmap.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-dg1-7/igt@vgem_basic@dmabuf-mmap.html
    - fi-glk-j4005:       [PASS][48] -> [ABORT][49] ([i915#8242])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-glk-j4005/igt@vgem_basic@dmabuf-mmap.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-glk-j4005/igt@vgem_basic@dmabuf-mmap.html
    - bat-adlp-9:         [PASS][50] -> [ABORT][51] ([i915#8242])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-adlp-9/igt@vgem_basic@dmabuf-mmap.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-adlp-9/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-guc:         [PASS][52] -> [ABORT][53] ([i915#8242])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg2-11:         [PASS][54] -> [ABORT][55] ([i915#8242])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-dg2-11/igt@vgem_basic@dmabuf-mmap.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-dg2-11/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-soraka:      NOTRUN -> [ABORT][56] ([i915#8242])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-7567u:       [PASS][57] -> [ABORT][58] ([i915#8242])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html
    - bat-adln-1:         [PASS][59] -> [ABORT][60] ([i915#8242])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-adln-1/igt@vgem_basic@dmabuf-mmap.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-adln-1/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-8700k:       [PASS][61] -> [ABORT][62] ([i915#8242])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html
    - fi-elk-e7500:       [PASS][63] -> [ABORT][64] ([i915#8242])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html
    - fi-bsw-nick:        [PASS][65] -> [ABORT][66] ([i915#8242])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html
    - bat-adlm-1:         [PASS][67] -> [ABORT][68] ([i915#8242])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-adlm-1/igt@vgem_basic@dmabuf-mmap.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-adlm-1/igt@vgem_basic@dmabuf-mmap.html
    - bat-rplp-1:         [PASS][69] -> [ABORT][70] ([i915#8242])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-rplp-1/igt@vgem_basic@dmabuf-mmap.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-rplp-1/igt@vgem_basic@dmabuf-mmap.html
    - fi-rkl-11600:       [PASS][71] -> [ABORT][72] ([i915#8242])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-rkl-11600/igt@vgem_basic@dmabuf-mmap.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-rkl-11600/igt@vgem_basic@dmabuf-mmap.html
    - fi-tgl-1115g4:      [PASS][73] -> [ABORT][74] ([i915#8242])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-tgl-1115g4/igt@vgem_basic@dmabuf-mmap.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-tgl-1115g4/igt@vgem_basic@dmabuf-mmap.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#8242]: https://gitlab.freedesktop.org/drm/intel/issues/8242


Build changes
-------------

  * Linux: CI_DRM_12811 -> Patchwork_114671v1

  CI-20190529: 20190529
  CI_DRM_12811: d6c40ddf351b03bb540ec218717ef1a3c14dd468 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7180: b6b1ceb4fc4d8f83a9540e4628a6c2648514bb19 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114671v1: d6c40ddf351b03bb540ec218717ef1a3c14dd468 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

59d62b58e3ed drm/panfrost: Switch to generic memory shrinker
ed07f16dbcbd drm/virtio: Support memory shrinking
c6ac65513766 drm/gem: Export drm_gem_pin/unpin()
30bd7ee514eb drm/shmem-helper: Export drm_gem_shmem_get_pages_sgt_locked()
90301e90c673 drm/shmem-helper: Remove obsoleted is_iomem test
c4f661f6b9d8 drm/shmem-helper: Add memory shrinker
3e73d884ff7b drm/shmem-helper: Factor out unpinning part from drm_gem_shmem_purge()
874a12428ad9 drm/shmem-helper: Switch drm_gem_shmem_vmap/vunmap to use pin/unpin
4e5f5340c1d0 drm/shmem-helper: Add pages_pin_count field
be88c4dfe262 drm/shmem-helper: Factor out pages alloc/release from drm_gem_shmem_get/put_pages()
99e7366865d8 drm/shmem-helper: Switch to reservation lock

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/index.html

--===============4280732128707172571==
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
<tr><td><b>Series:</b></td><td>Add generic memory shrinker to VirtIO-GPU and Panfrost DRM drivers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114671/">https://patchwork.freedesktop.org/series/114671/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12811 -&gt; Patchwork_114671v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/index.html</p>
<h2>Participating hosts (37 -&gt; 38)</h2>
<p>Additional (1): fi-kbl-soraka </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114671v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-atsm-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-atsm-1/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-jsl-3/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-jsl-3/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-dg2-9/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-dg2-9/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-kbl-x1275/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-kbl-x1275/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-rpls-2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-rpls-2/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-dg2-8/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-dg2-8/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-jsl-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-jsl-1/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-blb-e6850/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-blb-e6850/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-bsw-n3050/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-bsw-n3050/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-rpls-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-rpls-1/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-adlp-6/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-adlp-6/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-apl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-apl-guc/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-dg1-5/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-dg1-5/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-dg1-7/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-dg1-7/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-glk-j4005/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-glk-j4005/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-adlp-9/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-adlp-9/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-dg2-11/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-dg2-11/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-kbl-soraka/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-adln-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-adln-1/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-adlm-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-adlm-1/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/bat-rplp-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/bat-rplp-1/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-rkl-11600/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-rkl-11600/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12811/fi-tgl-1115g4/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v1/fi-tgl-1115g4/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12811 -&gt; Patchwork_114671v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12811: d6c40ddf351b03bb540ec218717ef1a3c14dd468 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7180: b6b1ceb4fc4d8f83a9540e4628a6c2648514bb19 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114671v1: d6c40ddf351b03bb540ec218717ef1a3c14dd468 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>59d62b58e3ed drm/panfrost: Switch to generic memory shrinker<br />
ed07f16dbcbd drm/virtio: Support memory shrinking<br />
c6ac65513766 drm/gem: Export drm_gem_pin/unpin()<br />
30bd7ee514eb drm/shmem-helper: Export drm_gem_shmem_get_pages_sgt_locked()<br />
90301e90c673 drm/shmem-helper: Remove obsoleted is_iomem test<br />
c4f661f6b9d8 drm/shmem-helper: Add memory shrinker<br />
3e73d884ff7b drm/shmem-helper: Factor out unpinning part from drm_gem_shmem_purge()<br />
874a12428ad9 drm/shmem-helper: Switch drm_gem_shmem_vmap/vunmap to use pin/unpin<br />
4e5f5340c1d0 drm/shmem-helper: Add pages_pin_count field<br />
be88c4dfe262 drm/shmem-helper: Factor out pages alloc/release from drm_gem_shmem_get/put_pages()<br />
99e7366865d8 drm/shmem-helper: Switch to reservation lock</p>

</body>
</html>

--===============4280732128707172571==--
