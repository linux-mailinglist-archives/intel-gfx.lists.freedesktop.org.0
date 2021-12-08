Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC5246D0BD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 11:14:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B2166F46D;
	Wed,  8 Dec 2021 10:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9AB226F46B;
 Wed,  8 Dec 2021 10:14:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94581A0099;
 Wed,  8 Dec 2021 10:14:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2364465931296487770=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 08 Dec 2021 10:14:45 -0000
Message-ID: <163895848559.8230.2007953059581142127@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211208082245.86933-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211208082245.86933-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_coredump_of_perma-pinned_vmas?=
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

--===============2364465931296487770==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix coredump of perma-pinned vmas
URL   : https://patchwork.freedesktop.org/series/97709/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10971 -> Patchwork_21783
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21783/index.html

Participating hosts (44 -> 32)
------------------------------

  Missing    (12): bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-icl-u2 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_21783 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_engines:
    - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#4432])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10971/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21783/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][3] ([i915#3928] / [i915#4312])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21783/fi-rkl-guc/igt@runner@aborted.html

  
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4432]: https://gitlab.freedesktop.org/drm/intel/issues/4432


Build changes
-------------

  * Linux: CI_DRM_10971 -> Patchwork_21783

  CI-20190529: 20190529
  CI_DRM_10971: 76da84b837b1d09dd2620c2240211c7890a26180 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6303: 49deb6b505c293a60dd3b3976a63c467bf88442e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21783: e251a0da9441e3f5047627a28650bf10b8ed197c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e251a0da9441 drm/i915: Fix coredump of perma-pinned vmas

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21783/index.html

--===============2364465931296487770==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix coredump of perma-pinned vmas</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97709/">https://patchwork.freedesktop.org/series/97709/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21783/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21783/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10971 -&gt; Patchwork_21783</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21783/index.html</p>
<h2>Participating hosts (44 -&gt; 32)</h2>
<p>Missing    (12): bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-icl-u2 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21783 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10971/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21783/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4432">i915#4432</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21783/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10971 -&gt; Patchwork_21783</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10971: 76da84b837b1d09dd2620c2240211c7890a26180 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6303: 49deb6b505c293a60dd3b3976a63c467bf88442e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21783: e251a0da9441e3f5047627a28650bf10b8ed197c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e251a0da9441 drm/i915: Fix coredump of perma-pinned vmas</p>

</body>
</html>

--===============2364465931296487770==--
