Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 872664229DF
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 16:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDFAF6EB84;
	Tue,  5 Oct 2021 14:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 215A36EB84;
 Tue,  5 Oct 2021 14:01:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 186AFAA916;
 Tue,  5 Oct 2021 14:01:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1073395047826221596=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Oct 2021 14:01:14 -0000
Message-ID: <163344247405.19280.11920448150712278973@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211005113742.1101-1-christian.koenig@amd.com>
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/28=5D_dma-buf=3A_add_dma=5Fresv=5Ffor?=
 =?utf-8?q?=5Feach=5Ffence=5Funlocked_v8?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1073395047826221596==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/28] dma-buf: add dma_resv_for_each_fence_unlocked v8
URL   : https://patchwork.freedesktop.org/series/95456/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10683 -> Patchwork_21249
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21249 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21249, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21249:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10683 and Patchwork_21249:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_resv:
    - Statuses : 31 pass(s)
    - Exec time: [0.02, 0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_21249 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@memory-alloc:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-kbl-soraka/igt@amdgpu/amd_basic@memory-alloc.html

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][4] ([fdo#109271]) +28 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-snb-2520m:       NOTRUN -> [SKIP][5] ([fdo#109271]) +37 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          NOTRUN -> [FAIL][6] ([i915#1888])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][7] -> [FAIL][8] ([i915#1888]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][9] ([i915#2190])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#2190])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-u2:          NOTRUN -> [SKIP][11] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-snb-2520m:       NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-u2:          NOTRUN -> [SKIP][14] ([i915#4103]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-u2:          NOTRUN -> [SKIP][15] ([fdo#109285])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#533])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-u2:          NOTRUN -> [SKIP][17] ([i915#3301])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-tgl-u2:          NOTRUN -> [FAIL][18] ([i915#1602] / [i915#2722])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][19] ([i915#2940]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - fi-cfl-8109u:       [FAIL][21] ([i915#4165]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][23] ([i915#95]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][25] ([i915#295]) -> [PASS][26] +18 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4165]: https://gitlab.freedesktop.org/drm/intel/issues/4165
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (38 -> 35)
------------------------------

  Additional (3): fi-kbl-x1275 fi-snb-2520m fi-tgl-u2 
  Missing    (6): bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10683 -> Patchwork_21249

  CI-20190529: 20190529
  CI_DRM_10683: 2db2331e0b19308750c3b921c2779c4c2da9b04b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6230: a079f2e00693facf4cf6512f0ddb69b30826c80f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21249: 1a64491cae770a792625ffb7f41f9e8fdde8b447 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1a64491cae77 drm/etnaviv: replace dma_resv_get_excl_unlocked
3787760057aa drm/etnaviv: use new iterator in etnaviv_gem_describe
b627817591ce drm/nouveau: use the new interator in nv50_wndw_prepare_fb
787d9b5f6a89 drm/nouveau: use the new iterator in nouveau_fence_sync
b02819040fe2 drm: use new iterator in drm_gem_plane_helper_prepare_fb v2
a65beb7b512d drm: use new iterator in drm_gem_fence_array_add_implicit v3
bef9eb83bd54 drm/i915: use new cursor in intel_prepare_plane_fb
0f74a7aa113f drm/i915: use new iterator in i915_gem_object_wait_priority
16a4cfb0898d drm/i915: use new iterator in i915_gem_object_wait_reservation
b906c585aa10 drm/i915: use the new iterator in i915_request_await_object v2
dcccc307bd08 drm/i915: use the new iterator in i915_sw_fence_await_reservation v3
59a42552b141 drm/i915: use the new iterator in i915_gem_busy_ioctl v2
1a4214d132dc drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies v2
891229388829 drm/radeon: use new iterator in radeon_sync_resv
bf5b593d49d1 drm/msm: use new iterator in msm_gem_describe
941b6bfabfcd drm/amdgpu: use new iterator in amdgpu_vm_prt_fini
e62ee53e573a drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable
77ab4e7a68a8 drm/amdgpu: use the new iterator in amdgpu_sync_resv
47df85486fff drm/ttm: use the new iterator in ttm_bo_flush_all_fences
5fe5c13fc49a dma-buf: use the new iterator in dma_resv_poll
125cf4c8aa72 dma-buf: use the new iterator in dma_buf_debug_show
18fd3c76ebf0 dma-buf: use new iterator in dma_resv_test_signaled
a7df5e34b826 dma-buf: use new iterator in dma_resv_wait_timeout
a6d5759c5743 dma-buf: use new iterator in dma_resv_get_fences v3
ccd90c562c2f dma-buf: use new iterator in dma_resv_copy_fences
013a9ec61fe0 dma-buf: add dma_resv selftest v3
730f3d21c81f dma-buf: add dma_resv_for_each_fence v2
4d20a8353f25 dma-buf: add dma_resv_for_each_fence_unlocked v8

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/index.html

--===============1073395047826221596==
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
<tr><td><b>Series:</b></td><td>series starting with [01/28] dma-buf: add dma_resv_for_each_fence_unlocked v8</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95456/">https://patchwork.freedesktop.org/series/95456/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10683 -&gt; Patchwork_21249</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21249 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21249, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21249:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10683 and Patchwork_21249:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@dmabuf@all@dma_resv:<ul>
<li>Statuses : 31 pass(s)</li>
<li>Exec time: [0.02, 0.10] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21249 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@memory-alloc:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-kbl-soraka/igt@amdgpu/amd_basic@memory-alloc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21249/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> +18 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Additional (3): fi-kbl-x1275 fi-snb-2520m fi-tgl-u2 <br />
  Missing    (6): bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10683 -&gt; Patchwork_21249</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10683: 2db2331e0b19308750c3b921c2779c4c2da9b04b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6230: a079f2e00693facf4cf6512f0ddb69b30826c80f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21249: 1a64491cae770a792625ffb7f41f9e8fdde8b447 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1a64491cae77 drm/etnaviv: replace dma_resv_get_excl_unlocked<br />
3787760057aa drm/etnaviv: use new iterator in etnaviv_gem_describe<br />
b627817591ce drm/nouveau: use the new interator in nv50_wndw_prepare_fb<br />
787d9b5f6a89 drm/nouveau: use the new iterator in nouveau_fence_sync<br />
b02819040fe2 drm: use new iterator in drm_gem_plane_helper_prepare_fb v2<br />
a65beb7b512d drm: use new iterator in drm_gem_fence_array_add_implicit v3<br />
bef9eb83bd54 drm/i915: use new cursor in intel_prepare_plane_fb<br />
0f74a7aa113f drm/i915: use new iterator in i915_gem_object_wait_priority<br />
16a4cfb0898d drm/i915: use new iterator in i915_gem_object_wait_reservation<br />
b906c585aa10 drm/i915: use the new iterator in i915_request_await_object v2<br />
dcccc307bd08 drm/i915: use the new iterator in i915_sw_fence_await_reservation v3<br />
59a42552b141 drm/i915: use the new iterator in i915_gem_busy_ioctl v2<br />
1a4214d132dc drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies v2<br />
891229388829 drm/radeon: use new iterator in radeon_sync_resv<br />
bf5b593d49d1 drm/msm: use new iterator in msm_gem_describe<br />
941b6bfabfcd drm/amdgpu: use new iterator in amdgpu_vm_prt_fini<br />
e62ee53e573a drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable<br />
77ab4e7a68a8 drm/amdgpu: use the new iterator in amdgpu_sync_resv<br />
47df85486fff drm/ttm: use the new iterator in ttm_bo_flush_all_fences<br />
5fe5c13fc49a dma-buf: use the new iterator in dma_resv_poll<br />
125cf4c8aa72 dma-buf: use the new iterator in dma_buf_debug_show<br />
18fd3c76ebf0 dma-buf: use new iterator in dma_resv_test_signaled<br />
a7df5e34b826 dma-buf: use new iterator in dma_resv_wait_timeout<br />
a6d5759c5743 dma-buf: use new iterator in dma_resv_get_fences v3<br />
ccd90c562c2f dma-buf: use new iterator in dma_resv_copy_fences<br />
013a9ec61fe0 dma-buf: add dma_resv selftest v3<br />
730f3d21c81f dma-buf: add dma_resv_for_each_fence v2<br />
4d20a8353f25 dma-buf: add dma_resv_for_each_fence_unlocked v8</p>

</body>
</html>

--===============1073395047826221596==--
