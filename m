Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B583B8A30
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 23:46:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F07E66EA88;
	Wed, 30 Jun 2021 21:46:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2400E6EA85;
 Wed, 30 Jun 2021 21:46:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C7FBA0078;
 Wed, 30 Jun 2021 21:46:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 30 Jun 2021 21:46:44 -0000
Message-ID: <162508960407.10374.11312396886258254901@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210630210522.162674-1-jose.souza@intel.com>
In-Reply-To: <20210630210522.162674-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display/dg1=3A_Correctly_map_DPLLs_during_state_readout?=
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
Content-Type: multipart/mixed; boundary="===============1055056439=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1055056439==
Content-Type: multipart/alternative;
 boundary="===============1603581018180226231=="

--===============1603581018180226231==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/dg1: Correctly map DPLLs during state readout
URL   : https://patchwork.freedesktop.org/series/92086/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10295 -> Patchwork_20499
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20499/index.html

Known issues
------------

  Here are the changes found in Patchwork_20499 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2] ([i915#155])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20499/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([i915#1372])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20499/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155


Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-kbl-soraka fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10295 -> Patchwork_20499

  CI-20190529: 20190529
  CI_DRM_10295: 683b7f160eb6993ccfc19e67e3c7111f12946bea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6124: 357d5477c93f2bdd3354afe91b89ccfd4ee4fd56 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20499: 5fce8912a42d082b6732b961c94fa6197d36b977 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5fce8912a42d drm/i915/display/dg1: Correctly map DPLLs during state readout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20499/index.html

--===============1603581018180226231==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/dg1: Correctly map DPLLs during state readout</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92086/">https://patchwork.freedesktop.org/series/92086/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20499/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20499/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10295 -&gt; Patchwork_20499</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20499/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20499 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20499/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20499/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): fi-kbl-soraka fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10295 -&gt; Patchwork_20499</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10295: 683b7f160eb6993ccfc19e67e3c7111f12946bea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6124: 357d5477c93f2bdd3354afe91b89ccfd4ee4fd56 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20499: 5fce8912a42d082b6732b961c94fa6197d36b977 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5fce8912a42d drm/i915/display/dg1: Correctly map DPLLs during state readout</p>

</body>
</html>

--===============1603581018180226231==--

--===============1055056439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1055056439==--
