Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C80B53590D0
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Apr 2021 02:11:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCCF26E42E;
	Fri,  9 Apr 2021 00:11:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2D9C06E0FB;
 Fri,  9 Apr 2021 00:11:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 248B1AA915;
 Fri,  9 Apr 2021 00:11:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Fri, 09 Apr 2021 00:11:33 -0000
Message-ID: <161792709311.10583.413905143981954282@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210408204917.254272-1-jose.souza@intel.com>
In-Reply-To: <20210408204917.254272-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/display=3A_Implement_Wa=5F?=
 =?utf-8?q?14013723622?=
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
Content-Type: multipart/mixed; boundary="===============2126735663=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2126735663==
Content-Type: multipart/alternative;
 boundary="===============4022083234266230809=="

--===============4022083234266230809==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/display: Implement Wa_14013723622
URL   : https://patchwork.freedesktop.org/series/88880/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9947 -> Patchwork_19906
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19906/index.html

Known issues
------------

  Here are the changes found in Patchwork_19906 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@fbdev@write:
    - fi-tgl-y:           [DMESG-WARN][1] ([i915#402]) -> [PASS][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9947/fi-tgl-y/igt@fbdev@write.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19906/fi-tgl-y/igt@fbdev@write.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][3] ([i915#3303]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9947/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19906/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3278]: https://gitlab.freedesktop.org/drm/intel/issues/3278
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9947 -> Patchwork_19906

  CI-20190529: 20190529
  CI_DRM_9947: a82404879f00d99c3abbb5d89ff39bc3726d03e0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6061: 4aa7cd3ac664af4a7ca87d3fa8ed44208e4b0fa5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19906: ed4ec5617123f0aef53eb4eefe7553b104528d5e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ed4ec5617123 Revert "drm/i915/tgl/psr: Fix glitches when doing frontbuffer modifications"
5df0c2c777d3 drm/i915/display: Implement Wa_14013723622

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19906/index.html

--===============4022083234266230809==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/display: Implement Wa_14013723622</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88880/">https://patchwork.freedesktop.org/series/88880/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19906/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19906/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9947 -&gt; Patchwork_19906</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19906/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19906 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9947/fi-tgl-y/igt@fbdev@write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19906/fi-tgl-y/igt@fbdev@write.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9947/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19906/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9947 -&gt; Patchwork_19906</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9947: a82404879f00d99c3abbb5d89ff39bc3726d03e0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6061: 4aa7cd3ac664af4a7ca87d3fa8ed44208e4b0fa5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19906: ed4ec5617123f0aef53eb4eefe7553b104528d5e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ed4ec5617123 Revert "drm/i915/tgl/psr: Fix glitches when doing frontbuffer modifications"<br />
5df0c2c777d3 drm/i915/display: Implement Wa_14013723622</p>

</body>
</html>

--===============4022083234266230809==--

--===============2126735663==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2126735663==--
