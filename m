Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B59A2F8105
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 17:42:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4AA46E3D8;
	Fri, 15 Jan 2021 16:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F5DF6E103;
 Fri, 15 Jan 2021 16:42:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97BC5A47E8;
 Fri, 15 Jan 2021 16:42:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 15 Jan 2021 16:42:06 -0000
Message-ID: <161072892658.28529.1567002591862411878@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210115092034.8804-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210115092034.8804-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Set_error_value_before_returning_in_intel=5Fhd?=
 =?utf-8?b?Y3AqX2Rpc2FibGUoKSAocmV2Mik=?=
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
Content-Type: multipart/mixed; boundary="===============1472013611=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1472013611==
Content-Type: multipart/alternative;
 boundary="===============1622766841078037471=="

--===============1622766841078037471==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Set error value before returning in intel_hdcp*_disable() (rev2)
URL   : https://patchwork.freedesktop.org/series/85895/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9623 -> Patchwork_19370
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/index.html

Known issues
------------

  Here are the changes found in Patchwork_19370 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@blt:
    - fi-snb-2600:        [PASS][1] -> [DMESG-FAIL][2] ([i915#1409])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/fi-snb-2600/igt@i915_selftest@live@blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/fi-snb-2600/igt@i915_selftest@live@blt.html

  
  [i915#1409]: https://gitlab.freedesktop.org/drm/intel/issues/1409


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-tgl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9623 -> Patchwork_19370

  CI-20190529: 20190529
  CI_DRM_9623: efc7d4def21073ad87a4bad7122d5f4109d29781 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19370: c4a29f6811da64cc5fb693936616d4f43621814e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c4a29f6811da drm/i915/display: Set return value before returning in intel_hdcp*_disable()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/index.html

--===============1622766841078037471==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Set error value before returning in intel_hdcp*_disable() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85895/">https://patchwork.freedesktop.org/series/85895/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9623 -&gt; Patchwork_19370</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19370 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@blt:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9623/fi-snb-2600/igt@i915_selftest@live@blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19370/fi-snb-2600/igt@i915_selftest@live@blt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1409">i915#1409</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-tgl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9623 -&gt; Patchwork_19370</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9623: efc7d4def21073ad87a4bad7122d5f4109d29781 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19370: c4a29f6811da64cc5fb693936616d4f43621814e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c4a29f6811da drm/i915/display: Set return value before returning in intel_hdcp*_disable()</p>

</body>
</html>

--===============1622766841078037471==--

--===============1472013611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1472013611==--
