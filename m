Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EA740DA53
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 14:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A45C6EB8A;
	Thu, 16 Sep 2021 12:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C69106EDA4;
 Thu, 16 Sep 2021 12:50:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD82BA47EA;
 Thu, 16 Sep 2021 12:50:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6207060234293547651=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 12:50:20 -0000
Message-ID: <163179662076.8836.16088455059122351314@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210916113042.3631-1-christian.koenig@amd.com>
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/26=5D_dma-buf=3A_add_dma=5Fresv=5Ffor?=
 =?utf-8?q?=5Feach=5Ffence=5Funlocked_v2?=
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

--===============6207060234293547651==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/26] dma-buf: add dma_resv_for_each_fence_unlocked v2
URL   : https://patchwork.freedesktop.org/series/94750/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10596 -> Patchwork_21073
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21073 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21073, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21073:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-7567u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-8809g:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-guc:         [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-rkl-11600/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-bwr-2160/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-rkl-guc:         [FAIL][9] ([i915#2426]) -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-rkl-guc/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-rkl-guc/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       [FAIL][11] ([i915#2932] / [i915#3690]) -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-tgl-dsi/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-jsl-1}:         NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-jsl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_21073 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][14] ([i915#2403])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-pnv-d510/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][15] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][16] ([i915#3363])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][17] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][18] ([i915#1569] / [i915#3363])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-icl-u2/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][19] ([i915#3363])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][20] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][21] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][22] ([i915#3363])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][23] ([i915#3363])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-cml-u2/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][24] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][25] ([i915#1569])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][26] ([i915#3363])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-7567u/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-soraka:      [FAIL][27] ([i915#2426] / [i915#3363]) -> [FAIL][28] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-kbl-soraka/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-soraka/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][29] ([i915#2426] / [i915#3363]) -> [FAIL][30] ([i915#3363])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-skl-6700k2/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [k.org#202107]: https://bugzilla.kernel.org/show_bug.cgi?id=202107
  [k.org#202109]: https://bugzilla.kernel.org/show_bug.cgi?id=202109


Participating hosts (37 -> 35)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10596 -> Patchwork_21073

  CI-20190529: 20190529
  CI_DRM_10596: 3e450101ba783c61e51898a84b7758efbb505e8f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21073: a648c89556c265b0c3c9882534c36c14c8982f39 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a648c89556c2 dma-buf: nuke dma_resv_get_excl_unlocked
fc9b5ce671ec drm/etnaviv: replace dma_resv_get_excl_unlocked
10b96c40fe4f drm/etnaviv: use new iterator in etnaviv_gem_describe
aa6d699f8f59 drm/nouveau: use the new interator in nv50_wndw_prepare_fb v2
cf5d087e77ef drm/nouveau: use the new iterator in nouveau_fence_sync
ee7a40d3c32d drm: use new iterator in drm_gem_plane_helper_prepare_fb v2
92c356444b7b drm: use new iterator in drm_gem_fence_array_add_implicit v2
36237da723df drm/i915: use new cursor in intel_prepare_plane_fb v2
e4c67e16e633 drm/i915: use new iterator in i915_gem_object_last_write_engine v2
01cb40f10c37 drm/i915: use new iterator in i915_gem_object_wait_priority v2
fbe3139fe0d5 drm/i915: use new iterator in i915_gem_object_wait_reservation v2
3b3d6edc3ec1 drm/i915: use the new iterator in i915_request_await_object v2
77c552340892 drm/i915: use the new iterator in i915_sw_fence_await_reservation v2
f4e64617226b drm/i915: use the new iterator in i915_gem_busy_ioctl
d5ec3add7f52 drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies v2
8fe08b573247 drm/radeon: use new iterator in radeon_sync_resv
cc28ebf6dea3 drm/msm: use new iterator in msm_gem_describe
f8f742ac41e1 drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable
174500546b2b drm/amdgpu: use the new iterator in amdgpu_sync_resv
bd71df193561 drm/ttm: use the new iterator in ttm_bo_flush_all_fences
f26d368dba9c dma-buf: use new iterator in dma_resv_test_signaled
d07cfed64ece dma-buf: use new iterator in dma_resv_wait_timeout
20181be832c0 dma-buf: use new iterator in dma_resv_get_fences v2
a8b725463938 dma-buf: use new iterator in dma_resv_copy_fences
43fd9d11fcd6 dma-buf: add dma_resv_for_each_fence
79becb99fccc dma-buf: add dma_resv_for_each_fence_unlocked v2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/index.html

--===============6207060234293547651==
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
<tr><td><b>Series:</b></td><td>series starting with [01/26] dma-buf: add dma_resv_for_each_fence_unlocked v2</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94750/">https://patchwork.freedesktop.org/series/94750/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10596 -&gt; Patchwork_21073</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21073 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21073, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21073:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2932">i915#2932</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21073 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10596/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21073/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10596 -&gt; Patchwork_21073</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10596: 3e450101ba783c61e51898a84b7758efbb505e8f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21073: a648c89556c265b0c3c9882534c36c14c8982f39 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a648c89556c2 dma-buf: nuke dma_resv_get_excl_unlocked<br />
fc9b5ce671ec drm/etnaviv: replace dma_resv_get_excl_unlocked<br />
10b96c40fe4f drm/etnaviv: use new iterator in etnaviv_gem_describe<br />
aa6d699f8f59 drm/nouveau: use the new interator in nv50_wndw_prepare_fb v2<br />
cf5d087e77ef drm/nouveau: use the new iterator in nouveau_fence_sync<br />
ee7a40d3c32d drm: use new iterator in drm_gem_plane_helper_prepare_fb v2<br />
92c356444b7b drm: use new iterator in drm_gem_fence_array_add_implicit v2<br />
36237da723df drm/i915: use new cursor in intel_prepare_plane_fb v2<br />
e4c67e16e633 drm/i915: use new iterator in i915_gem_object_last_write_engine v2<br />
01cb40f10c37 drm/i915: use new iterator in i915_gem_object_wait_priority v2<br />
fbe3139fe0d5 drm/i915: use new iterator in i915_gem_object_wait_reservation v2<br />
3b3d6edc3ec1 drm/i915: use the new iterator in i915_request_await_object v2<br />
77c552340892 drm/i915: use the new iterator in i915_sw_fence_await_reservation v2<br />
f4e64617226b drm/i915: use the new iterator in i915_gem_busy_ioctl<br />
d5ec3add7f52 drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies v2<br />
8fe08b573247 drm/radeon: use new iterator in radeon_sync_resv<br />
cc28ebf6dea3 drm/msm: use new iterator in msm_gem_describe<br />
f8f742ac41e1 drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable<br />
174500546b2b drm/amdgpu: use the new iterator in amdgpu_sync_resv<br />
bd71df193561 drm/ttm: use the new iterator in ttm_bo_flush_all_fences<br />
f26d368dba9c dma-buf: use new iterator in dma_resv_test_signaled<br />
d07cfed64ece dma-buf: use new iterator in dma_resv_wait_timeout<br />
20181be832c0 dma-buf: use new iterator in dma_resv_get_fences v2<br />
a8b725463938 dma-buf: use new iterator in dma_resv_copy_fences<br />
43fd9d11fcd6 dma-buf: add dma_resv_for_each_fence<br />
79becb99fccc dma-buf: add dma_resv_for_each_fence_unlocked v2</p>

</body>
</html>

--===============6207060234293547651==--
