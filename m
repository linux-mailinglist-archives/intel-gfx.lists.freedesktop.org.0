Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0411E874573
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 02:06:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B33410F807;
	Thu,  7 Mar 2024 01:06:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E78C112420;
 Thu,  7 Mar 2024 01:06:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1934279292534049895=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm=3A_fix_headers=2C_add_h?=
 =?utf-8?q?eader_test_facility?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Mar 2024 01:06:17 -0000
Message-ID: <170977357705.563887.6891794088214797299@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1709749576.git.jani.nikula@intel.com>
In-Reply-To: <cover.1709749576.git.jani.nikula@intel.com>
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

--===============1934279292534049895==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: fix headers, add header test facility
URL   : https://patchwork.freedesktop.org/series/130822/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14399 -> Patchwork_130822v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_130822v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_130822v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130822v1:

### IGT changes ###

#### Possible regressions ####

  * igt@vgem_basic@unload:
    - bat-arls-2:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-arls-2/igt@vgem_basic@unload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-arls-2/igt@vgem_basic@unload.html

  
Known issues
------------

  Here are the changes found in Patchwork_130822v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-arls-3:         [PASS][3] -> [FAIL][4] ([i915#10234])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-arls-3/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-arls-3/boot.html
    - bat-jsl-1:          [PASS][5] -> [FAIL][6] ([i915#8293])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-jsl-1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-jsl-1/boot.html
    - fi-apl-guc:         [PASS][7] -> [FAIL][8] ([i915#8293])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/fi-apl-guc/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/fi-apl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         [PASS][9] -> [FAIL][10] ([i915#10378])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@gem_mmap@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][11] ([i915#4083])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@gem_mmap@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][12] ([i915#4079]) +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-atsm-1:         NOTRUN -> [SKIP][13] ([i915#6621])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@i915_pm_rps@basic-api.html
    - bat-dg2-8:          NOTRUN -> [SKIP][14] ([i915#6621])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@late_gt_pm:
    - bat-dg2-9:          [PASS][15] -> [ABORT][16] ([i915#10366])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-dg2-9/igt@i915_selftest@live@late_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-9/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_addfb_basic@size-max:
    - bat-atsm-1:         NOTRUN -> [SKIP][17] ([i915#6077]) +37 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@kms_addfb_basic@size-max.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-atsm-1:         NOTRUN -> [SKIP][18] ([i915#6078]) +22 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-atsm-1:         NOTRUN -> [SKIP][19] ([i915#6093]) +4 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
    - bat-atsm-1:         NOTRUN -> [SKIP][20] ([i915#1836]) +6 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

  * igt@kms_prop_blob@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][21] ([i915#7357])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@kms_prop_blob@basic.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - bat-dg2-8:          NOTRUN -> [SKIP][22] ([i915#9673] / [i915#9732]) +3 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-atsm-1:         NOTRUN -> [SKIP][23] ([i915#6094])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-8:          NOTRUN -> [SKIP][24] ([i915#3555])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg2-8:          NOTRUN -> [SKIP][25] ([i915#3708])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-atsm-1:         NOTRUN -> [SKIP][26] ([i915#4077]) +4 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg2-8:          NOTRUN -> [SKIP][27] ([i915#3708] / [i915#4077]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-atsm-1:         NOTRUN -> [SKIP][28] +2 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@prime_vgem@basic-write.html
    - bat-dg2-8:          NOTRUN -> [SKIP][29] ([i915#3291] / [i915#3708]) +2 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-await@ccs3:
    - bat-atsm-1:         [DMESG-WARN][30] -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-atsm-1/igt@gem_exec_fence@basic-await@ccs3.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@gem_exec_fence@basic-await@ccs3.html

  * igt@kms_pm_rpm@basic-rte:
    - bat-dg2-8:          [ABORT][32] ([i915#10367]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-dg2-8/igt@kms_pm_rpm@basic-rte.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@kms_pm_rpm@basic-rte.html

  
  [i915#10234]: https://gitlab.freedesktop.org/drm/intel/issues/10234
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10367]: https://gitlab.freedesktop.org/drm/intel/issues/10367
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732


Build changes
-------------

  * Linux: CI_DRM_14399 -> Patchwork_130822v1

  CI-20190529: 20190529
  CI_DRM_14399: ba2149e0e3add9f607c6d41e20479d85ceb0769d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_130822v1: ba2149e0e3add9f607c6d41e20479d85ceb0769d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cf1126633496 drm: ensure drm headers are self-contained and pass kernel-doc
0350353ea5a7 drm/ttm: fix ttm_kmap_iter.h kernel-doc warnings
c8c35e7be124 drm/ttm: fix ttm_execbuf_util.h kernel-doc warnings
55e74256c39c drm/ttm: make ttm_caching.h self-contained
aa67ddeede44 drm/ttm: fix ttm_bo.h kernel-doc warnings
e71abf733aab drm/i915/pxp: fix i915_pxp_tee_interface.h kernel-doc warnings
378438c769c1 drm/i915/hdcp: fix i915_hdcp_interface.h kernel-doc warnings
eaac1c856fb2 drm/i915: fix i915_gsc_proxy_mei_interface.h kernel-doc
a3f942150377 drm/suballoc: fix drm_suballoc.h kernel-doc
3d78de4ca733 drm/i2c: silence ch7006.h and sil164.h kernel-doc warnings
1d88a2e73104 drm/of: make drm_of.h self-contained
098d11300f9c drm: fix drm_gem_vram_helper.h kernel-doc
f841905bfd68 drm/lease: make drm_lease.h self-contained
87da3f1eb2ff drm: fix drm_format_helper.h kernel-doc warnings
d02dc59fa23b drm/encoder: silence drm_encoder_slave.h kernel-doc
b5bccd660ded drm/crc: make drm_debugfs_crc.h self-contained and fix kernel-doc
1b9dc885b9da drm/dp_mst: fix drm_dp_mst_helper.h kernel-doc
a23fb1e4dba6 drm: bridge: samsung-dsim: make samsung-dsim.h self-contained
686fe63b6fc3 drm/amdgpu: make amd_asic_type.h self-contained
7b0fbf508293 drm/kunit: fix drm_kunit_helpers.h kernel-doc
af12fb11b9c2 drm: add missing header guards to drm_internal.h
d594b3041421 drm/crtc: make drm_crtc_internal.h self-contained

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/index.html

--===============1934279292534049895==
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
<tr><td><b>Series:</b></td><td>drm: fix headers, add header test facility</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130822/">https://patchwork.freedesktop.org/series/130822/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14399 -&gt; Patchwork_130822v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_130822v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_130822v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130822v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@vgem_basic@unload:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-arls-2/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-arls-2/igt@vgem_basic@unload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130822v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-arls-3/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-arls-3/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10234">i915#10234</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-dg2-9/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-9/igt@i915_selftest@live@late_gt_pm.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@size-max:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@kms_addfb_basic@size-max.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6077">i915#6077</a>) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6078">i915#6078</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6093">i915#6093</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prop_blob@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@kms_prop_blob@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7357">i915#7357</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6094">i915#6094</a>)</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +4 other tests skip</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@prime_vgem@basic-write.html">SKIP</a> +2 other tests skip</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@ccs3:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-atsm-1/igt@gem_exec_fence@basic-await@ccs3.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-atsm-1/igt@gem_exec_fence@basic-await@ccs3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14399/bat-dg2-8/igt@kms_pm_rpm@basic-rte.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10367">i915#10367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v1/bat-dg2-8/igt@kms_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14399 -&gt; Patchwork_130822v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14399: ba2149e0e3add9f607c6d41e20479d85ceb0769d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_130822v1: ba2149e0e3add9f607c6d41e20479d85ceb0769d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cf1126633496 drm: ensure drm headers are self-contained and pass kernel-doc<br />
0350353ea5a7 drm/ttm: fix ttm_kmap_iter.h kernel-doc warnings<br />
c8c35e7be124 drm/ttm: fix ttm_execbuf_util.h kernel-doc warnings<br />
55e74256c39c drm/ttm: make ttm_caching.h self-contained<br />
aa67ddeede44 drm/ttm: fix ttm_bo.h kernel-doc warnings<br />
e71abf733aab drm/i915/pxp: fix i915_pxp_tee_interface.h kernel-doc warnings<br />
378438c769c1 drm/i915/hdcp: fix i915_hdcp_interface.h kernel-doc warnings<br />
eaac1c856fb2 drm/i915: fix i915_gsc_proxy_mei_interface.h kernel-doc<br />
a3f942150377 drm/suballoc: fix drm_suballoc.h kernel-doc<br />
3d78de4ca733 drm/i2c: silence ch7006.h and sil164.h kernel-doc warnings<br />
1d88a2e73104 drm/of: make drm_of.h self-contained<br />
098d11300f9c drm: fix drm_gem_vram_helper.h kernel-doc<br />
f841905bfd68 drm/lease: make drm_lease.h self-contained<br />
87da3f1eb2ff drm: fix drm_format_helper.h kernel-doc warnings<br />
d02dc59fa23b drm/encoder: silence drm_encoder_slave.h kernel-doc<br />
b5bccd660ded drm/crc: make drm_debugfs_crc.h self-contained and fix kernel-doc<br />
1b9dc885b9da drm/dp_mst: fix drm_dp_mst_helper.h kernel-doc<br />
a23fb1e4dba6 drm: bridge: samsung-dsim: make samsung-dsim.h self-contained<br />
686fe63b6fc3 drm/amdgpu: make amd_asic_type.h self-contained<br />
7b0fbf508293 drm/kunit: fix drm_kunit_helpers.h kernel-doc<br />
af12fb11b9c2 drm: add missing header guards to drm_internal.h<br />
d594b3041421 drm/crtc: make drm_crtc_internal.h self-contained</p>

</body>
</html>

--===============1934279292534049895==--
