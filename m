Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D48303B0B8C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 19:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07236E870;
	Tue, 22 Jun 2021 17:38:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F1206E870;
 Tue, 22 Jun 2021 17:38:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48112A66C9;
 Tue, 22 Jun 2021 17:38:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 22 Jun 2021 17:38:58 -0000
Message-ID: <162438353826.30778.17484466930735916517@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaW1w?=
 =?utf-8?q?licit_fencing/dma-resv_rules_for_shared_buffers?=
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
Content-Type: multipart/mixed; boundary="===============0542432157=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0542432157==
Content-Type: multipart/alternative;
 boundary="===============0126213306201277690=="

--===============0126213306201277690==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: implicit fencing/dma-resv rules for shared buffers
URL   : https://patchwork.freedesktop.org/series/91789/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10263 -> Patchwork_20431
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20431/index.html

Known issues
------------

  Here are the changes found in Patchwork_20431 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +15 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20431/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-7567u:       [PASS][2] -> [DMESG-FAIL][3] ([i915#2291] / [i915#541])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10263/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20431/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@runner@aborted:
    - fi-skl-guc:         NOTRUN -> [FAIL][4] ([i915#2426] / [i915#3363])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20431/fi-skl-guc/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10263 -> Patchwork_20431

  CI-20190529: 20190529
  CI_DRM_10263: 5b5e458879485ea4eb87d4208b95a33ee5437fcc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20431: 76d518e4d7e7790bd832f6d103b8e6a309750710 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

76d518e4d7e7 RFC: drm/amdgpu: Implement a proper implicit fencing uapi
15977ff8b76f drm/gem: Tiny kernel clarification for drm_gem_fence_array_add
2ac97cd30e0f drm/tiny: drm_gem_simple_display_pipe_prepare_fb is the default
c2d4255f903b drm/simple-helper: drm_gem_simple_display_pipe_prepare_fb as default
07b7f877328f drm/omap: Follow implicit fencing in prepare_fb
829aa12253aa drm/vram-helpers: Create DRM_GEM_VRAM_PLANE_HELPER_FUNCS
a8e5d51acf68 drm/armada: Remove prepare/cleanup_fb hooks
c761bfef9a8f drm/<driver>: drm_gem_plane_helper_prepare_fb is now the default
d7729f8bfaf7 drm/atomic-helper: make drm_gem_plane_helper_prepare_fb the default
370f17f25d5e drm/panfrost: Fix implicit sync
804e59e3e0f4 drm/panfrost: Use xarray and helpers for depedency tracking
2662cbf1df91 drm/panfrost: Shrink sched_lock
0589bfb59341 dma-buf: Document dma-buf implicit fencing/resv fencing rules
d3ab5dc6443a dma-buf: Switch to inline kerneldoc
fa13cbf232a0 dma-resv: Fix kerneldoc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20431/index.html

--===============0126213306201277690==
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
<tr><td><b>Series:</b></td><td>implicit fencing/dma-resv rules for shared buffers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91789/">https://patchwork.freedesktop.org/series/91789/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20431/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20431/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10263 -&gt; Patchwork_20431</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20431/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20431 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20431/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10263/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20431/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20431/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10263 -&gt; Patchwork_20431</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10263: 5b5e458879485ea4eb87d4208b95a33ee5437fcc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20431: 76d518e4d7e7790bd832f6d103b8e6a309750710 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>76d518e4d7e7 RFC: drm/amdgpu: Implement a proper implicit fencing uapi<br />
15977ff8b76f drm/gem: Tiny kernel clarification for drm_gem_fence_array_add<br />
2ac97cd30e0f drm/tiny: drm_gem_simple_display_pipe_prepare_fb is the default<br />
c2d4255f903b drm/simple-helper: drm_gem_simple_display_pipe_prepare_fb as default<br />
07b7f877328f drm/omap: Follow implicit fencing in prepare_fb<br />
829aa12253aa drm/vram-helpers: Create DRM_GEM_VRAM_PLANE_HELPER_FUNCS<br />
a8e5d51acf68 drm/armada: Remove prepare/cleanup_fb hooks<br />
c761bfef9a8f drm/<driver>: drm_gem_plane_helper_prepare_fb is now the default<br />
d7729f8bfaf7 drm/atomic-helper: make drm_gem_plane_helper_prepare_fb the default<br />
370f17f25d5e drm/panfrost: Fix implicit sync<br />
804e59e3e0f4 drm/panfrost: Use xarray and helpers for depedency tracking<br />
2662cbf1df91 drm/panfrost: Shrink sched_lock<br />
0589bfb59341 dma-buf: Document dma-buf implicit fencing/resv fencing rules<br />
d3ab5dc6443a dma-buf: Switch to inline kerneldoc<br />
fa13cbf232a0 dma-resv: Fix kerneldoc</p>

</body>
</html>

--===============0126213306201277690==--

--===============0542432157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0542432157==--
