Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD2B44DDEE
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 23:41:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150B26E23B;
	Thu, 11 Nov 2021 22:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F7436E23B;
 Thu, 11 Nov 2021 22:41:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C742AA917;
 Thu, 11 Nov 2021 22:41:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7227227786158793369=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 11 Nov 2021 22:41:22 -0000
Message-ID: <163667048217.5312.3606684194115362317@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211111215644.1123373-1-matthew.d.roper@intel.com>
In-Reply-To: <20211111215644.1123373-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_Additional_DG2_workarounds?=
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

--===============7227227786158793369==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: Additional DG2 workarounds
URL   : https://patchwork.freedesktop.org/series/96824/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10872 -> Patchwork_21565
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21565/index.html

Participating hosts (29 -> 24)
------------------------------

  Missing    (5): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 

Known issues
------------

  Here are the changes found in Patchwork_21565 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-bdw-5557u:       [PASS][1] -> [INCOMPLETE][2] ([i915#146])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10872/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21565/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html

  
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146


Build changes
-------------

  * Linux: CI_DRM_10872 -> Patchwork_21565

  CI-20190529: 20190529
  CI_DRM_10872: 50c74a91cbcff9d1ca50d3774391c4757e9816b8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6279: 1c70b17877974491273ac3fb1de93ba75309df79 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21565: 9ffd3298a379883c46d4e3b90d94bd0e93f8d5ae @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9ffd3298a379 drm/i915/dg2: extend Wa_1409120013 to DG2
eaf9b856bf53 drm/i915/dg2: Add Wa_16013000631
71dd49e2be9b drm/i915/dg2: Add Wa_16011777198
65c9c68de0fa drm/i915/dg2: Add Wa_14010547955

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21565/index.html

--===============7227227786158793369==
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
<tr><td><b>Series:</b></td><td>i915: Additional DG2 workarounds</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96824/">https://patchwork.freedesktop.org/series/96824/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21565/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21565/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10872 -&gt; Patchwork_21565</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21565/index.html</p>
<h2>Participating hosts (29 -&gt; 24)</h2>
<p>Missing    (5): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21565 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10872/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21565/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10872 -&gt; Patchwork_21565</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10872: 50c74a91cbcff9d1ca50d3774391c4757e9816b8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6279: 1c70b17877974491273ac3fb1de93ba75309df79 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21565: 9ffd3298a379883c46d4e3b90d94bd0e93f8d5ae @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9ffd3298a379 drm/i915/dg2: extend Wa_1409120013 to DG2<br />
eaf9b856bf53 drm/i915/dg2: Add Wa_16013000631<br />
71dd49e2be9b drm/i915/dg2: Add Wa_16011777198<br />
65c9c68de0fa drm/i915/dg2: Add Wa_14010547955</p>

</body>
</html>

--===============7227227786158793369==--
