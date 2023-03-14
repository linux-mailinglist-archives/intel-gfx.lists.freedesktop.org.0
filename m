Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7366B88DB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 04:08:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4140A10E6C6;
	Tue, 14 Mar 2023 03:08:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 522B310E171;
 Tue, 14 Mar 2023 03:08:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 495F5AADF0;
 Tue, 14 Mar 2023 03:08:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1323951532137896325=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Osipenko" <dmitry.osipenko@collabora.com>
Date: Tue, 14 Mar 2023 03:08:49 -0000
Message-ID: <167876332925.26413.10565860062887249786@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230314022659.1816246-1-dmitry.osipenko@collabora.com>
In-Reply-To: <20230314022659.1816246-1-dmitry.osipenko@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_generic_memory_shrinker_to_VirtIO-GPU_and_Panfrost_DRM_drivers?=
 =?utf-8?q?_=28rev2=29?=
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

--===============1323951532137896325==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add generic memory shrinker to VirtIO-GPU and Panfrost DRM drivers (rev2)
URL   : https://patchwork.freedesktop.org/series/114671/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12853 -> Patchwork_114671v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/index.html

Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-kbl-soraka bat-atsm-1 bat-dg1-6 fi-bsw-n3050 

Known issues
------------

  Here are the changes found in Patchwork_114671v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@vgem_basic@dmabuf-mmap:
    - fi-cfl-guc:         [PASS][1] -> [ABORT][2] ([i915#8242])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html
    - bat-jsl-3:          [PASS][3] -> [ABORT][4] ([i915#8242])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-jsl-3/igt@vgem_basic@dmabuf-mmap.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-jsl-3/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg2-9:          [PASS][5] -> [ABORT][6] ([i915#8242])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-dg2-9/igt@vgem_basic@dmabuf-mmap.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-dg2-9/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-x1275:       [PASS][7] -> [ABORT][8] ([i915#8242])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-kbl-x1275/igt@vgem_basic@dmabuf-mmap.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-kbl-x1275/igt@vgem_basic@dmabuf-mmap.html
    - fi-hsw-4770:        [PASS][9] -> [ABORT][10] ([i915#8242])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-8109u:       [PASS][11] -> [ABORT][12] ([i915#8242])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html
    - bat-rpls-2:         [PASS][13] -> [ABORT][14] ([i915#8242])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-rpls-2/igt@vgem_basic@dmabuf-mmap.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-rpls-2/igt@vgem_basic@dmabuf-mmap.html
    - fi-ivb-3770:        [PASS][15] -> [ABORT][16] ([i915#8242])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg2-8:          [PASS][17] -> [ABORT][18] ([i915#8242])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-dg2-8/igt@vgem_basic@dmabuf-mmap.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-dg2-8/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-guc:         [PASS][19] -> [ABORT][20] ([i915#8242])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html
    - fi-ilk-650:         [PASS][21] -> [ABORT][22] ([i915#8242])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html
    - bat-jsl-1:          [PASS][23] -> [ABORT][24] ([i915#8242])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-jsl-1/igt@vgem_basic@dmabuf-mmap.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-jsl-1/igt@vgem_basic@dmabuf-mmap.html
    - bat-rpls-1:         [PASS][25] -> [ABORT][26] ([i915#8242])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-rpls-1/igt@vgem_basic@dmabuf-mmap.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-rpls-1/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-6600u:       [PASS][27] -> [ABORT][28] ([i915#8242])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html
    - bat-adls-5:         [PASS][29] -> [ABORT][30] ([i915#8242])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-adls-5/igt@vgem_basic@dmabuf-mmap.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-adls-5/igt@vgem_basic@dmabuf-mmap.html
    - fi-apl-guc:         [PASS][31] -> [ABORT][32] ([i915#8242])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-apl-guc/igt@vgem_basic@dmabuf-mmap.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-apl-guc/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg1-5:          [PASS][33] -> [ABORT][34] ([i915#8242])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-dg1-5/igt@vgem_basic@dmabuf-mmap.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-dg1-5/igt@vgem_basic@dmabuf-mmap.html
    - fi-pnv-d510:        [PASS][35] -> [ABORT][36] ([i915#8242])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg1-7:          [PASS][37] -> [ABORT][38] ([i915#8242])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-dg1-7/igt@vgem_basic@dmabuf-mmap.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-dg1-7/igt@vgem_basic@dmabuf-mmap.html
    - fi-glk-j4005:       [PASS][39] -> [ABORT][40] ([i915#8242])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-glk-j4005/igt@vgem_basic@dmabuf-mmap.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-glk-j4005/igt@vgem_basic@dmabuf-mmap.html
    - bat-adlp-9:         [PASS][41] -> [ABORT][42] ([i915#8242])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-adlp-9/igt@vgem_basic@dmabuf-mmap.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-adlp-9/igt@vgem_basic@dmabuf-mmap.html
    - fi-skl-guc:         [PASS][43] -> [ABORT][44] ([i915#8242])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg2-11:         [PASS][45] -> [ABORT][46] ([i915#8242])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-dg2-11/igt@vgem_basic@dmabuf-mmap.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-dg2-11/igt@vgem_basic@dmabuf-mmap.html
    - fi-kbl-7567u:       [PASS][47] -> [ABORT][48] ([i915#8242])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html
    - bat-adln-1:         [PASS][49] -> [ABORT][50] ([i915#8242])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-adln-1/igt@vgem_basic@dmabuf-mmap.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-adln-1/igt@vgem_basic@dmabuf-mmap.html
    - fi-cfl-8700k:       [PASS][51] -> [ABORT][52] ([i915#8242])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html
    - fi-elk-e7500:       [PASS][53] -> [ABORT][54] ([i915#8242])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html
    - fi-bsw-nick:        [PASS][55] -> [ABORT][56] ([i915#8242])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html
    - bat-adlm-1:         [PASS][57] -> [ABORT][58] ([i915#8242])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-adlm-1/igt@vgem_basic@dmabuf-mmap.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-adlm-1/igt@vgem_basic@dmabuf-mmap.html
    - bat-rplp-1:         [PASS][59] -> [ABORT][60] ([i915#8242])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-rplp-1/igt@vgem_basic@dmabuf-mmap.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-rplp-1/igt@vgem_basic@dmabuf-mmap.html
    - fi-rkl-11600:       [PASS][61] -> [ABORT][62] ([i915#8242])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-rkl-11600/igt@vgem_basic@dmabuf-mmap.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-rkl-11600/igt@vgem_basic@dmabuf-mmap.html
    - fi-tgl-1115g4:      [PASS][63] -> [ABORT][64] ([i915#8242])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-tgl-1115g4/igt@vgem_basic@dmabuf-mmap.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-tgl-1115g4/igt@vgem_basic@dmabuf-mmap.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#8242]: https://gitlab.freedesktop.org/drm/intel/issues/8242


Build changes
-------------

  * Linux: CI_DRM_12853 -> Patchwork_114671v2

  CI-20190529: 20190529
  CI_DRM_12853: 7cfe22e6f72f5328dded16b38e215ff290e8d7f8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7192: 18beb515ff127e64302a491ed321125b5116aa23 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114671v2: 7cfe22e6f72f5328dded16b38e215ff290e8d7f8 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ddf9b34400b2 drm/panfrost: Switch to generic memory shrinker
6f4c07f93931 drm/virtio: Support memory shrinking
da996c7b61c8 drm/shmem-helper: Export drm_gem_shmem_get_pages_sgt_locked()
df7516f34991 drm/shmem-helper: Remove obsoleted is_iomem test
8e37ad0afbfd drm/shmem-helper: Add memory shrinker
b63f13ee91e8 drm/shmem-helper: Factor out unpinning part from drm_gem_shmem_purge()
fac41122b1aa drm/shmem-helper: Switch drm_gem_shmem_vmap/vunmap to use pin/unpin
95f44cfb096b drm/shmem-helper: Add pages_pin_count field
b13989274f35 drm/shmem-helper: Factor out pages alloc/release from drm_gem_shmem_get/put_pages()
1223f9bc9406 drm/shmem-helper: Switch to reservation lock

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/index.html

--===============1323951532137896325==
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
<tr><td><b>Series:</b></td><td>Add generic memory shrinker to VirtIO-GPU and Panfrost DRM drivers (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114671/">https://patchwork.freedesktop.org/series/114671/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12853 -&gt; Patchwork_114671v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/index.html</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): fi-kbl-soraka bat-atsm-1 bat-dg1-6 fi-bsw-n3050 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114671v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-cfl-guc/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-jsl-3/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-jsl-3/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-dg2-9/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-dg2-9/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-kbl-x1275/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-kbl-x1275/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-hsw-4770/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-cfl-8109u/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-rpls-2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-rpls-2/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-ivb-3770/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-dg2-8/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-dg2-8/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-kbl-guc/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-ilk-650/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-jsl-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-jsl-1/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-rpls-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-rpls-1/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-skl-6600u/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-adls-5/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-adls-5/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-apl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-apl-guc/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-dg1-5/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-dg1-5/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-pnv-d510/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-dg1-7/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-dg1-7/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-glk-j4005/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-glk-j4005/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-adlp-9/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-adlp-9/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-skl-guc/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-dg2-11/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-dg2-11/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-kbl-7567u/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-adln-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-adln-1/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-cfl-8700k/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-elk-e7500/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-bsw-nick/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-adlm-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-adlm-1/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/bat-rplp-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/bat-rplp-1/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-rkl-11600/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-rkl-11600/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/fi-tgl-1115g4/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/fi-tgl-1115g4/igt@vgem_basic@dmabuf-mmap.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8242">i915#8242</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12853 -&gt; Patchwork_114671v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12853: 7cfe22e6f72f5328dded16b38e215ff290e8d7f8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7192: 18beb515ff127e64302a491ed321125b5116aa23 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114671v2: 7cfe22e6f72f5328dded16b38e215ff290e8d7f8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ddf9b34400b2 drm/panfrost: Switch to generic memory shrinker<br />
6f4c07f93931 drm/virtio: Support memory shrinking<br />
da996c7b61c8 drm/shmem-helper: Export drm_gem_shmem_get_pages_sgt_locked()<br />
df7516f34991 drm/shmem-helper: Remove obsoleted is_iomem test<br />
8e37ad0afbfd drm/shmem-helper: Add memory shrinker<br />
b63f13ee91e8 drm/shmem-helper: Factor out unpinning part from drm_gem_shmem_purge()<br />
fac41122b1aa drm/shmem-helper: Switch drm_gem_shmem_vmap/vunmap to use pin/unpin<br />
95f44cfb096b drm/shmem-helper: Add pages_pin_count field<br />
b13989274f35 drm/shmem-helper: Factor out pages alloc/release from drm_gem_shmem_get/put_pages()<br />
1223f9bc9406 drm/shmem-helper: Switch to reservation lock</p>

</body>
</html>

--===============1323951532137896325==--
