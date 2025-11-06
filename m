Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC27C3D0F6
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 19:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 844E710E9AB;
	Thu,  6 Nov 2025 18:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10055242dc62 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BC2910E9B0;
 Thu,  6 Nov 2025 18:22:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3038210821341331670=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915=3A_Stop_the_inte?=
 =?utf-8?q?l=5Fde=5Fwait=5Fcustom=28=29_abuse_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 06 Nov 2025 18:22:03 -0000
Message-ID: <176245332343.24070.13070758569796337562@10055242dc62>
X-Patchwork-Hint: ignore
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
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

--===============3038210821341331670==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Stop the intel_de_wait_custom() abuse (rev3)
URL   : https://patchwork.freedesktop.org/series/157097/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17499 -> Patchwork_157097v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157097v3/index.html

Participating hosts (44 -> 42)
------------------------------

  Missing    (2): fi-kbl-guc fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_157097v3 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [DMESG-FAIL][1] ([i915#12061] / [i915#14204]) -> [DMESG-FAIL][2] ([i915#12061] / [i915#13929])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17499/bat-atsm-1/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157097v3/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][3] ([i915#14204]) -> [DMESG-FAIL][4] ([i915#13929])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17499/bat-atsm-1/igt@i915_selftest@live@mman.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157097v3/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204


Build changes
-------------

  * Linux: CI_DRM_17499 -> Patchwork_157097v3

  CI-20190529: 20190529
  CI_DRM_17499: 6aa8d62a50c33f091548cc961a713223d488d6ad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8611: 8611
  Patchwork_157097v3: 6aa8d62a50c33f091548cc961a713223d488d6ad @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157097v3/index.html

--===============3038210821341331670==
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
<tr><td><b>Series:</b></td><td>drm/i915: Stop the intel_de_wait_custom() abuse (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/157097/">https://patchwork.freedesktop.org/series/157097/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157097v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157097v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17499 -&gt; Patchwork_157097v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157097v3/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Missing    (2): fi-kbl-guc fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_157097v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17499/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157097v3/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17499/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157097v3/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17499 -&gt; Patchwork_157097v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17499: 6aa8d62a50c33f091548cc961a713223d488d6ad @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8611: 8611<br />
  Patchwork_157097v3: 6aa8d62a50c33f091548cc961a713223d488d6ad @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3038210821341331670==--
