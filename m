Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8301778A11E
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Aug 2023 21:01:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B52C510E208;
	Sun, 27 Aug 2023 19:01:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B216610E208;
 Sun, 27 Aug 2023 19:01:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA72EAADD8;
 Sun, 27 Aug 2023 19:01:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0432907531911787575=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Osipenko" <dmitry.osipenko@collabora.com>
Date: Sun, 27 Aug 2023 19:01:05 -0000
Message-ID: <169316286566.30569.7156958380117467470@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230827175449.1766701-1-dmitry.osipenko@collabora.com>
In-Reply-To: <20230827175449.1766701-1-dmitry.osipenko@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_generic_memory_shrinker_to_VirtIO-GPU_and_Panfrost_DRM_drivers?=
 =?utf-8?q?_=28rev3=29?=
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

--===============0432907531911787575==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add generic memory shrinker to VirtIO-GPU and Panfrost DRM drivers (rev3)
URL   : https://patchwork.freedesktop.org/series/114671/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13569 -> Patchwork_114671v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/index.html

Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114671v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - bat-dg2-9:          NOTRUN -> [INCOMPLETE][1] ([i915#6311])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-8:         NOTRUN -> [SKIP][2] ([i915#4613]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-8:         NOTRUN -> [SKIP][3] ([i915#6621])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-mtlp-8/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][4] -> [DMESG-FAIL][5] ([i915#5334] / [i915#7872])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
    - fi-apl-guc:         [PASS][6] -> [DMESG-FAIL][7] ([i915#5334])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-2:         [PASS][8] -> [TIMEOUT][9] ([i915#6794] / [i915#7392])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-rpls-2/igt@i915_selftest@live@mman.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-rpls-2/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-2:         [PASS][10] -> [WARN][11] ([i915#8747])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][12] ([i915#6645])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_psr@cursor_plane_move:
    - bat-rplp-1:         NOTRUN -> [ABORT][13] ([i915#8668])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-rplp-1/igt@kms_psr@cursor_plane_move.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-8:         NOTRUN -> [SKIP][14] ([i915#3708] / [i915#4077]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-mtlp-8:         NOTRUN -> [SKIP][15] ([i915#3708]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg2-9:          [INCOMPLETE][16] ([i915#6311]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - bat-mtlp-8:         [ABORT][18] ([i915#7077] / [i915#7977] / [i915#8668]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html

  
#### Warnings ####

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-vga-1:
    - fi-hsw-4770:        [DMESG-WARN][20] ([i915#8841]) -> [DMESG-WARN][21] ([i915#1982] / [i915#8841])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-vga-1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-vga-1.html

  * igt@kms_psr@primary_page_flip:
    - bat-rplp-1:         [ABORT][22] ([i915#8860]) -> [SKIP][23] ([i915#1072])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-rplp-1/igt@kms_psr@primary_page_flip.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8860]: https://gitlab.freedesktop.org/drm/intel/issues/8860


Build changes
-------------

  * Linux: CI_DRM_13569 -> Patchwork_114671v3

  CI-20190529: 20190529
  CI_DRM_13569: eb0ba85982a1832f4a61954c3fb99ac3e3f2e076 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7454: 7454
  Patchwork_114671v3: eb0ba85982a1832f4a61954c3fb99ac3e3f2e076 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bd488009f717 drm/panfrost: Switch to generic memory shrinker
1a7361060bbe drm/virtio: Support memory shrinking
ec6cf8cb2589 drm/virtio: Attach shmem BOs dynamically
a2a03972d01d drm/virtio: Pin display framebuffer BO
a099b0e467c9 drm/shmem-helper: Export drm_gem_shmem_get_pages_sgt_locked()
a03d9dfe6919 drm/shmem-helper: Add memory shrinker
99ca76d94623 drm/shmem-helper: Add and use drm_gem_shmem_resv_assert_held() helper
35f23ce37cc7 drm/shmem-helper: Use kref for vmap_use_count
5bbcb0979f1c drm/shmem-helper: Switch drm_gem_shmem_vmap/vunmap to use pin/unpin
864df9010655 drm/shmem-helper: Add and use lockless drm_gem_shmem_get_pages()
f974877081a8 drm/shmem-helper: Use kref for pages_use_count
542de47282f8 drm/shmem-helper: Add and use pages_pin_count
c462e83c3464 dma-resv: Add kref_put_dma_resv()
df572cd87782 locking/refcount, kref: Add kref_put_ww_mutex()
62949f37372d drm/shmem-helper: Remove obsoleted is_iomem test
5b672399bbc6 drm/shmem-helper: Refactor locked/unlocked functions
591c649313d3 drm/shmem-helper: Make all exported symbols GPL
554e0ab9a715 drm/virtio: Replace drm_gem_shmem_free() with drm_gem_object_put()
47ccbf73a30c drm/v3d: Replace open-coded drm_gem_shmem_free() with drm_gem_object_put()
561ebb7b98bf drm/gem: Add _locked postfix to functions that have unlocked counterpart
d6461e2d5eb9 drm/gem: Change locked/unlocked postfix of drm_gem_v/unmap() function names
4384c8917e79 drm/shmem-helper: Use flag for tracking page count bumped by get_pages_sgt()
c0f034eee490 drm/shmem-helper: Fix UAF in error path when freeing SGT of imported GEM

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/index.html

--===============0432907531911787575==
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
<tr><td><b>Series:</b></td><td>Add generic memory shrinker to VirtIO-GPU and Panfrost DRM drivers (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114671/">https://patchwork.freedesktop.org/series/114671/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13569 -&gt; Patchwork_114671v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114671v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6311">i915#6311</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-rpls-2/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-rpls-2/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6311">i915#6311</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7977">i915#7977</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-vga-1:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-vga-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-vga-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-rplp-1/igt@kms_psr@primary_page_flip.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8860">i915#8860</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v3/bat-rplp-1/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13569 -&gt; Patchwork_114671v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13569: eb0ba85982a1832f4a61954c3fb99ac3e3f2e076 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7454: 7454<br />
  Patchwork_114671v3: eb0ba85982a1832f4a61954c3fb99ac3e3f2e076 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bd488009f717 drm/panfrost: Switch to generic memory shrinker<br />
1a7361060bbe drm/virtio: Support memory shrinking<br />
ec6cf8cb2589 drm/virtio: Attach shmem BOs dynamically<br />
a2a03972d01d drm/virtio: Pin display framebuffer BO<br />
a099b0e467c9 drm/shmem-helper: Export drm_gem_shmem_get_pages_sgt_locked()<br />
a03d9dfe6919 drm/shmem-helper: Add memory shrinker<br />
99ca76d94623 drm/shmem-helper: Add and use drm_gem_shmem_resv_assert_held() helper<br />
35f23ce37cc7 drm/shmem-helper: Use kref for vmap_use_count<br />
5bbcb0979f1c drm/shmem-helper: Switch drm_gem_shmem_vmap/vunmap to use pin/unpin<br />
864df9010655 drm/shmem-helper: Add and use lockless drm_gem_shmem_get_pages()<br />
f974877081a8 drm/shmem-helper: Use kref for pages_use_count<br />
542de47282f8 drm/shmem-helper: Add and use pages_pin_count<br />
c462e83c3464 dma-resv: Add kref_put_dma_resv()<br />
df572cd87782 locking/refcount, kref: Add kref_put_ww_mutex()<br />
62949f37372d drm/shmem-helper: Remove obsoleted is_iomem test<br />
5b672399bbc6 drm/shmem-helper: Refactor locked/unlocked functions<br />
591c649313d3 drm/shmem-helper: Make all exported symbols GPL<br />
554e0ab9a715 drm/virtio: Replace drm_gem_shmem_free() with drm_gem_object_put()<br />
47ccbf73a30c drm/v3d: Replace open-coded drm_gem_shmem_free() with drm_gem_object_put()<br />
561ebb7b98bf drm/gem: Add _locked postfix to functions that have unlocked counterpart<br />
d6461e2d5eb9 drm/gem: Change locked/unlocked postfix of drm_gem_v/unmap() function names<br />
4384c8917e79 drm/shmem-helper: Use flag for tracking page count bumped by get_pages_sgt()<br />
c0f034eee490 drm/shmem-helper: Fix UAF in error path when freeing SGT of imported GEM</p>

</body>
</html>

--===============0432907531911787575==--
