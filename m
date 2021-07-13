Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0673B3C79F3
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 01:06:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60AA66E0AB;
	Tue, 13 Jul 2021 23:06:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 014DB6E0AB;
 Tue, 13 Jul 2021 23:06:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED29BA8169;
 Tue, 13 Jul 2021 23:06:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aria Kraft" <aria.m.kraft@intel.com>
Date: Tue, 13 Jul 2021 23:06:21 -0000
Message-ID: <162621758193.711.2721288069998157079@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210713201701.1231730-1-aria.m.kraft@intel.com>
In-Reply-To: <20210713201701.1231730-1-aria.m.kraft@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Resolve_insufficient_header_credits_in_MIPI_DSI?=
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
Content-Type: multipart/mixed; boundary="===============0834284518=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0834284518==
Content-Type: multipart/alternative;
 boundary="===============0876746448998102036=="

--===============0876746448998102036==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ehl: Resolve insufficient header credits in MIPI DSI
URL   : https://patchwork.freedesktop.org/series/92498/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10343 -> Patchwork_20591
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20591/index.html

Known issues
------------

  Here are the changes found in Patchwork_20591 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([i915#1372])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20591/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372


Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10343 -> Patchwork_20591

  CI-20190529: 20190529
  CI_DRM_10343: 5b5a6e26ea2a5dc93aba918c28159c46a1cb3b02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6137: 2fee489255f7a8cd6a584373c30e3d44a07a78ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20591: fa23f279ade153892419b209a6b5289604d7f4f8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fa23f279ade1 drm/i915/ehl: Resolve insufficient header credits in MIPI DSI

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20591/index.html

--===============0876746448998102036==
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
<tr><td><b>Series:</b></td><td>drm/i915/ehl: Resolve insufficient header credits in MIPI DSI</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92498/">https://patchwork.freedesktop.org/series/92498/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20591/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20591/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10343 -&gt; Patchwork_20591</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20591/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20591 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_chamelium@dp-crc-fast:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10343/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20591/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10343 -&gt; Patchwork_20591</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10343: 5b5a6e26ea2a5dc93aba918c28159c46a1cb3b02 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6137: 2fee489255f7a8cd6a584373c30e3d44a07a78ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20591: fa23f279ade153892419b209a6b5289604d7f4f8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fa23f279ade1 drm/i915/ehl: Resolve insufficient header credits in MIPI DSI</p>

</body>
</html>

--===============0876746448998102036==--

--===============0834284518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0834284518==--
