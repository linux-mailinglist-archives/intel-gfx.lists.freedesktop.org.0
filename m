Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B5236B35B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 14:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112BF6E82D;
	Mon, 26 Apr 2021 12:45:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A69916E1CF;
 Mon, 26 Apr 2021 12:45:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C666A0009;
 Mon, 26 Apr 2021 12:45:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 26 Apr 2021 12:45:15 -0000
Message-ID: <161944111563.18667.2502943206450414821@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210426093901.28937-1-matthew.auld@intel.com>
In-Reply-To: <20210426093901.28937-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_drm/doc/rfc=3A_i915_DG1_uAPI?=
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
Content-Type: multipart/mixed; boundary="===============1263418036=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1263418036==
Content-Type: multipart/alternative;
 boundary="===============0749788747253576513=="

--===============0749788747253576513==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/9] drm/doc/rfc: i915 DG1 uAPI
URL   : https://patchwork.freedesktop.org/series/89481/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10007 -> Patchwork_19987
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/index.html


Changes
-------

  No changes found


Participating hosts (40 -> 38)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10007 -> Patchwork_19987

  CI-20190529: 20190529
  CI_DRM_10007: 29ee2107fd883991f4ba1d3965c0bc3e2c5acca2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6074: 3f43ae9fd22dc5a517786b984dc3aa717997664f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19987: de8c03274eb33ab76e6bdd2c8d3531bf732ffce2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

de8c03274eb3 drm/i915/gem: hide new uAPI behind CONFIG_BROKEN
1c030fab48e7 drm/i915/gem: clear userspace buffers for LMEM
fefa23e6149b drm/i915/lmem: support optional CPU clearing for special internal use
089ef46cc581 drm/i915/uapi: implement object placement extension
cfa621ce4b04 drm/i915/uapi: introduce drm_i915_gem_create_ext
87b7d065f3e8 drm/i915: rework gem_create flow for upcoming extensions
d92a1d8d104f drm/i915/query: Expose memory regions through the query uAPI
2eca8595810e drm/i915: mark stolen as private
ee8a4a1f34c3 drm/doc/rfc: i915 DG1 uAPI

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/index.html

--===============0749788747253576513==
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
<tr><td><b>Series:</b></td><td>series starting with [1/9] drm/doc/rfc: i915 DG1 uAPI</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89481/">https://patchwork.freedesktop.org/series/89481/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10007 -&gt; Patchwork_19987</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/index.html</p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10007 -&gt; Patchwork_19987</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10007: 29ee2107fd883991f4ba1d3965c0bc3e2c5acca2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6074: 3f43ae9fd22dc5a517786b984dc3aa717997664f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19987: de8c03274eb33ab76e6bdd2c8d3531bf732ffce2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>de8c03274eb3 drm/i915/gem: hide new uAPI behind CONFIG_BROKEN<br />
1c030fab48e7 drm/i915/gem: clear userspace buffers for LMEM<br />
fefa23e6149b drm/i915/lmem: support optional CPU clearing for special internal use<br />
089ef46cc581 drm/i915/uapi: implement object placement extension<br />
cfa621ce4b04 drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
87b7d065f3e8 drm/i915: rework gem_create flow for upcoming extensions<br />
d92a1d8d104f drm/i915/query: Expose memory regions through the query uAPI<br />
2eca8595810e drm/i915: mark stolen as private<br />
ee8a4a1f34c3 drm/doc/rfc: i915 DG1 uAPI</p>

</body>
</html>

--===============0749788747253576513==--

--===============1263418036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1263418036==--
