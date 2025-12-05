Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3CBCA82DC
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 16:24:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CFE1882B5;
	Fri,  5 Dec 2025 15:24:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12088882B5;
 Fri,  5 Dec 2025 15:24:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5881020694369118783=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915=3A_Fix_format_st?=
 =?utf-8?q?ring_truncation_warning?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ard Biesheuvel" <ardb@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 05 Dec 2025 15:24:56 -0000
Message-ID: <176494829606.62152.8421747353383021268@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251205113500.684286-2-ardb@kernel.org>
In-Reply-To: <20251205113500.684286-2-ardb@kernel.org>
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

--===============5881020694369118783==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix format string truncation warning
URL   : https://patchwork.freedesktop.org/series/158561/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17640 -> Patchwork_158561v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_158561v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         NOTRUN -> [DMESG-FAIL][1] ([i915#13929])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/bat-atsm-1/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][2] -> [DMESG-FAIL][3] ([i915#12061]) +1 other test dmesg-fail
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17640/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - bat-atsm-1:         [INCOMPLETE][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17640/bat-atsm-1/igt@i915_selftest@live@requests.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/bat-atsm-1/igt@i915_selftest@live@requests.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-bsw-n3050:       [DMESG-WARN][6] ([i915#15371]) -> [PASS][7] +5 other tests pass
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17640/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-modeset.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-modeset.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [INCOMPLETE][8] ([i915#12061] / [i915#15157]) -> [DMESG-FAIL][9] ([i915#12061] / [i915#13929])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17640/bat-atsm-1/igt@i915_selftest@live.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/bat-atsm-1/igt@i915_selftest@live.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#15157]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157
  [i915#15371]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15371


Build changes
-------------

  * Linux: CI_DRM_17640 -> Patchwork_158561v1

  CI-20190529: 20190529
  CI_DRM_17640: a36e2c7fed2132052900236e8c7aa563d339baaf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8655: 8655
  Patchwork_158561v1: a36e2c7fed2132052900236e8c7aa563d339baaf @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/index.html

--===============5881020694369118783==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix format string truncation warning</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/158561/">https://patchwork.freedesktop.org/series/158561/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17640 -&gt; Patchwork_158561v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_158561v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17640/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17640/bat-atsm-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/bat-atsm-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17640/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15371">i915#15371</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-modeset.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17640/bat-atsm-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157">i915#15157</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158561v1/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17640 -&gt; Patchwork_158561v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17640: a36e2c7fed2132052900236e8c7aa563d339baaf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8655: 8655<br />
  Patchwork_158561v1: a36e2c7fed2132052900236e8c7aa563d339baaf @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5881020694369118783==--
