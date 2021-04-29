Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEE936E2C2
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 02:55:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A436EC98;
	Thu, 29 Apr 2021 00:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD6526EC98;
 Thu, 29 Apr 2021 00:55:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6C29A47DF;
 Thu, 29 Apr 2021 00:55:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Thu, 29 Apr 2021 00:55:06 -0000
Message-ID: <161965770664.20428.5931848797398056446@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210428234346.1085977-1-nikola.cornij@amd.com>
In-Reply-To: <20210428234346.1085977-1-nikola.cornij@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/drm=5Fmst=3A_Use_Extended_Base_Receiver_Capability_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============0003361951=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0003361951==
Content-Type: multipart/alternative;
 boundary="===============2546715715692204290=="

--===============2546715715692204290==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/drm_mst: Use Extended Base Receiver Capability (rev6)
URL   : https://patchwork.freedesktop.org/series/89590/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10023 -> Patchwork_20024
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20024/index.html

Known issues
------------

  Here are the changes found in Patchwork_20024 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-rkl-11500t}:    [SKIP][1] ([i915#1849] / [i915#3180]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20024/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10023 -> Patchwork_20024

  CI-20190529: 20190529
  CI_DRM_10023: a8bf9e284933fa5c1cb821b48ba95821e5d1cc3f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20024: b5ab5edcae7a2347312cef42a07e71e39312b73c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b5ab5edcae7a drm/drm_mst: Use Extended Base Receiver Capability DPCD space

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20024/index.html

--===============2546715715692204290==
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
<tr><td><b>Series:</b></td><td>drm/drm_mst: Use Extended Base Receiver Capability (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89590/">https://patchwork.freedesktop.org/series/89590/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20024/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20024/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10023 -&gt; Patchwork_20024</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20024/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20024 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3180">i915#3180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20024/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10023 -&gt; Patchwork_20024</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10023: a8bf9e284933fa5c1cb821b48ba95821e5d1cc3f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20024: b5ab5edcae7a2347312cef42a07e71e39312b73c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b5ab5edcae7a drm/drm_mst: Use Extended Base Receiver Capability DPCD space</p>

</body>
</html>

--===============2546715715692204290==--

--===============0003361951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0003361951==--
