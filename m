Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7454CE0B4
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Mar 2022 00:12:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C2FB1121D9;
	Fri,  4 Mar 2022 23:12:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CAC881121D9;
 Fri,  4 Mar 2022 23:12:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7A51A0169;
 Fri,  4 Mar 2022 23:12:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1244480673584770791=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Fri, 04 Mar 2022 23:12:40 -0000
Message-ID: <164643556079.21355.3537205126100172428@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220304221407.2416898-1-fei.yang@intel.com>
In-Reply-To: <20220304221407.2416898-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_avoid_concurrent_writes_to_aux=5Finv_=28rev5=29?=
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

--===============1244480673584770791==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: avoid concurrent writes to aux_inv (rev5)
URL   : https://patchwork.freedesktop.org/series/100772/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11330 -> Patchwork_22492
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22492/index.html

Participating hosts (46 -> 41)
------------------------------

  Additional (1): fi-glk-dsi 
  Missing    (6): fi-kbl-soraka shard-tglu fi-bsw-cyan fi-icl-u2 fi-pnv-d510 fi-bdw-samus 


Changes
-------

  No changes found


Build changes
-------------

  * IGT: IGT_6364 -> None
  * Linux: CI_DRM_11330 -> Patchwork_22492

  CI-20190529: 20190529
  CI_DRM_11330: 68d8cd94c6eaa94aa6bae2e92efbd488523a1a1b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6364: 3523fe577bc22e6512a8de7e60175c8f46cf61d2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22492: eb286fbe8a6ed532c821b6da358f0b1fa8af7291 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

eb286fbe8a6e drm/i915: avoid concurrent writes to aux_inv

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22492/index.html

--===============1244480673584770791==
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
<tr><td><b>Series:</b></td><td>drm/i915: avoid concurrent writes to aux_inv (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100772/">https://patchwork.freedesktop.org/series/100772/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22492/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22492/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11330 -&gt; Patchwork_22492</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22492/index.html</p>
<h2>Participating hosts (46 -&gt; 41)</h2>
<p>Additional (1): fi-glk-dsi <br />
  Missing    (6): fi-kbl-soraka shard-tglu fi-bsw-cyan fi-icl-u2 fi-pnv-d510 fi-bdw-samus </p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6364 -&gt; None</li>
<li>Linux: CI_DRM_11330 -&gt; Patchwork_22492</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11330: 68d8cd94c6eaa94aa6bae2e92efbd488523a1a1b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6364: 3523fe577bc22e6512a8de7e60175c8f46cf61d2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22492: eb286fbe8a6ed532c821b6da358f0b1fa8af7291 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>eb286fbe8a6e drm/i915: avoid concurrent writes to aux_inv</p>

</body>
</html>

--===============1244480673584770791==--
