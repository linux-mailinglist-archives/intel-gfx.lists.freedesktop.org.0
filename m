Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9891543BE75
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 02:24:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75CD56E200;
	Wed, 27 Oct 2021 00:24:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5E12B6E200;
 Wed, 27 Oct 2021 00:24:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 542D4A363C;
 Wed, 27 Oct 2021 00:24:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2058785041045601085=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Oct 2021 00:24:50 -0000
Message-ID: <163529429030.4641.4948656745970915804@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211026225105.2783797-1-imre.deak@intel.com>
In-Reply-To: <20211026225105.2783797-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/adlp/fb=3A_Remove_CCS_FB_stride_restrictions?=
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

--===============2058785041045601085==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/adlp/fb: Remove CCS FB stride restrictions
URL   : https://patchwork.freedesktop.org/series/96322/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10792 -> Patchwork_21454
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/index.html

Participating hosts (38 -> 35)
------------------------------

  Additional (2): fi-ilk-650 fi-pnv-d510 
  Missing    (5): bat-dg1-6 bat-dg1-5 bat-adlp-4 fi-ctg-p8600 fi-elk-e7500 

Known issues
------------

  Here are the changes found in Patchwork_21454 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@nop-compute0:
    - fi-ilk-650:         NOTRUN -> [SKIP][1] ([fdo#109271]) +35 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][2] -> [FAIL][3] ([i915#1888])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][4] -> [INCOMPLETE][5] ([i915#3921])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-ilk-650:         NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][7] ([fdo#109271]) +53 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-hsw-gt1}:       [DMESG-WARN][8] ([i915#4290]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4290]: https://gitlab.freedesktop.org/drm/intel/issues/4290


Build changes
-------------

  * IGT: IGT_6262 -> IGTPW_6353
  * Linux: CI_DRM_10792 -> Patchwork_21454

  CI-20190529: 20190529
  CI_DRM_10792: 299777ddcc06c9a0ea7b95a0823ccaca268d16b8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6353: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6353/index.html
  IGT_6262: d1c793b26e31cc6ae3f9fa3239805a9bbcc749fb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21454: b599bcdbbdaf8b03711af84b82fe8f19c12afb62 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b599bcdbbdaf drm/i915/adlp/fb: Remove restriction on CCS AUX plane strides
02233c237439 drm/i915/adlp/fb: Remove restriction on semiplanar UV plane offset
c22064ad4251 drm/i915/fb: Rename i915_color_plane_view::stride to mapping_stride
afe502a5c79a drm/i915/adlp/fb: Fix remapping of linear CCS AUX surfaces
cc21aac93ca8 drm/i915/fb: Factor out functions to remap contiguous FB obj pages
a3c4b2242791 drm/i915/adlp/fb: Prevent the mapping of redundant trailing padding NULL pages
9cba4428b32d drm/i915/fb: Fix rounding error in subsampled plane size calculation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/index.html

--===============2058785041045601085==
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
<tr><td><b>Series:</b></td><td>drm/i915/adlp/fb: Remove CCS FB stride restrictions</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96322/">https://patchwork.freedesktop.org/series/96322/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10792 -&gt; Patchwork_21454</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Additional (2): fi-ilk-650 fi-pnv-d510 <br />
  Missing    (5): bat-dg1-6 bat-dg1-5 bat-adlp-4 fi-ctg-p8600 fi-elk-e7500 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21454 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-compute0:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4290">i915#4290</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6262 -&gt; IGTPW_6353</li>
<li>Linux: CI_DRM_10792 -&gt; Patchwork_21454</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10792: 299777ddcc06c9a0ea7b95a0823ccaca268d16b8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6353: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6353/index.html<br />
  IGT_6262: d1c793b26e31cc6ae3f9fa3239805a9bbcc749fb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21454: b599bcdbbdaf8b03711af84b82fe8f19c12afb62 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b599bcdbbdaf drm/i915/adlp/fb: Remove restriction on CCS AUX plane strides<br />
02233c237439 drm/i915/adlp/fb: Remove restriction on semiplanar UV plane offset<br />
c22064ad4251 drm/i915/fb: Rename i915_color_plane_view::stride to mapping_stride<br />
afe502a5c79a drm/i915/adlp/fb: Fix remapping of linear CCS AUX surfaces<br />
cc21aac93ca8 drm/i915/fb: Factor out functions to remap contiguous FB obj pages<br />
a3c4b2242791 drm/i915/adlp/fb: Prevent the mapping of redundant trailing padding NULL pages<br />
9cba4428b32d drm/i915/fb: Fix rounding error in subsampled plane size calculation</p>

</body>
</html>

--===============2058785041045601085==--
