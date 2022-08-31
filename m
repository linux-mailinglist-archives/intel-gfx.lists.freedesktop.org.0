Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3E95A7080
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 00:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF0110E2D1;
	Tue, 30 Aug 2022 22:19:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C1C7110E2D1;
 Tue, 30 Aug 2022 22:19:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B98C3A7DFB;
 Tue, 30 Aug 2022 22:19:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0760504058011262975=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 30 Aug 2022 22:19:27 -0000
Message-ID: <166189796775.27288.2021338964165852365@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220830212436.2021-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220830212436.2021-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Allow_more_varied_alternate_fixed_modes_for_panels?=
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

--===============0760504058011262975==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Allow more varied alternate fixed modes for panels
URL   : https://patchwork.freedesktop.org/series/107953/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12051 -> Patchwork_107953v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107953v1/index.html

Participating hosts (36 -> 30)
------------------------------

  Missing    (6): fi-jsl-1 fi-hsw-4200u fi-ctg-p8600 fi-hsw-4770 fi-ehl-2 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_107953v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][1] -> [INCOMPLETE][2] ([i915#3303] / [i915#4785])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12051/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107953v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-hsw-g3258:       NOTRUN -> [FAIL][3] ([fdo#109271] / [i915#4312] / [i915#6246])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107953v1/fi-hsw-g3258/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246


Build changes
-------------

  * Linux: CI_DRM_12051 -> Patchwork_107953v1

  CI-20190529: 20190529
  CI_DRM_12051: 87e7c1f925771561efe162f261251ed72b095007 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6638: 9338ab3ec085292817ab1e74d1f2fb90b6a98332 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107953v1: 87e7c1f925771561efe162f261251ed72b095007 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a91976496dfa drm/i915: Allow more varied alternate fixed modes for panels

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107953v1/index.html

--===============0760504058011262975==
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
<tr><td><b>Series:</b></td><td>drm/i915: Allow more varied alternate fixed modes for panels</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107953/">https://patchwork.freedesktop.org/series/107953/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107953v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107953v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12051 -&gt; Patchwork_107953v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107953v1/index.html</p>
<h2>Participating hosts (36 -&gt; 30)</h2>
<p>Missing    (6): fi-jsl-1 fi-hsw-4200u fi-ctg-p8600 fi-hsw-4770 fi-ehl-2 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107953v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12051/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107953v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107953v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12051 -&gt; Patchwork_107953v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12051: 87e7c1f925771561efe162f261251ed72b095007 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6638: 9338ab3ec085292817ab1e74d1f2fb90b6a98332 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107953v1: 87e7c1f925771561efe162f261251ed72b095007 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a91976496dfa drm/i915: Allow more varied alternate fixed modes for panels</p>

</body>
</html>

--===============0760504058011262975==--
