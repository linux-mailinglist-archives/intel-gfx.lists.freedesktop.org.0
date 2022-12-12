Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 002F264AA8F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 23:46:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 709CE10E2AB;
	Mon, 12 Dec 2022 22:46:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0723B10E2A7;
 Mon, 12 Dec 2022 22:46:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 013E4A00E6;
 Mon, 12 Dec 2022 22:46:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0528309520475148295=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Mon, 12 Dec 2022 22:46:13 -0000
Message-ID: <167088517396.12118.18086761468211010914@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221212220902.1819159-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221212220902.1819159-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Add_OAG_32_bit_format_support_for_MTL?=
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

--===============0528309520475148295==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Add OAG 32 bit format support for MTL
URL   : https://patchwork.freedesktop.org/series/111868/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12497 -> Patchwork_111868v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111868v1/index.html

Participating hosts (18 -> 19)
------------------------------

  Additional (1): fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_111868v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        NOTRUN -> [FAIL][1] ([i915#7229])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111868v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][2] ([fdo#109271]) +44 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111868v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229


Build changes
-------------

  * Linux: CI_DRM_12497 -> Patchwork_111868v1

  CI-20190529: 20190529
  CI_DRM_12497: 6636ff92fd32bda3fed63832bc12bf2a9d7c1c33 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7091: b8015f920c9f469d3733854263cb878373c1df51 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111868v1: 6636ff92fd32bda3fed63832bc12bf2a9d7c1c33 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bf4eec46f88a drm/i915/mtl: Add OA support by enabling 32 bit OAG formats for MTL
02d46558c571 drm/i915/mtl: Update OA mux whitelist for MTL
9f6e92daefe0 drm/i915/mtl: Add Wa_14015846243 to fix OA vs CS timestamp mismatch
4a63fce76c5d drm/i915/mtl: Resize noa_wait BO size to save restore GPR regs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111868v1/index.html

--===============0528309520475148295==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Add OAG 32 bit format support for MTL</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111868/">https://patchwork.freedesktop.org/series/111868/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111868v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111868v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12497 -&gt; Patchwork_111868v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111868v1/index.html</p>
<h2>Participating hosts (18 -&gt; 19)</h2>
<p>Additional (1): fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111868v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111868v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111868v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +44 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12497 -&gt; Patchwork_111868v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12497: 6636ff92fd32bda3fed63832bc12bf2a9d7c1c33 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7091: b8015f920c9f469d3733854263cb878373c1df51 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111868v1: 6636ff92fd32bda3fed63832bc12bf2a9d7c1c33 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bf4eec46f88a drm/i915/mtl: Add OA support by enabling 32 bit OAG formats for MTL<br />
02d46558c571 drm/i915/mtl: Update OA mux whitelist for MTL<br />
9f6e92daefe0 drm/i915/mtl: Add Wa_14015846243 to fix OA vs CS timestamp mismatch<br />
4a63fce76c5d drm/i915/mtl: Resize noa_wait BO size to save restore GPR regs</p>

</body>
</html>

--===============0528309520475148295==--
