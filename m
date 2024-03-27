Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF51088D3BA
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 02:28:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A8A10F60C;
	Wed, 27 Mar 2024 01:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDFA310F2E1;
 Wed, 27 Mar 2024 01:28:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7662594090176578711=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/hwmon=3A_Remove_i9?=
 =?utf-8?q?15=5Fhwmon=5Funregister=28=29_during_driver_unbind?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Badal Nilawar" <badal.nilawar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Mar 2024 01:28:01 -0000
Message-ID: <171150288177.1054669.15775673672671947919@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240326124838.3049215-1-badal.nilawar@intel.com>
In-Reply-To: <20240326124838.3049215-1-badal.nilawar@intel.com>
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

--===============7662594090176578711==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hwmon: Remove i915_hwmon_unregister() during driver unbind
URL   : https://patchwork.freedesktop.org/series/131630/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14489 -> Patchwork_131630v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131630v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131630v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/index.html

Participating hosts (38 -> 35)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (4): bat-arls-4 fi-glk-j4005 bat-dg2-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131630v1:

### IGT changes ###

#### Possible regressions ####

  * igt@dmabuf@all-tests@dma_fence:
    - bat-arls-1:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-arls-1/igt@dmabuf@all-tests@dma_fence.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/bat-arls-1/igt@dmabuf@all-tests@dma_fence.html

  * igt@dmabuf@all-tests@sanitycheck:
    - bat-arls-1:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-arls-1/igt@dmabuf@all-tests@sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/bat-arls-1/igt@dmabuf@all-tests@sanitycheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_131630v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][5] ([i915#8293])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/fi-kbl-8809g/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-14:         [PASS][6] -> [FAIL][7] ([i915#10378])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_selftest@live@evict:
    - bat-arls-3:         [PASS][8] -> [DMESG-WARN][9] ([i915#10341])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-arls-3/igt@i915_selftest@live@evict.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/bat-arls-3/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@guc_hang:
    - bat-arls-3:         [PASS][10] -> [DMESG-FAIL][11] ([i915#10262]) +14 other tests dmesg-fail
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-arls-3/igt@i915_selftest@live@guc_hang.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/bat-arls-3/igt@i915_selftest@live@guc_hang.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@ring_submission:
    - bat-dg2-14:         [ABORT][12] ([i915#10366]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-dg2-14/igt@i915_selftest@live@ring_submission.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/bat-dg2-14/igt@i915_selftest@live@ring_submission.html

  
  [i915#10262]: https://gitlab.freedesktop.org/drm/intel/issues/10262
  [i915#10341]: https://gitlab.freedesktop.org/drm/intel/issues/10341
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14489 -> Patchwork_131630v1

  CI-20190529: 20190529
  CI_DRM_14489: f9c56f1a03b5c35488671e4ffe61e28b12ffe163 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7785: 7785
  Patchwork_131630v1: f9c56f1a03b5c35488671e4ffe61e28b12ffe163 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

76293951f9bd drm/i915/hwmon: Remove i915_hwmon_unregister() during driver unbind

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/index.html

--===============7662594090176578711==
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
<tr><td><b>Series:</b></td><td>drm/i915/hwmon: Remove i915_hwmon_unregister() during driver unbind</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131630/">https://patchwork.freedesktop.org/series/131630/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14489 -&gt; Patchwork_131630v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131630v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131630v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (4): bat-arls-4 fi-glk-j4005 bat-dg2-11 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131630v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-arls-1/igt@dmabuf@all-tests@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/bat-arls-1/igt@dmabuf@all-tests@dma_fence.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-arls-1/igt@dmabuf@all-tests@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/bat-arls-1/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131630v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/fi-kbl-8809g/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-arls-3/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/bat-arls-3/igt@i915_selftest@live@evict.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10341">i915#10341</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-arls-3/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/bat-arls-3/igt@i915_selftest@live@guc_hang.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10262">i915#10262</a>) +14 other tests dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@ring_submission:<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-dg2-14/igt@i915_selftest@live@ring_submission.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131630v1/bat-dg2-14/igt@i915_selftest@live@ring_submission.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14489 -&gt; Patchwork_131630v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14489: f9c56f1a03b5c35488671e4ffe61e28b12ffe163 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7785: 7785<br />
  Patchwork_131630v1: f9c56f1a03b5c35488671e4ffe61e28b12ffe163 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>76293951f9bd drm/i915/hwmon: Remove i915_hwmon_unregister() during driver unbind</p>

</body>
</html>

--===============7662594090176578711==--
