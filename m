Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 986A73ECE24
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 07:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 800D5897EF;
	Mon, 16 Aug 2021 05:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB603897EF;
 Mon, 16 Aug 2021 05:51:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B10BEAADD2;
 Mon, 16 Aug 2021 05:51:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4361944438528016761=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ayaz A Siddiqui" <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Aug 2021 05:51:46 -0000
Message-ID: <162909310668.26194.11166306313394277654@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
In-Reply-To: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Initialize_unused_MOCS_entries_to_L3=5FWB?=
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

--===============4361944438528016761==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Initialize unused MOCS entries to L3_WB
URL   : https://patchwork.freedesktop.org/series/93706/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10485 -> Patchwork_20827
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20827/index.html


Changes
-------

  No changes found


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10485 -> Patchwork_20827

  CI-20190529: 20190529
  CI_DRM_10485: 029f8ff4156268d7abc8acde2eddd3041c7a94e4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20827: 2140f351a3a35395dead4cdd30382bb163beafd9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2140f351a3a3 drm/i95/adl: Define MOCS table for Alderlake
2fa1529ce1fd drm/i915/gt: Initialize unused MOCS entries with device specific values
fb7209540fa9 drm/i915/gt: Set BLIT_CCTL reg to un-cached
5a156fff1508 drm/i915/gt: Use cmd_cctl override for platforms >= gen12
bd87af7aa75f drm/i915/gt: Add support of mocs propagation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20827/index.html

--===============4361944438528016761==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Initialize unused MOCS entries to L3_WB</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93706/">https://patchwork.freedesktop.org/series/93706/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20827/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20827/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10485 -&gt; Patchwork_20827</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20827/index.html</p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10485 -&gt; Patchwork_20827</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10485: 029f8ff4156268d7abc8acde2eddd3041c7a94e4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20827: 2140f351a3a35395dead4cdd30382bb163beafd9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2140f351a3a3 drm/i95/adl: Define MOCS table for Alderlake<br />
2fa1529ce1fd drm/i915/gt: Initialize unused MOCS entries with device specific values<br />
fb7209540fa9 drm/i915/gt: Set BLIT_CCTL reg to un-cached<br />
5a156fff1508 drm/i915/gt: Use cmd_cctl override for platforms &gt;= gen12<br />
bd87af7aa75f drm/i915/gt: Add support of mocs propagation</p>

</body>
</html>

--===============4361944438528016761==--
