Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA7143F29D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 00:20:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBC606E848;
	Thu, 28 Oct 2021 22:20:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87E296E848;
 Thu, 28 Oct 2021 22:20:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7ECE0AADD8;
 Thu, 28 Oct 2021 22:20:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3751854612596598893=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Oct 2021 22:20:01 -0000
Message-ID: <163545960151.4339.1515819817729444459@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211028203418.69680-1-jose.souza@intel.com>
In-Reply-To: <20211028203418.69680-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Check_async_flip_state_of_every_crtc_and_plane?=
 =?utf-8?q?_once?=
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

--===============3751854612596598893==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Check async flip state of every crtc and plane once
URL   : https://patchwork.freedesktop.org/series/96402/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10809 -> Patchwork_21480
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21480/index.html

Participating hosts (36 -> 34)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (3): bat-adlp-4 bat-dg1-6 bat-dg1-5 

Known issues
------------

  Here are the changes found in Patchwork_21480 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +53 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21480/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-ivb-3770:        NOTRUN -> [FAIL][2] ([i915#2426] / [i915#4312])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21480/fi-ivb-3770/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312


Build changes
-------------

  * Linux: CI_DRM_10809 -> Patchwork_21480

  CI-20190529: 20190529
  CI_DRM_10809: 9959c5de92d04f2336d749a5a331799aa41cfb1f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6264: 3458490c14afe3cb8aa873fa9e520e1c815ea068 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21480: 0357c9b1ff59793efe41165ba24d85a65cd04ac1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0357c9b1ff59 drm/i915/display: Check async flip state of every crtc and plane once

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21480/index.html

--===============3751854612596598893==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Check async flip state of every crtc and plane once</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96402/">https://patchwork.freedesktop.org/series/96402/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21480/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21480/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10809 -&gt; Patchwork_21480</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21480/index.html</p>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (3): bat-adlp-4 bat-dg1-6 bat-dg1-5 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21480 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21480/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21480/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10809 -&gt; Patchwork_21480</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10809: 9959c5de92d04f2336d749a5a331799aa41cfb1f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6264: 3458490c14afe3cb8aa873fa9e520e1c815ea068 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21480: 0357c9b1ff59793efe41165ba24d85a65cd04ac1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0357c9b1ff59 drm/i915/display: Check async flip state of every crtc and plane once</p>

</body>
</html>

--===============3751854612596598893==--
