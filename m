Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D28C34C0A53
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 04:37:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E31C210E6F2;
	Wed, 23 Feb 2022 03:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6DEB610E6F1;
 Wed, 23 Feb 2022 03:37:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 69905A0003;
 Wed, 23 Feb 2022 03:37:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7913291975895437677=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin" <arunpravin.paneerselvam@amd.com>
Date: Wed, 23 Feb 2022 03:37:29 -0000
Message-ID: <164558744939.25287.5246187496375177591@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222174845.2175-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220222174845.2175-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/7=5D_drm/selftests=3A_Move_i915_bud?=
 =?utf-8?q?dy_selftests_into_drm?=
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

--===============7913291975895437677==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/7] drm/selftests: Move i915 buddy selftests into drm
URL   : https://patchwork.freedesktop.org/series/100598/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11268 -> Patchwork_22361
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22361/index.html

Participating hosts (20 -> 17)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (4): fi-icl-u2 shard-rkl shard-dg1 shard-tglu 

Known issues
------------

  Here are the changes found in Patchwork_22361 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][1] -> [DMESG-FAIL][2] ([i915#5026])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22361/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271]) +57 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22361/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-blb-e6850:       NOTRUN -> [FAIL][4] ([fdo#109271] / [i915#2403] / [i915#2426] / [i915#4312])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22361/fi-blb-e6850/igt@runner@aborted.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][5] ([i915#4957]) -> [DMESG-FAIL][6] ([i915#4494] / [i915#4957])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22361/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5026]: https://gitlab.freedesktop.org/drm/intel/issues/5026
  [i915#5068]: https://gitlab.freedesktop.org/drm/intel/issues/5068


Build changes
-------------

  * Linux: CI_DRM_11268 -> Patchwork_22361

  CI-20190529: 20190529
  CI_DRM_11268: 26326bf05392ab3da8cba36642a0efec97f00da9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6352: 11b4d227d8f0efad522519c8fd9525774247c8d8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22361: f5edaa7db6d7414eeb70e51fc79bdcfed83943d2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f5edaa7db6d7 drm/selftests: add drm buddy pathological testcase
aa15ac08715a drm/selftests: add drm buddy smoke testcase
01e27a9237ed drm/selftests: add drm buddy pessimistic testcase
cdf118d834e7 drm/selftests: add drm buddy optimistic testcase
76bc718400f9 drm/selftests: add drm buddy alloc range testcase
c1ff1a372360 drm/selftests: add drm buddy alloc limit testcase
c2f145f475fd drm/selftests: Move i915 buddy selftests into drm

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22361/index.html

--===============7913291975895437677==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/7] drm/selftests: Move i915 buddy selftests into drm</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100598/">https://patchwork.freedesktop.org/series/100598/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22361/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22361/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11268 -&gt; Patchwork_22361</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22361/index.html</p>
<h2>Participating hosts (20 -&gt; 17)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (4): fi-icl-u2 shard-rkl shard-dg1 shard-tglu </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22361 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22361/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5026">i915#5026</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22361/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22361/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22361/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11268 -&gt; Patchwork_22361</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11268: 26326bf05392ab3da8cba36642a0efec97f00da9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6352: 11b4d227d8f0efad522519c8fd9525774247c8d8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22361: f5edaa7db6d7414eeb70e51fc79bdcfed83943d2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f5edaa7db6d7 drm/selftests: add drm buddy pathological testcase<br />
aa15ac08715a drm/selftests: add drm buddy smoke testcase<br />
01e27a9237ed drm/selftests: add drm buddy pessimistic testcase<br />
cdf118d834e7 drm/selftests: add drm buddy optimistic testcase<br />
76bc718400f9 drm/selftests: add drm buddy alloc range testcase<br />
c1ff1a372360 drm/selftests: add drm buddy alloc limit testcase<br />
c2f145f475fd drm/selftests: Move i915 buddy selftests into drm</p>

</body>
</html>

--===============7913291975895437677==--
