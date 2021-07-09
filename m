Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B68F3C240B
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 15:11:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B036EA2F;
	Fri,  9 Jul 2021 13:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E01AC6EA2C;
 Fri,  9 Jul 2021 13:11:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7E3EA47E2;
 Fri,  9 Jul 2021 13:11:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 09 Jul 2021 13:11:37 -0000
Message-ID: <162583629785.9811.18175843189630487218@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210709114120.651309-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210709114120.651309-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_TTM_offset_argument_to_mmap=2E_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0446420263=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0446420263==
Content-Type: multipart/alternative;
 boundary="===============8487373521191124889=="

--===============8487373521191124889==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add TTM offset argument to mmap. (rev2)
URL   : https://patchwork.freedesktop.org/series/92103/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10324 -> Patchwork_20562
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20562/index.html

Known issues
------------

  Here are the changes found in Patchwork_20562 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [i915#3744]: https://gitlab.freedesktop.org/drm/intel/issues/3744


Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_10324 -> Patchwork_20562

  CI-20190529: 20190529
  CI_DRM_10324: 1db44678139ded724c2cd42b6b1c95574fe36047 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6133: b5c6b973e7f7d33e7521825e39ddd380e80af01a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20562: 53107c2bf2c8fd4aa4469649d2cc183bba2f8933 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

53107c2bf2c8 drm/i915: Add TTM offset argument to mmap.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20562/index.html

--===============8487373521191124889==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add TTM offset argument to mmap. (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92103/">https://patchwork.freedesktop.org/series/92103/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20562/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20562/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10324 -&gt; Patchwork_20562</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20562/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20562 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10324 -&gt; Patchwork_20562</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10324: 1db44678139ded724c2cd42b6b1c95574fe36047 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6133: b5c6b973e7f7d33e7521825e39ddd380e80af01a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20562: 53107c2bf2c8fd4aa4469649d2cc183bba2f8933 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>53107c2bf2c8 drm/i915: Add TTM offset argument to mmap.</p>

</body>
</html>

--===============8487373521191124889==--

--===============0446420263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0446420263==--
