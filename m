Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 390DF413B03
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 21:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C6C26E83B;
	Tue, 21 Sep 2021 19:53:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 896406E81A;
 Tue, 21 Sep 2021 19:53:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 813A3A0003;
 Tue, 21 Sep 2021 19:53:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2701275860381830686=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:53:25 -0000
Message-ID: <163225400549.15888.16523661079279427227@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210921173659.246165-1-christian.koenig@amd.com>
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/26=5D_dma-buf=3A_add_dma=5Fresv=5Ffor?=
 =?utf-8?q?=5Feach=5Ffence=5Funlocked_v3?=
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

--===============2701275860381830686==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/26] dma-buf: add dma_resv_for_each_fence_unlocked v3
URL   : https://patchwork.freedesktop.org/series/94907/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10621 -> Patchwork_21116
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21116 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21116, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21116:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-apl-guc:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-apl-guc/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-apl-guc/boot.html
    - fi-glk-dsi:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-glk-dsi/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-glk-dsi/boot.html
    - fi-cfl-8109u:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-8109u/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-cfl-8109u/boot.html
    - fi-rkl-guc:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-rkl-guc/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-rkl-guc/boot.html
    - fi-cfl-8700k:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-8700k/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-cfl-8700k/boot.html
    - fi-bxt-dsi:         [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bxt-dsi/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-bxt-dsi/boot.html
    - fi-cml-u2:          [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cml-u2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-cml-u2/boot.html
    - fi-bsw-kefka:       [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bsw-kefka/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-bsw-kefka/boot.html
    - fi-kbl-7500u:       [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-7500u/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-kbl-7500u/boot.html
    - fi-hsw-4770:        [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-hsw-4770/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-hsw-4770/boot.html
    - fi-cfl-guc:         [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-guc/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-cfl-guc/boot.html
    - fi-bdw-5557u:       [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bdw-5557u/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-bdw-5557u/boot.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-tgl-dsi}:       [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-tgl-dsi/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-tgl-dsi/boot.html
    - {fi-jsl-1}:         [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-jsl-1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-jsl-1/boot.html
    - {fi-ehl-2}:         [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-ehl-2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-ehl-2/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all:
    - fi-bsw-nick:        [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bsw-nick/igt@gem_busy@busy@all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-bsw-nick/igt@gem_busy@busy@all.html
    - fi-kbl-7567u:       [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-7567u/igt@gem_busy@busy@all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-kbl-7567u/igt@gem_busy@busy@all.html

  
Known issues
------------

  Here are the changes found in Patchwork_21116 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-icl-y:           [PASS][35] -> [FAIL][36] ([i915#3521])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-y/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-icl-y/boot.html
    - fi-skl-6600u:       [PASS][37] -> [FAIL][38] ([i915#3174])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-skl-6600u/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-skl-6600u/boot.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][39] ([i915#3174])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-skl-6700k2/boot.html
    - fi-kbl-soraka:      [PASS][40] -> [FAIL][41] ([i915#3895])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-soraka/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-kbl-soraka/boot.html
    - fi-skl-guc:         NOTRUN -> [FAIL][42] ([i915#3174])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-skl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_basic@create-close:
    - fi-bdw-gvtdvm:      [PASS][43] -> [INCOMPLETE][44] ([i915#2295])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bdw-gvtdvm/igt@gem_basic@create-close.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-bdw-gvtdvm/igt@gem_basic@create-close.html

  * igt@runner@aborted:
    - fi-ivb-3770:        NOTRUN -> [FAIL][45] ([i915#2426])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-ivb-3770/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][46] ([i915#3690])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][47] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#2426] / [i915#3363])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-kbl-8809g/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][48] ([i915#3690])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][49] ([i915#2426])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][50] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#2426] / [i915#3363])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][51] ([i915#2426] / [i915#3363])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-kbl-7567u/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-icl-u2:          [FAIL][52] ([i915#2426] / [i915#3363] / [i915#3690] / [i915#4136]) -> [FAIL][53] ([i915#1569] / [i915#2426] / [i915#3363] / [i915#3690])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-u2/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-icl-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3174]: https://gitlab.freedesktop.org/drm/intel/issues/3174
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3521]: https://gitlab.freedesktop.org/drm/intel/issues/3521
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3895]: https://gitlab.freedesktop.org/drm/intel/issues/3895
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136


Participating hosts (34 -> 30)
------------------------------

  Additional (3): fi-skl-guc fi-tgl-1115g4 fi-skl-6700k2 
  Missing    (7): bat-dg1-6 fi-bsw-cyan fi-bwr-2160 fi-pnv-d510 fi-elk-e7500 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10621 -> Patchwork_21116

  CI-20190529: 20190529
  CI_DRM_10621: a24155d542614740119089c115fc777a0fa27587 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21116: ae8d32f3a6ecd19ab74270302bfe2eafbc05b3c0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ae8d32f3a6ec dma-buf: nuke dma_resv_get_excl_unlocked
b28db8f225b0 drm/etnaviv: replace dma_resv_get_excl_unlocked
94a0c1da5f3b drm/etnaviv: use new iterator in etnaviv_gem_describe
9f53f365f239 drm/nouveau: use the new interator in nv50_wndw_prepare_fb
74e01388c7a5 drm/nouveau: use the new iterator in nouveau_fence_sync
7293562f4bcd drm: use new iterator in drm_gem_plane_helper_prepare_fb
6b47dcb427bd drm: use new iterator in drm_gem_fence_array_add_implicit v3
456d6d435c2a drm/i915: use new cursor in intel_prepare_plane_fb
f602500ca438 drm/i915: use new iterator in i915_gem_object_last_write_engine
74d81b423920 drm/i915: use new iterator in i915_gem_object_wait_priority
77dc04ba6ec2 drm/i915: use new iterator in i915_gem_object_wait_reservation
e3479bc66cc5 drm/i915: use the new iterator in i915_request_await_object v2
53c225482147 drm/i915: use the new iterator in i915_sw_fence_await_reservation v3
2d52267c7daf drm/i915: use the new iterator in i915_gem_busy_ioctl
9e335e57bc78 drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies v2
45b6eedea831 drm/radeon: use new iterator in radeon_sync_resv
69d387eb72c6 drm/msm: use new iterator in msm_gem_describe
4447e023db98 drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable
a78af94a4877 drm/amdgpu: use the new iterator in amdgpu_sync_resv
e578d40fe995 drm/ttm: use the new iterator in ttm_bo_flush_all_fences
ff71d815c2d2 dma-buf: use new iterator in dma_resv_test_signaled
8d9471a32a3f dma-buf: use new iterator in dma_resv_wait_timeout
798a7ad121b8 dma-buf: use new iterator in dma_resv_get_fences v2
74503a301795 dma-buf: use new iterator in dma_resv_copy_fences
6f7dfbaa7b03 dma-buf: add dma_resv_for_each_fence
1069219a4356 dma-buf: add dma_resv_for_each_fence_unlocked v3

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/index.html

--===============2701275860381830686==
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
<tr><td><b>Series:</b></td><td>series starting with [01/26] dma-buf: add dma_resv_for_each_fence_unlocked v3</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94907/">https://patchwork.freedesktop.org/series/94907/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10621 -&gt; Patchwork_21116</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21116 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21116, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21116:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-apl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-glk-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-glk-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-cfl-8109u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-rkl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-rkl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-8700k/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-cfl-8700k/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bxt-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-bxt-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cml-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-cml-u2/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bsw-kefka/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-bsw-kefka/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-7500u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-kbl-7500u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-hsw-4770/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-cfl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bdw-5557u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-bdw-5557u/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-tgl-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-tgl-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-jsl-1/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-ehl-2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-ehl-2/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bsw-nick/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-bsw-nick/igt@gem_busy@busy@all.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-7567u/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-kbl-7567u/igt@gem_busy@busy@all.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21116 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-y/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-icl-y/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3521">i915#3521</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-skl-6600u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-skl-6600u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-skl-6700k2/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-soraka/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-kbl-soraka/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3895">i915#3895</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-skl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_basic@create-close:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bdw-gvtdvm/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-bdw-gvtdvm/igt@gem_basic@create-close.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21116/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (34 -&gt; 30)</h2>
<p>Additional (3): fi-skl-guc fi-tgl-1115g4 fi-skl-6700k2 <br />
  Missing    (7): bat-dg1-6 fi-bsw-cyan fi-bwr-2160 fi-pnv-d510 fi-elk-e7500 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10621 -&gt; Patchwork_21116</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10621: a24155d542614740119089c115fc777a0fa27587 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21116: ae8d32f3a6ecd19ab74270302bfe2eafbc05b3c0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ae8d32f3a6ec dma-buf: nuke dma_resv_get_excl_unlocked<br />
b28db8f225b0 drm/etnaviv: replace dma_resv_get_excl_unlocked<br />
94a0c1da5f3b drm/etnaviv: use new iterator in etnaviv_gem_describe<br />
9f53f365f239 drm/nouveau: use the new interator in nv50_wndw_prepare_fb<br />
74e01388c7a5 drm/nouveau: use the new iterator in nouveau_fence_sync<br />
7293562f4bcd drm: use new iterator in drm_gem_plane_helper_prepare_fb<br />
6b47dcb427bd drm: use new iterator in drm_gem_fence_array_add_implicit v3<br />
456d6d435c2a drm/i915: use new cursor in intel_prepare_plane_fb<br />
f602500ca438 drm/i915: use new iterator in i915_gem_object_last_write_engine<br />
74d81b423920 drm/i915: use new iterator in i915_gem_object_wait_priority<br />
77dc04ba6ec2 drm/i915: use new iterator in i915_gem_object_wait_reservation<br />
e3479bc66cc5 drm/i915: use the new iterator in i915_request_await_object v2<br />
53c225482147 drm/i915: use the new iterator in i915_sw_fence_await_reservation v3<br />
2d52267c7daf drm/i915: use the new iterator in i915_gem_busy_ioctl<br />
9e335e57bc78 drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies v2<br />
45b6eedea831 drm/radeon: use new iterator in radeon_sync_resv<br />
69d387eb72c6 drm/msm: use new iterator in msm_gem_describe<br />
4447e023db98 drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable<br />
a78af94a4877 drm/amdgpu: use the new iterator in amdgpu_sync_resv<br />
e578d40fe995 drm/ttm: use the new iterator in ttm_bo_flush_all_fences<br />
ff71d815c2d2 dma-buf: use new iterator in dma_resv_test_signaled<br />
8d9471a32a3f dma-buf: use new iterator in dma_resv_wait_timeout<br />
798a7ad121b8 dma-buf: use new iterator in dma_resv_get_fences v2<br />
74503a301795 dma-buf: use new iterator in dma_resv_copy_fences<br />
6f7dfbaa7b03 dma-buf: add dma_resv_for_each_fence<br />
1069219a4356 dma-buf: add dma_resv_for_each_fence_unlocked v3</p>

</body>
</html>

--===============2701275860381830686==--
