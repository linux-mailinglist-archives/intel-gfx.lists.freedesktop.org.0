Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8D741D0BC
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 02:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92F226EB0F;
	Thu, 30 Sep 2021 00:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDAB66EB0F;
 Thu, 30 Sep 2021 00:47:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E520FA0003;
 Thu, 30 Sep 2021 00:47:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6541351697450724828=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Sep 2021 00:47:22 -0000
Message-ID: <163296284290.18250.8018555622572605474@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210930001409.254817-1-jose.souza@intel.com>
In-Reply-To: <20210930001409.254817-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/9=5D_drm/i915/display/psr=3A_Handle?=
 =?utf-8?q?_plane_and_pipe_restrictions_at_every_page_flip?=
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

--===============6541351697450724828==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/9] drm/i915/display/psr: Handle plane and pipe restrictions at every page flip
URL   : https://patchwork.freedesktop.org/series/95242/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10660 -> Patchwork_21196
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21196/index.html

Known issues
------------

  Here are the changes found in Patchwork_21196 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][1] -> [DMESG-WARN][2] ([i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21196/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (33 -> 29)
------------------------------

  Missing    (4): fi-bsw-cyan bat-jsl-1 bat-dg1-6 bat-adlp-4 


Build changes
-------------

  * Linux: CI_DRM_10660 -> Patchwork_21196

  CI-20190529: 20190529
  CI_DRM_10660: 05888a7b7b4aec560d6692e5e9173adc7e76c0df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6227: 6ac2da7fd6b13f04f9aa0ec10f86b831d2756946 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21196: f3cfdbc6d4ef2f1fe0b89138c37b5755d63e6fbe @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f3cfdbc6d4ef drm/i915/display: Always wait vblank counter to increment when commit needs a modeset
3132766222d7 drm/i915/display: Enable PSR2 selective fetch by default
bd3464613f30 drm/i915/display/adlp: Allow PSR2 to be enabled
3f505683303c drm/i915/display/adlp: Optimize PSR2 power-savings in corner cases
fe3f60e72244 drm/i915/display: Fix glitches when moving cursor with PSR2 selective fetch enabled
fb8e8d4957e1 drm/i915/display: Handle frontbuffer rendering when PSR2 selective fetch is enabled
794af03d49be drm/i915/display: Drop unnecessary frontbuffer flushes
61bc77a53598 drm/i915/display/psr: Do full fetch when handling multi-planar formats
fe2f969d7158 drm/i915/display/psr: Handle plane and pipe restrictions at every page flip

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21196/index.html

--===============6541351697450724828==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/9] drm/i915/display/psr: Handle plane and pipe restrictions at every page flip</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95242/">https://patchwork.freedesktop.org/series/95242/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21196/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21196/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10660 -&gt; Patchwork_21196</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21196/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21196 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21196/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (33 -&gt; 29)</h2>
<p>Missing    (4): fi-bsw-cyan bat-jsl-1 bat-dg1-6 bat-adlp-4 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10660 -&gt; Patchwork_21196</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10660: 05888a7b7b4aec560d6692e5e9173adc7e76c0df @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6227: 6ac2da7fd6b13f04f9aa0ec10f86b831d2756946 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21196: f3cfdbc6d4ef2f1fe0b89138c37b5755d63e6fbe @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f3cfdbc6d4ef drm/i915/display: Always wait vblank counter to increment when commit needs a modeset<br />
3132766222d7 drm/i915/display: Enable PSR2 selective fetch by default<br />
bd3464613f30 drm/i915/display/adlp: Allow PSR2 to be enabled<br />
3f505683303c drm/i915/display/adlp: Optimize PSR2 power-savings in corner cases<br />
fe3f60e72244 drm/i915/display: Fix glitches when moving cursor with PSR2 selective fetch enabled<br />
fb8e8d4957e1 drm/i915/display: Handle frontbuffer rendering when PSR2 selective fetch is enabled<br />
794af03d49be drm/i915/display: Drop unnecessary frontbuffer flushes<br />
61bc77a53598 drm/i915/display/psr: Do full fetch when handling multi-planar formats<br />
fe2f969d7158 drm/i915/display/psr: Handle plane and pipe restrictions at every page flip</p>

</body>
</html>

--===============6541351697450724828==--
