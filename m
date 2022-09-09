Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E8B5B35BC
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 12:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B256410E2AE;
	Fri,  9 Sep 2022 10:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A6E3810E2AE;
 Fri,  9 Sep 2022 10:55:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9F7B4A0078;
 Fri,  9 Sep 2022 10:55:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4293788615133342531=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Fri, 09 Sep 2022 10:55:51 -0000
Message-ID: <166272095162.1363.7976722005144152656@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1662708705.git.mchehab@kernel.org>
In-Reply-To: <cover.1662708705.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fix_kernel-doc_issues_=28rev3=29?=
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

--===============4293788615133342531==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: fix kernel-doc issues (rev3)
URL   : https://patchwork.freedesktop.org/series/106224/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12104 -> Patchwork_106224v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_106224v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_106224v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/index.html

Participating hosts (39 -> 38)
------------------------------

  Additional (1): bat-dg2-9 
  Missing    (2): fi-rkl-11600 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106224v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@migrate:
    - fi-bdw-gvtdvm:      [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-bdw-gvtdvm/igt@i915_selftest@live@migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-bdw-gvtdvm/igt@i915_selftest@live@migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_106224v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - fi-blb-e6850:       NOTRUN -> [DMESG-FAIL][3] ([i915#4528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-blb-e6850/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][4] -> [DMESG-FAIL][5] ([i915#4528])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@ring_submission:
    - fi-cfl-8109u:       [PASS][6] -> [DMESG-WARN][7] ([i915#5904]) +30 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-cfl-8109u:       [PASS][8] -> [DMESG-WARN][9] ([i915#5904] / [i915#62])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [PASS][10] -> [DMESG-FAIL][11] ([i915#62]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-cfl-8109u:       [PASS][12] -> [DMESG-WARN][13] ([i915#62]) +10 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-cfl-8109u/igt@prime_vgem@basic-fence-flip.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-cfl-8109u/igt@prime_vgem@basic-fence-flip.html

  * igt@runner@aborted:
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][14] ([i915#4312])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-bdw-gvtdvm/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][15] ([i915#4528]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-1}:       [DMESG-FAIL][17] ([i915#4983]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/bat-rpls-1/igt@i915_selftest@live@reset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][19] ([i915#6298]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][21] ([i915#4494] / [i915#4957]) -> [DMESG-FAIL][22] ([i915#4957])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5904]: https://gitlab.freedesktop.org/drm/intel/issues/5904
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6471]: https://gitlab.freedesktop.org/drm/intel/issues/6471
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621


Build changes
-------------

  * Linux: CI_DRM_12104 -> Patchwork_106224v3

  CI-20190529: 20190529
  CI_DRM_12104: 5c4fd00a7d3762801991034aa3e87967541ecb02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6649: 7d91a6952dadaa9001b662ed60c08ccb8364929d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106224v3: 5c4fd00a7d3762801991034aa3e87967541ecb02 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5e82c9a413d7 drm/i915: be consistent with kernel-doc function declaration
b1f949c37107 drm/i915: add GuC functions to the documentation
851418920e68 drm/i915: add descriptions for some RPM macros at intel_gt_pm.h
797aaf577b0e drm/i915: document struct drm_i915_gem_object
a93b552953da drm/i915 i915_gem_object_types.h: document struct i915_lut_handle
043aa29847d6 docs: gpu: i915.rst: add the remaining kernel-doc markup files
8e69aadc7bba docs: gpu: i915.rst: GEM/TTM: add more kernel-doc markups
7a0329ce783b docs: gpu: i915.rst: PM: add more kernel-doc markups
f2a05cbb206b docs: gpu: i915.rst: GVT: add more kernel-doc markups
269738f90300 docs: gpu: i915.rst: GuC: add more kernel-doc markups
034a0d12557e docs: gpu: i915.rst: gt: add more kernel-doc markups
036124b2b73a docs: gpu: i915.rst: display: add kernel-doc markups
ec602b50dfab drm/i915: i915_deps: use a shorter title markup
2e15aa86fd2a drm/i915: i915_scatterlist.h: fix some kernel-doc markups
01fd0cdeb6a4 drm/i915: i915_gem.c fix a kernel-doc issue
0e97779d8d42 drm/i915: i915_vma_resource.c: fix some kernel-doc markups
450849af529f drm/i915: dvo_sil164.c: use SPDX header
e6b39a56976b drm/i915: dvo_ch7xxx.c: use SPDX header
99f37ff5131b drm/i915: stop using kernel-doc markups for something else
abf6ffdbc662 drm/i915: fix i915_gem_ttm_move.c DOC: markup
c94dfd402e0c drm/i915: i915_gem_wait.c: fix a kernel-doc markup
fe4ed185d65d drm/i915: i915_gem_region.h: fix i915_gem_apply_to_region_ops doc
ad7fe51847c9 drm/i915: intel_pm.c: fix some ascii artwork at kernel-doc
9665132e6b2e drm/i915: skl_scaler: fix return value kernel-doc markup
7f2096183507 drm/i915: intel_fb: fix a kernel-doc issue with Sphinx
55f3570c03c8 drm/i915: intel_dp_link_training.c: fix kernel-doc markup
9241d9524ac0 drm/i915: document kernel-doc trivial issues
ccb19ded4e30 drm/i915: i915_gpu_error.c: document dump_flags
bfb3126d1e54 drm/i915: gem: add kernel-doc description for some function parameters
a1c1655903f8 drm/i915: i915_gem_ttm_pm.c: fix kernel-doc markups
141f823a654b drm/i915: i915_gem_ttm: fix a kernel-doc markup
b3ea60642114 drm/i915: intel_wakeref.h: fix some kernel-doc markups
2f080506cce0 drm/i915: gem: fix some Kernel-doc issues
eedcc11298f0 drm/i915: gvt: fix kernel-doc trivial warnings
74b452225a8b drm/i915: gt: fix some Kernel-doc issues
b23f0b144016 drm/i915: display: fix kernel-doc markup warnings
7bc40fa46ad8 drm/i915: fix kernel-doc trivial warnings on i915/*.[ch] files

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/index.html

--===============4293788615133342531==
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
<tr><td><b>Series:</b></td><td>drm/i915: fix kernel-doc issues (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106224/">https://patchwork.freedesktop.org/series/106224/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12104 -&gt; Patchwork_106224v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_106224v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_106224v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Additional (1): bat-dg2-9 <br />
  Missing    (2): fi-rkl-11600 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_106224v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-bdw-gvtdvm/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-bdw-gvtdvm/igt@i915_selftest@live@migrate.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106224v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-blb-e6850/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-cfl-8109u/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-cfl-8109u/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12104/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106224v3/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12104 -&gt; Patchwork_106224v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12104: 5c4fd00a7d3762801991034aa3e87967541ecb02 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6649: 7d91a6952dadaa9001b662ed60c08ccb8364929d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106224v3: 5c4fd00a7d3762801991034aa3e87967541ecb02 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5e82c9a413d7 drm/i915: be consistent with kernel-doc function declaration<br />
b1f949c37107 drm/i915: add GuC functions to the documentation<br />
851418920e68 drm/i915: add descriptions for some RPM macros at intel_gt_pm.h<br />
797aaf577b0e drm/i915: document struct drm_i915_gem_object<br />
a93b552953da drm/i915 i915_gem_object_types.h: document struct i915_lut_handle<br />
043aa29847d6 docs: gpu: i915.rst: add the remaining kernel-doc markup files<br />
8e69aadc7bba docs: gpu: i915.rst: GEM/TTM: add more kernel-doc markups<br />
7a0329ce783b docs: gpu: i915.rst: PM: add more kernel-doc markups<br />
f2a05cbb206b docs: gpu: i915.rst: GVT: add more kernel-doc markups<br />
269738f90300 docs: gpu: i915.rst: GuC: add more kernel-doc markups<br />
034a0d12557e docs: gpu: i915.rst: gt: add more kernel-doc markups<br />
036124b2b73a docs: gpu: i915.rst: display: add kernel-doc markups<br />
ec602b50dfab drm/i915: i915_deps: use a shorter title markup<br />
2e15aa86fd2a drm/i915: i915_scatterlist.h: fix some kernel-doc markups<br />
01fd0cdeb6a4 drm/i915: i915_gem.c fix a kernel-doc issue<br />
0e97779d8d42 drm/i915: i915_vma_resource.c: fix some kernel-doc markups<br />
450849af529f drm/i915: dvo_sil164.c: use SPDX header<br />
e6b39a56976b drm/i915: dvo_ch7xxx.c: use SPDX header<br />
99f37ff5131b drm/i915: stop using kernel-doc markups for something else<br />
abf6ffdbc662 drm/i915: fix i915_gem_ttm_move.c DOC: markup<br />
c94dfd402e0c drm/i915: i915_gem_wait.c: fix a kernel-doc markup<br />
fe4ed185d65d drm/i915: i915_gem_region.h: fix i915_gem_apply_to_region_ops doc<br />
ad7fe51847c9 drm/i915: intel_pm.c: fix some ascii artwork at kernel-doc<br />
9665132e6b2e drm/i915: skl_scaler: fix return value kernel-doc markup<br />
7f2096183507 drm/i915: intel_fb: fix a kernel-doc issue with Sphinx<br />
55f3570c03c8 drm/i915: intel_dp_link_training.c: fix kernel-doc markup<br />
9241d9524ac0 drm/i915: document kernel-doc trivial issues<br />
ccb19ded4e30 drm/i915: i915_gpu_error.c: document dump_flags<br />
bfb3126d1e54 drm/i915: gem: add kernel-doc description for some function parameters<br />
a1c1655903f8 drm/i915: i915_gem_ttm_pm.c: fix kernel-doc markups<br />
141f823a654b drm/i915: i915_gem_ttm: fix a kernel-doc markup<br />
b3ea60642114 drm/i915: intel_wakeref.h: fix some kernel-doc markups<br />
2f080506cce0 drm/i915: gem: fix some Kernel-doc issues<br />
eedcc11298f0 drm/i915: gvt: fix kernel-doc trivial warnings<br />
74b452225a8b drm/i915: gt: fix some Kernel-doc issues<br />
b23f0b144016 drm/i915: display: fix kernel-doc markup warnings<br />
7bc40fa46ad8 drm/i915: fix kernel-doc trivial warnings on i915/*.[ch] files</p>

</body>
</html>

--===============4293788615133342531==--
