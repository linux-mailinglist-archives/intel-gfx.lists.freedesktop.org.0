Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C92D5536CDB
	for <lists+intel-gfx@lfdr.de>; Sat, 28 May 2022 14:24:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33A6810E0B6;
	Sat, 28 May 2022 12:24:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E06FF10E0B6;
 Sat, 28 May 2022 12:24:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA10EA77A5;
 Sat, 28 May 2022 12:24:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7221481764886747977=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 28 May 2022 12:24:19 -0000
Message-ID: <165374065986.24491.4093562620760040591@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220527163348.1936146-1-matthew.d.roper@intel.com>
In-Reply-To: <20220527163348.1936146-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_PVC_steppings_and_initial_workarounds?=
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

--===============7221481764886747977==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: PVC steppings and initial workarounds
URL   : https://patchwork.freedesktop.org/series/104461/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11705 -> Patchwork_104461v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/index.html

Participating hosts (42 -> 38)
------------------------------

  Additional (4): fi-rkl-11600 fi-icl-u2 fi-bsw-nick fi-tgl-u2 
  Missing    (8): bat-dg1-6 bat-dg1-5 bat-dg2-9 bat-adlp-6 bat-adlp-4 bat-adln-1 bat-jsl-2 bat-jsl-1 


Changes
-------

  No changes found


Build changes
-------------

  * IGT: IGT_6495 -> None
  * Linux: CI_DRM_11705 -> Patchwork_104461v1

  CI-20190529: 20190529
  CI_DRM_11705: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6495: 7e2033da45f024a0348e6034fcb7f70a91b80ee9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104461v1: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bbe846dcad8f drm/i915/pvc: Add initial PVC workarounds
94d15190384c drm/i915/pvc: Extract stepping information from PCI revid

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/index.html

--===============7221481764886747977==
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
<tr><td><b>Series:</b></td><td>i915: PVC steppings and initial workarounds</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104461/">https://patchwork.freedesktop.org/series/104461/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11705 -&gt; Patchwork_104461v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/index.html</p>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Additional (4): fi-rkl-11600 fi-icl-u2 fi-bsw-nick fi-tgl-u2 <br />
  Missing    (8): bat-dg1-6 bat-dg1-5 bat-dg2-9 bat-adlp-6 bat-adlp-4 bat-adln-1 bat-jsl-2 bat-jsl-1 </p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6495 -&gt; None</li>
<li>Linux: CI_DRM_11705 -&gt; Patchwork_104461v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11705: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6495: 7e2033da45f024a0348e6034fcb7f70a91b80ee9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104461v1: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bbe846dcad8f drm/i915/pvc: Add initial PVC workarounds<br />
94d15190384c drm/i915/pvc: Extract stepping information from PCI revid</p>

</body>
</html>

--===============7221481764886747977==--
