Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEFB41F501
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 20:33:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCA666EEB0;
	Fri,  1 Oct 2021 18:33:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A59E6EEB5;
 Fri,  1 Oct 2021 18:33:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32717A7E03;
 Fri,  1 Oct 2021 18:33:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3034477844157861773=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 01 Oct 2021 18:33:41 -0000
Message-ID: <163311322120.25584.18180188320290801341@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211001100610.2899-1-christian.koenig@amd.com>
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/28=5D_dma-buf=3A_add_dma=5Fresv=5Ffor?=
 =?utf-8?q?=5Feach=5Ffence=5Funlocked_v7?=
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

--===============3034477844157861773==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/28] dma-buf: add dma_resv_for_each_fence_unlocked v7
URL   : https://patchwork.freedesktop.org/series/95322/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10679 -> Patchwork_21218
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21218 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21218, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21218:

### IGT changes ###

#### Possible regressions ####

  * {igt@dmabuf@all@dma_resv} (NEW):
    - fi-kbl-7500u:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-7500u/igt@dmabuf@all@dma_resv.html
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-soraka/igt@dmabuf@all@dma_resv.html
    - fi-bwr-2160:        NOTRUN -> [DMESG-FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bwr-2160/igt@dmabuf@all@dma_resv.html
    - fi-kbl-r:           NOTRUN -> [DMESG-FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-r/igt@dmabuf@all@dma_resv.html
    - fi-kbl-8809g:       NOTRUN -> [DMESG-FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-8809g/igt@dmabuf@all@dma_resv.html
    - fi-glk-dsi:         NOTRUN -> [DMESG-FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-glk-dsi/igt@dmabuf@all@dma_resv.html
    - fi-bsw-nick:        NOTRUN -> [DMESG-FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bsw-nick/igt@dmabuf@all@dma_resv.html
    - {fi-tgl-dsi}:       NOTRUN -> [DMESG-FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-tgl-dsi/igt@dmabuf@all@dma_resv.html
    - fi-cfl-8109u:       NOTRUN -> [DMESG-FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cfl-8109u/igt@dmabuf@all@dma_resv.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-skl-6600u/igt@dmabuf@all@dma_resv.html
    - fi-icl-u2:          NOTRUN -> [DMESG-FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-icl-u2/igt@dmabuf@all@dma_resv.html
    - fi-cfl-8700k:       NOTRUN -> [DMESG-FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cfl-8700k/igt@dmabuf@all@dma_resv.html
    - fi-bsw-kefka:       NOTRUN -> [DMESG-FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bsw-kefka/igt@dmabuf@all@dma_resv.html
    - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-pnv-d510/igt@dmabuf@all@dma_resv.html
    - fi-ilk-650:         NOTRUN -> [DMESG-FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-ilk-650/igt@dmabuf@all@dma_resv.html
    - fi-bsw-n3050:       NOTRUN -> [DMESG-FAIL][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bsw-n3050/igt@dmabuf@all@dma_resv.html
    - fi-rkl-11600:       NOTRUN -> [DMESG-FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-rkl-11600/igt@dmabuf@all@dma_resv.html
    - fi-kbl-7567u:       NOTRUN -> [DMESG-FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-7567u/igt@dmabuf@all@dma_resv.html
    - fi-cfl-guc:         NOTRUN -> [DMESG-FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cfl-guc/igt@dmabuf@all@dma_resv.html
    - {fi-ehl-2}:         NOTRUN -> [DMESG-FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-ehl-2/igt@dmabuf@all@dma_resv.html
    - fi-icl-y:           NOTRUN -> [DMESG-FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-icl-y/igt@dmabuf@all@dma_resv.html
    - fi-elk-e7500:       NOTRUN -> [DMESG-FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-elk-e7500/igt@dmabuf@all@dma_resv.html
    - fi-tgl-1115g4:      NOTRUN -> [DMESG-FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-tgl-1115g4/igt@dmabuf@all@dma_resv.html
    - fi-bxt-dsi:         NOTRUN -> [DMESG-FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bxt-dsi/igt@dmabuf@all@dma_resv.html
    - {fi-jsl-1}:         NOTRUN -> [DMESG-FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-jsl-1/igt@dmabuf@all@dma_resv.html
    - fi-rkl-guc:         NOTRUN -> [DMESG-FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-rkl-guc/igt@dmabuf@all@dma_resv.html
    - fi-cml-u2:          NOTRUN -> [DMESG-FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cml-u2/igt@dmabuf@all@dma_resv.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [PASS][28] -> [DMESG-FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10679/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-rkl-11600/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-ilk-650/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bsw-nick/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bwr-2160/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-rkl-guc/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-elk-e7500/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][38]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-icl-y/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bsw-n3050/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][40]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-jsl-1}:         NOTRUN -> [FAIL][41]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][42]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-ehl-2/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10679 and Patchwork_21218:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_resv:
    - Statuses : 27 dmesg-fail(s)
    - Exec time: [0.06, 0.69] s

  

Known issues
------------

  Here are the changes found in Patchwork_21218 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][43] ([i915#2403])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-pnv-d510/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][44] ([i915#3363])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][45] ([i915#3363])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][46] ([i915#3363])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][47] ([i915#3363])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][48] ([i915#3363] / [k.org#202321])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][49] ([i915#3363])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][50] ([i915#3363])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][51] ([i915#3363])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][52] ([i915#3363])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-7500u/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][53] ([i915#3363])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][54] ([i915#3363])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][55] ([i915#3363])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cfl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][56] ([i915#3363])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-7567u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][57] ([i915#1982] / [i915#4136]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10679/fi-tgl-dsi/igt@i915_module_load@reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-tgl-dsi/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (34 -> 28)
------------------------------

  Missing    (6): bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 bat-jsl-2 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10679 -> Patchwork_21218

  CI-20190529: 20190529
  CI_DRM_10679: 54b158b325c6f7e7898c3dadc8b40d888c797e9e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21218: 300544a79d8bc6e4e82913994eb728a152163c13 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

300544a79d8b drm/etnaviv: replace dma_resv_get_excl_unlocked
48d9574b53bb drm/etnaviv: use new iterator in etnaviv_gem_describe
f876fe18a0a6 drm/nouveau: use the new interator in nv50_wndw_prepare_fb
4edb3418f2c7 drm/nouveau: use the new iterator in nouveau_fence_sync
188bb80a44ba drm: use new iterator in drm_gem_plane_helper_prepare_fb
70793eb0432e drm: use new iterator in drm_gem_fence_array_add_implicit v3
fdf197d59566 drm/i915: use new cursor in intel_prepare_plane_fb
4307f1f29fca drm/i915: use new iterator in i915_gem_object_wait_priority
8eac2458a6b8 drm/i915: use new iterator in i915_gem_object_wait_reservation
6df794ac0370 drm/i915: use the new iterator in i915_request_await_object v2
1caa54e479b4 drm/i915: use the new iterator in i915_sw_fence_await_reservation v3
e1a495ad7023 drm/i915: use the new iterator in i915_gem_busy_ioctl v2
e4b9579cf42b drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies v2
e7221520c5b1 drm/radeon: use new iterator in radeon_sync_resv
f39c4f1c1e7a drm/msm: use new iterator in msm_gem_describe
4047e3c04716 drm/amdgpu: use new iterator in amdgpu_vm_prt_fini
64168de2b5b7 drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable
96ea00a5bf91 drm/amdgpu: use the new iterator in amdgpu_sync_resv
029b51ce7daa drm/ttm: use the new iterator in ttm_bo_flush_all_fences
cc517c68e55e dma-buf: use the new iterator in dma_resv_poll
f1e8f9f01608 dma-buf: use the new iterator in dma_buf_debug_show
6b08ff66c608 dma-buf: use new iterator in dma_resv_test_signaled
a09667855551 dma-buf: use new iterator in dma_resv_wait_timeout
03e7391693c8 dma-buf: use new iterator in dma_resv_get_fences v3
de846c1ce1c4 dma-buf: use new iterator in dma_resv_copy_fences
06863461ba7e dma-buf: add dma_resv selftest
56320331defb dma-buf: add dma_resv_for_each_fence
245f2aaae8e7 dma-buf: add dma_resv_for_each_fence_unlocked v7

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/index.html

--===============3034477844157861773==
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
<tr><td><b>Series:</b></td><td>series starting with [01/28] dma-buf: add dma_resv_for_each_fence_unlocked v7</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95322/">https://patchwork.freedesktop.org/series/95322/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10679 -&gt; Patchwork_21218</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21218 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21218, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21218:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@dmabuf@all@dma_resv} (NEW):</p>
<ul>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-7500u/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-soraka/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bwr-2160/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-r/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-8809g/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-glk-dsi/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bsw-nick/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-tgl-dsi/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cfl-8109u/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-skl-6600u/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-icl-u2/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cfl-8700k/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bsw-kefka/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-pnv-d510/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-ilk-650/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bsw-n3050/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-rkl-11600/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-7567u/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cfl-guc/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-ehl-2/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-icl-y/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-elk-e7500/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-tgl-1115g4/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bxt-dsi/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-jsl-1/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-rkl-guc/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cml-u2/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10679/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bsw-nick/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-icl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a></p>
</li>
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
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10679 and Patchwork_21218:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@dmabuf@all@dma_resv:<ul>
<li>Statuses : 27 dmesg-fail(s)</li>
<li>Exec time: [0.06, 0.69] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21218 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10679/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21218/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (34 -&gt; 28)</h2>
<p>Missing    (6): bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 bat-jsl-2 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10679 -&gt; Patchwork_21218</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10679: 54b158b325c6f7e7898c3dadc8b40d888c797e9e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21218: 300544a79d8bc6e4e82913994eb728a152163c13 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>300544a79d8b drm/etnaviv: replace dma_resv_get_excl_unlocked<br />
48d9574b53bb drm/etnaviv: use new iterator in etnaviv_gem_describe<br />
f876fe18a0a6 drm/nouveau: use the new interator in nv50_wndw_prepare_fb<br />
4edb3418f2c7 drm/nouveau: use the new iterator in nouveau_fence_sync<br />
188bb80a44ba drm: use new iterator in drm_gem_plane_helper_prepare_fb<br />
70793eb0432e drm: use new iterator in drm_gem_fence_array_add_implicit v3<br />
fdf197d59566 drm/i915: use new cursor in intel_prepare_plane_fb<br />
4307f1f29fca drm/i915: use new iterator in i915_gem_object_wait_priority<br />
8eac2458a6b8 drm/i915: use new iterator in i915_gem_object_wait_reservation<br />
6df794ac0370 drm/i915: use the new iterator in i915_request_await_object v2<br />
1caa54e479b4 drm/i915: use the new iterator in i915_sw_fence_await_reservation v3<br />
e1a495ad7023 drm/i915: use the new iterator in i915_gem_busy_ioctl v2<br />
e4b9579cf42b drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies v2<br />
e7221520c5b1 drm/radeon: use new iterator in radeon_sync_resv<br />
f39c4f1c1e7a drm/msm: use new iterator in msm_gem_describe<br />
4047e3c04716 drm/amdgpu: use new iterator in amdgpu_vm_prt_fini<br />
64168de2b5b7 drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable<br />
96ea00a5bf91 drm/amdgpu: use the new iterator in amdgpu_sync_resv<br />
029b51ce7daa drm/ttm: use the new iterator in ttm_bo_flush_all_fences<br />
cc517c68e55e dma-buf: use the new iterator in dma_resv_poll<br />
f1e8f9f01608 dma-buf: use the new iterator in dma_buf_debug_show<br />
6b08ff66c608 dma-buf: use new iterator in dma_resv_test_signaled<br />
a09667855551 dma-buf: use new iterator in dma_resv_wait_timeout<br />
03e7391693c8 dma-buf: use new iterator in dma_resv_get_fences v3<br />
de846c1ce1c4 dma-buf: use new iterator in dma_resv_copy_fences<br />
06863461ba7e dma-buf: add dma_resv selftest<br />
56320331defb dma-buf: add dma_resv_for_each_fence<br />
245f2aaae8e7 dma-buf: add dma_resv_for_each_fence_unlocked v7</p>

</body>
</html>

--===============3034477844157861773==--
