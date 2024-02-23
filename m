Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 763E4861A7D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 18:49:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F33B10EC80;
	Fri, 23 Feb 2024 17:49:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF1E10EC8B;
 Fri, 23 Feb 2024 17:49:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3433973063338322056=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Save_a_?=
 =?utf-8?q?few_bytes_of_memory_in_intel=5Fbacklight=5Fdevice=5Fregister=28?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christophe JAILLET" <christophe.jaillet@wanadoo.fr>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Feb 2024 17:49:43 -0000
Message-ID: <170871058339.264278.4415861859172926172@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <ecfdb3af5005e05131e2fb93fd870830f39a8c29.1708708142.git.christophe.jaillet@wanadoo.fr>
In-Reply-To: <ecfdb3af5005e05131e2fb93fd870830f39a8c29.1708708142.git.christophe.jaillet@wanadoo.fr>
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

--===============3433973063338322056==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Save a few bytes of memory in intel_backlight_device_register()
URL   : https://patchwork.freedesktop.org/series/130319/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14328 -> Patchwork_130319v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130319v1/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): fi-snb-2520m bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_130319v1 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@memory_region:
    - bat-arls-2:         [DMESG-WARN][1] ([i915#10194]) -> [ABORT][2] ([i915#10194])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14328/bat-arls-2/igt@i915_selftest@live@memory_region.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130319v1/bat-arls-2/igt@i915_selftest@live@memory_region.html

  
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194


Build changes
-------------

  * Linux: CI_DRM_14328 -> Patchwork_130319v1

  CI-20190529: 20190529
  CI_DRM_14328: aed3f498154b240f09098da53b8fd5639ee54ecf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7729: 7729
  Patchwork_130319v1: aed3f498154b240f09098da53b8fd5639ee54ecf @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ae6b78ecab42 drm/i915/display: Save a few bytes of memory in intel_backlight_device_register()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130319v1/index.html

--===============3433973063338322056==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Save a few bytes of memory in intel_backlight_device_register()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130319/">https://patchwork.freedesktop.org/series/130319/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130319v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130319v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14328 -&gt; Patchwork_130319v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130319v1/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): fi-snb-2520m bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130319v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@memory_region:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14328/bat-arls-2/igt@i915_selftest@live@memory_region.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130319v1/bat-arls-2/igt@i915_selftest@live@memory_region.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14328 -&gt; Patchwork_130319v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14328: aed3f498154b240f09098da53b8fd5639ee54ecf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7729: 7729<br />
  Patchwork_130319v1: aed3f498154b240f09098da53b8fd5639ee54ecf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ae6b78ecab42 drm/i915/display: Save a few bytes of memory in intel_backlight_device_register()</p>

</body>
</html>

--===============3433973063338322056==--
