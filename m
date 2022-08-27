Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4285A3A00
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Aug 2022 22:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1723D10E65A;
	Sat, 27 Aug 2022 20:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C555810ED89;
 Sat, 27 Aug 2022 20:39:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BC696A7DFB;
 Sat, 27 Aug 2022 20:39:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5350846293947305259=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Sat, 27 Aug 2022 20:39:42 -0000
Message-ID: <166163278274.5228.17800330312636310498@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220827194403.6495-1-andi.shyti@linux.intel.com>
In-Reply-To: <20220827194403.6495-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev2=29?=
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

--===============5350846293947305259==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev2)
URL   : https://patchwork.freedesktop.org/series/105879/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12035 -> Patchwork_105879v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105879v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105879v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/index.html

Participating hosts (42 -> 29)
------------------------------

  Missing    (13): fi-jsl-1 fi-rkl-11600 bat-dg1-5 fi-hsw-4200u bat-dg2-8 bat-adlp-4 fi-ctg-p8600 bat-adln-1 bat-rplp-1 bat-dg2-10 fi-ehl-2 fi-bsw-nick fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105879v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-pnv-d510/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-pnv-d510/igt@i915_module_load@load.html
    - fi-snb-2520m:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-snb-2520m/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-snb-2520m/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-elk-e7500/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-elk-e7500/igt@i915_module_load@load.html
    - fi-hsw-g3258:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-hsw-g3258/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-hsw-g3258/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-hsw-4770/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-ivb-3770/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-ivb-3770/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_105879v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][13] ([i915#4312] / [i915#5594] / [i915#6246])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-hsw-4770/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][14] ([i915#4312] / [i915#6219])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][15] ([i915#4312])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-elk-e7500/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][16] ([i915#2403] / [i915#4312])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-pnv-d510/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][17] ([i915#4312])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-snb-2520m/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][18] ([i915#4312] / [i915#6246])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - {bat-rpls-1}:       [INCOMPLETE][19] ([i915#6257] / [i915#6380]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/bat-rpls-1/igt@i915_selftest@live@requests.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/bat-rpls-1/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][21] ([i915#4494] / [i915#4957]) -> [DMESG-FAIL][22] ([i915#4957])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380


Build changes
-------------

  * Linux: CI_DRM_12035 -> Patchwork_105879v2

  CI-20190529: 20190529
  CI_DRM_12035: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105879v2: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bd4792878f5c drm/i915: Enable execbuf3 ioctl for vm_bind
54b852762b46 drm/i915/ioctl: Enable the vm_bind/unbind ioctls
5ac12b25cc3a drm/i915: Extend getparm for VM_BIND capability
3ff254d1c5a4 drm/i915/vm_bind: Skip vma_lookup for persistent vmas
7bcf9b83a12e drm/i915/vm_bind: userptr dma-resv changes
f48374784786 drm/i915/vm_bind: Handle persistent vmas in execbuf3
390e30454afc drm/i915: Add i915_vma_is_bind_complete()
97c5a52c8a55 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl
ac406bc1e3cf drm/i915: Do not support vm_bind mode in execbuf2
dff2602fdd43 drm/i915/vm_bind: Add out fence support
79b9e5b8f321 drm/i915/vm_bind: Handle persistent vmas
494a762698a9 drm/i915/dmabuf: Deny the dmabuf export for VM private BOs
79f1eb089787 drm/i915: Support for VM private BOs
3328ec614634 drm/i915: Implement bind and unbind of object
90d5031f1366 drm/i915/gem: expose i915_gem_object_max_page_size() in i915_gem_object.h
dcaaf66f0c36 drm/i915: Mark vm for vm_bind usage at creation
ed3d9e130166 drm/i915: Expose vm_lookup in i915_gem_context.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/index.html

--===============5350846293947305259==
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
<tr><td><b>Series:</b></td><td>drm/i915/vm_bind: Add VM_BIND functionality (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105879/">https://patchwork.freedesktop.org/series/105879/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12035 -&gt; Patchwork_105879v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105879v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_105879v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/index.html</p>
<h2>Participating hosts (42 -&gt; 29)</h2>
<p>Missing    (13): fi-jsl-1 fi-rkl-11600 bat-dg1-5 fi-hsw-4200u bat-dg2-8 bat-adlp-4 fi-ctg-p8600 bat-adln-1 bat-rplp-1 bat-dg2-10 fi-ehl-2 fi-bsw-nick fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105879v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-pnv-d510/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-snb-2520m/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-snb-2520m/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-elk-e7500/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-hsw-g3258/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-hsw-g3258/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-hsw-4770/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-ivb-3770/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105879v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/bat-rpls-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6257">i915#6257</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6380">i915#6380</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12035 -&gt; Patchwork_105879v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12035: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105879v2: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bd4792878f5c drm/i915: Enable execbuf3 ioctl for vm_bind<br />
54b852762b46 drm/i915/ioctl: Enable the vm_bind/unbind ioctls<br />
5ac12b25cc3a drm/i915: Extend getparm for VM_BIND capability<br />
3ff254d1c5a4 drm/i915/vm_bind: Skip vma_lookup for persistent vmas<br />
7bcf9b83a12e drm/i915/vm_bind: userptr dma-resv changes<br />
f48374784786 drm/i915/vm_bind: Handle persistent vmas in execbuf3<br />
390e30454afc drm/i915: Add i915_vma_is_bind_complete()<br />
97c5a52c8a55 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl<br />
ac406bc1e3cf drm/i915: Do not support vm_bind mode in execbuf2<br />
dff2602fdd43 drm/i915/vm_bind: Add out fence support<br />
79b9e5b8f321 drm/i915/vm_bind: Handle persistent vmas<br />
494a762698a9 drm/i915/dmabuf: Deny the dmabuf export for VM private BOs<br />
79f1eb089787 drm/i915: Support for VM private BOs<br />
3328ec614634 drm/i915: Implement bind and unbind of object<br />
90d5031f1366 drm/i915/gem: expose i915_gem_object_max_page_size() in i915_gem_object.h<br />
dcaaf66f0c36 drm/i915: Mark vm for vm_bind usage at creation<br />
ed3d9e130166 drm/i915: Expose vm_lookup in i915_gem_context.h</p>

</body>
</html>

--===============5350846293947305259==--
