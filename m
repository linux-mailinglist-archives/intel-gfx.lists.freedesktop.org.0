Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10827484E05
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 07:10:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57D1E10F588;
	Wed,  5 Jan 2022 06:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D4C6710F589;
 Wed,  5 Jan 2022 06:10:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2E27A0099;
 Wed,  5 Jan 2022 06:10:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7755435210217765003=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Wed, 05 Jan 2022 06:10:13 -0000
Message-ID: <164136301383.25404.13685045577197880667@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211219212500.61432-1-andi.shyti@linux.intel.com>
In-Reply-To: <20211219212500.61432-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTW9y?=
 =?utf-8?q?e_preparation_for_multi_gt_patches_=28rev4=29?=
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

--===============7755435210217765003==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: More preparation for multi gt patches (rev4)
URL   : https://patchwork.freedesktop.org/series/98215/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11047 -> Patchwork_21923
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/index.html

Participating hosts (48 -> 35)
------------------------------

  Missing    (13): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-pnv-d510 bat-rpls-1 fi-bdw-samus bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_21923 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][1] -> [INCOMPLETE][2] ([i915#3921])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - fi-skl-6600u:       [INCOMPLETE][3] ([i915#4794]) -> [FAIL][4] ([i915#4547])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/fi-skl-6600u/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/fi-skl-6600u/igt@i915_selftest@live.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][5] ([i915#1436] / [i915#2722] / [i915#4312]) -> [FAIL][6] ([i915#1436] / [i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/fi-skl-6600u/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/fi-skl-6600u/igt@runner@aborted.html

  
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4794]: https://gitlab.freedesktop.org/drm/intel/issues/4794


Build changes
-------------

  * Linux: CI_DRM_11047 -> Patchwork_21923

  CI-20190529: 20190529
  CI_DRM_11047: f50e5d7abd1873b3488081da88dc8412584280b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6323: 9dbaa0d5be7a859cda9b7d54c20ba96a596f43bd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21923: 7f9fe7d9fcfd87c623d051ffa9d57996dfd08131 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7f9fe7d9fcfd drm/i915: Remove unused i915->ggtt
dd2830cfee21 drm/i915/selftests: Use to_gt() helper for GGTT accesses
d1f4dc7bb6bb drm/i915/display: Use to_gt() helper for GGTT accesses
5f1faa95095c drm/i915/gem: Use to_gt() helper for GGTT accesses
afd4ed1a47d2 drm/i915: Use to_gt() helper for GGTT accesses
4f190d35025d drm/i915/gt: Use to_gt() helper for GGTT accesses

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/index.html

--===============7755435210217765003==
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
<tr><td><b>Series:</b></td><td>More preparation for multi gt patches (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98215/">https://patchwork.freedesktop.org/series/98215/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11047 -&gt; Patchwork_21923</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/index.html</p>
<h2>Participating hosts (48 -&gt; 35)</h2>
<p>Missing    (13): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-pnv-d510 bat-rpls-1 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21923 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/fi-skl-6600u/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4794">i915#4794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/fi-skl-6600u/igt@i915_selftest@live.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11047 -&gt; Patchwork_21923</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11047: f50e5d7abd1873b3488081da88dc8412584280b9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6323: 9dbaa0d5be7a859cda9b7d54c20ba96a596f43bd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21923: 7f9fe7d9fcfd87c623d051ffa9d57996dfd08131 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7f9fe7d9fcfd drm/i915: Remove unused i915-&gt;ggtt<br />
dd2830cfee21 drm/i915/selftests: Use to_gt() helper for GGTT accesses<br />
d1f4dc7bb6bb drm/i915/display: Use to_gt() helper for GGTT accesses<br />
5f1faa95095c drm/i915/gem: Use to_gt() helper for GGTT accesses<br />
afd4ed1a47d2 drm/i915: Use to_gt() helper for GGTT accesses<br />
4f190d35025d drm/i915/gt: Use to_gt() helper for GGTT accesses</p>

</body>
</html>

--===============7755435210217765003==--
