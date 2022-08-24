Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB21059FFB9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 18:44:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B2E9BB619;
	Wed, 24 Aug 2022 16:44:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E4FC7BC07F;
 Wed, 24 Aug 2022 16:44:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9D19A00E8;
 Wed, 24 Aug 2022 16:44:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3378761877405655227=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luben Tuikov" <Luben.Tuikov@amd.com>
Date: Wed, 24 Aug 2022 16:44:30 -0000
Message-ID: <166135947082.9873.9488752111667506259@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220824142353.10293-1-luben.tuikov@amd.com>
In-Reply-To: <20220824142353.10293-1-luben.tuikov@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_audit_bo-=3Eresource_us?=
 =?utf-8?q?age?=
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

--===============3378761877405655227==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: audit bo->resource usage
URL   : https://patchwork.freedesktop.org/series/107680/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12021 -> Patchwork_107680v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107680v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107680v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): fi-hsw-4770 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107680v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-dg1-6:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg1-6/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-dg1-6/igt@i915_module_load@load.html

  * igt@i915_selftest@live@memory_region:
    - bat-dg1-5:          [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg1-5/igt@i915_selftest@live@memory_region.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-dg1-5/igt@i915_selftest@live@memory_region.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {bat-dg2-9}:        [PASS][5] -> [{ABORT}][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html
    - {bat-dg2-11}:       [PASS][7] -> [{ABORT}][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_lmem_swapping@basic:
    - {bat-dg2-8}:        NOTRUN -> [SKIP][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-dg2-8/igt@gem_lmem_swapping@basic.html

  * igt@i915_module_load@load:
    - {bat-dg2-10}:       [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg2-10/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-dg2-10/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_107680v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][12] ([i915#6598] / [i915#6601])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][13] ([i915#6219])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rplp-1}:       [DMESG-WARN][14] ([i915#2867]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][16] ([i915#4528]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/fi-pnv-d510/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][18] -> [FAIL][19] ([i915#6298])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6601]: https://gitlab.freedesktop.org/drm/intel/issues/6601


Build changes
-------------

  * Linux: CI_DRM_12021 -> Patchwork_107680v1

  CI-20190529: 20190529
  CI_DRM_12021: 078959b4819e4e0ab8cf2965e7bfd98278c0b35d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107680v1: 078959b4819e4e0ab8cf2965e7bfd98278c0b35d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d89370bd4ce1 drm/ttm: stop allocating a dummy resource for pipelined gutting
5700995ed3d0 drm/ttm: stop allocating dummy resources during BO creation
2f18a077f77a drm/i915: audit bo->resource usage

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/index.html

--===============3378761877405655227==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: audit bo-&gt;resource usage</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107680/">https://patchwork.freedesktop.org/series/107680/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12021 -&gt; Patchwork_107680v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107680v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107680v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): fi-hsw-4770 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107680v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg1-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-dg1-6/igt@i915_module_load@load.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@memory_region:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg1-5/igt@i915_selftest@live@memory_region.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-dg1-5/igt@i915_selftest@live@memory_region.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html">{ABORT}</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">{ABORT}</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-dg2-8/igt@gem_lmem_swapping@basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-dg2-10}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg2-10/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-dg2-10/igt@i915_module_load@load.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107680v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6601">i915#6601</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107680v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12021 -&gt; Patchwork_107680v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12021: 078959b4819e4e0ab8cf2965e7bfd98278c0b35d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107680v1: 078959b4819e4e0ab8cf2965e7bfd98278c0b35d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d89370bd4ce1 drm/ttm: stop allocating a dummy resource for pipelined gutting<br />
5700995ed3d0 drm/ttm: stop allocating dummy resources during BO creation<br />
2f18a077f77a drm/i915: audit bo-&gt;resource usage</p>

</body>
</html>

--===============3378761877405655227==--
