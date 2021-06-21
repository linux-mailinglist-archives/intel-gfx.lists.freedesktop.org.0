Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E109F3AF667
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 21:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 671B26E046;
	Mon, 21 Jun 2021 19:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E47E6E046;
 Mon, 21 Jun 2021 19:46:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F21C6A00C9;
 Mon, 21 Jun 2021 19:46:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Mon, 21 Jun 2021 19:46:02 -0000
Message-ID: <162430476296.19769.17877909738632216228@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210621191415.29823-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210621191415.29823-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUGlw?=
 =?utf-8?q?e_DMC_bits?=
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
Content-Type: multipart/mixed; boundary="===============1664646253=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1664646253==
Content-Type: multipart/alternative;
 boundary="===============5932188958878823877=="

--===============5932188958878823877==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Pipe DMC bits
URL   : https://patchwork.freedesktop.org/series/91746/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10256 -> Patchwork_20421
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20421/index.html


Changes
-------

  No changes found


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-cfl-8700k fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10256 -> Patchwork_20421

  CI-20190529: 20190529
  CI_DRM_10256: 2a5df66b6597af17e2c3e3fff1a2271a6079412b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6115: 4ef420186b82f1a6d9c9b69d2f8de4fd100a2af3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20421: 162182d31dc0abc9864acaba856737f63bb766aa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

162182d31dc0 drm/i915/adl_p: Load DMC
b3db0b3770f8 drm/i915/adl_p: Pipe B DMC Support
2dc1d7a2161e drm/i915/xelpd: Pipe A DMC plugging
81c0a903179b drm/i915/dmc: Introduce DMC_FW_MAIN

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20421/index.html

--===============5932188958878823877==
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
<tr><td><b>Series:</b></td><td>Pipe DMC bits</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91746/">https://patchwork.freedesktop.org/series/91746/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20421/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20421/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10256 -&gt; Patchwork_20421</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20421/index.html</p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-cfl-8700k fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10256 -&gt; Patchwork_20421</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10256: 2a5df66b6597af17e2c3e3fff1a2271a6079412b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6115: 4ef420186b82f1a6d9c9b69d2f8de4fd100a2af3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20421: 162182d31dc0abc9864acaba856737f63bb766aa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>162182d31dc0 drm/i915/adl_p: Load DMC<br />
b3db0b3770f8 drm/i915/adl_p: Pipe B DMC Support<br />
2dc1d7a2161e drm/i915/xelpd: Pipe A DMC plugging<br />
81c0a903179b drm/i915/dmc: Introduce DMC_FW_MAIN</p>

</body>
</html>

--===============5932188958878823877==--

--===============1664646253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1664646253==--
