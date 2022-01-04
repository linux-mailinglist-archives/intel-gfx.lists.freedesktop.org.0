Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F338D484B37
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 00:34:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B59110E31D;
	Tue,  4 Jan 2022 23:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3AAF10E31D;
 Tue,  4 Jan 2022 23:34:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF182A73C9;
 Tue,  4 Jan 2022 23:34:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8916821292479829042=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Tue, 04 Jan 2022 23:34:01 -0000
Message-ID: <164133924194.30367.4330468164429839494@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211219212500.61432-1-andi.shyti@linux.intel.com>
In-Reply-To: <20211219212500.61432-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgTW9y?=
 =?utf-8?q?e_preparation_for_multi_gt_patches_=28rev3=29?=
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

--===============8916821292479829042==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: More preparation for multi gt patches (rev3)
URL   : https://patchwork.freedesktop.org/series/98215/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11046 -> Patchwork_21921
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21921 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21921, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/index.html

Participating hosts (50 -> 35)
------------------------------

  Missing    (15): fi-kbl-soraka fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-icl-u2 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-pnv-d510 bat-rpls-1 fi-bdw-samus bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21921:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_21921 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][4] -> [DMESG-WARN][5] ([i915#4269])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][6] ([i915#2426] / [i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][8] ([i915#2940]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      [SKIP][10] ([i915#1072]) -> [SKIP][11] ([fdo#110189]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312


Build changes
-------------

  * Linux: CI_DRM_11046 -> Patchwork_21921

  CI-20190529: 20190529
  CI_DRM_11046: ee55310525cbff1a700aeeaf08f63a0f7b33c521 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6322: b0b7679b358b300b7b6bf42c6921d0aa1fc14388 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21921: 462f50e3499f5b4a791814c4821fa8120f0c7dd3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

462f50e3499f drm/i915: Remove unused i915->ggtt
7e25a514b822 drm/i915/selftests: Use to_gt() helper for GGTT accesses
4d0e5e2c0049 drm/i915/display: Use to_gt() helper for GGTT accesses
0062e64281bd drm/i915/gem: Use to_gt() helper for GGTT accesses
9eaaac9e4a25 drm/i915: Use to_gt() helper for GGTT accesses
c7c755be7a63 drm/i915/gt: Use to_gt() helper for GGTT accesses

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/index.html

--===============8916821292479829042==
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
<tr><td><b>Series:</b></td><td>More preparation for multi gt patches (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98215/">https://patchwork.freedesktop.org/series/98215/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11046 -&gt; Patchwork_21921</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21921 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21921, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/index.html</p>
<h2>Participating hosts (50 -&gt; 35)</h2>
<p>Missing    (15): fi-kbl-soraka fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-icl-u2 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-pnv-d510 bat-rpls-1 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21921:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21921 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@primary_mmap_gtt:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21921/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11046 -&gt; Patchwork_21921</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11046: ee55310525cbff1a700aeeaf08f63a0f7b33c521 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6322: b0b7679b358b300b7b6bf42c6921d0aa1fc14388 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21921: 462f50e3499f5b4a791814c4821fa8120f0c7dd3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>462f50e3499f drm/i915: Remove unused i915-&gt;ggtt<br />
7e25a514b822 drm/i915/selftests: Use to_gt() helper for GGTT accesses<br />
4d0e5e2c0049 drm/i915/display: Use to_gt() helper for GGTT accesses<br />
0062e64281bd drm/i915/gem: Use to_gt() helper for GGTT accesses<br />
9eaaac9e4a25 drm/i915: Use to_gt() helper for GGTT accesses<br />
c7c755be7a63 drm/i915/gt: Use to_gt() helper for GGTT accesses</p>

</body>
</html>

--===============8916821292479829042==--
