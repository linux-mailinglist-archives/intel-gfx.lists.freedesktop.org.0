Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 608AF847D46
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Feb 2024 00:41:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEEF510E8F6;
	Fri,  2 Feb 2024 23:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A057510E8F6;
 Fri,  2 Feb 2024 23:41:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2032367127166452203=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Enable_ccs_compressed_frame?=
 =?utf-8?q?buffers_on_Xe2_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 Feb 2024 23:41:47 -0000
Message-ID: <170691730765.953177.10142191538315712931@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240202150602.430036-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240202150602.430036-1-juhapekka.heikkila@gmail.com>
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

--===============2032367127166452203==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable ccs compressed framebuffers on Xe2 (rev2)
URL   : https://patchwork.freedesktop.org/series/129471/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14213 -> Patchwork_129471v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v2/index.html

Participating hosts (39 -> 36)
------------------------------

  Missing    (3): bat-mtlp-8 fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_129471v2 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10026]: https://gitlab.freedesktop.org/drm/intel/issues/10026
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194


Build changes
-------------

  * Linux: CI_DRM_14213 -> Patchwork_129471v2

  CI-20190529: 20190529
  CI_DRM_14213: 40994da55437acf620a48af39b0d8545e1595c42 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7702: bf075a74ece1956fc0e554291591b9da3eab54cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129471v2: 40994da55437acf620a48af39b0d8545e1595c42 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

047616094a72 drm/i915/display: On Xe2 always enable decompression with tile4

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v2/index.html

--===============2032367127166452203==
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
<tr><td><b>Series:</b></td><td>Enable ccs compressed framebuffers on Xe2 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129471/">https://patchwork.freedesktop.org/series/129471/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14213 -&gt; Patchwork_129471v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v2/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): bat-mtlp-8 fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129471v2 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14213 -&gt; Patchwork_129471v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14213: 40994da55437acf620a48af39b0d8545e1595c42 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7702: bf075a74ece1956fc0e554291591b9da3eab54cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129471v2: 40994da55437acf620a48af39b0d8545e1595c42 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>047616094a72 drm/i915/display: On Xe2 always enable decompression with tile4</p>

</body>
</html>

--===============2032367127166452203==--
