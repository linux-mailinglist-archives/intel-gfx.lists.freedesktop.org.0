Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 241079772E9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 22:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A2610EC54;
	Thu, 12 Sep 2024 20:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0780110EC54;
 Thu, 12 Sep 2024 20:51:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1241662875956845163=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Don=27t?=
 =?utf-8?q?_allow_tile4_framebuffer_to_do_hflip_on_Xe2?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2024 20:51:05 -0000
Message-ID: <172617426502.993743.14084056902400506206@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240912144606.862307-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240912144606.862307-1-juhapekka.heikkila@gmail.com>
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

--===============1241662875956845163==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Don't allow tile4 framebuffer to do hflip on Xe2
URL   : https://patchwork.freedesktop.org/series/138592/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15408 -> Patchwork_138592v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138592v1/index.html

Participating hosts (39 -> 37)
------------------------------

  Missing    (2): fi-snb-2520m fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_138592v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-arls-1:         [DMESG-WARN][1] ([i915#10341] / [i915#12133]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15408/bat-arls-1/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138592v1/bat-arls-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-1:         [DMESG-WARN][3] ([i915#11349]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15408/bat-arls-1/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138592v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html

  
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133


Build changes
-------------

  * Linux: CI_DRM_15408 -> Patchwork_138592v1

  CI-20190529: 20190529
  CI_DRM_15408: e55e4cc47de4150012eec3e54b6d710967d66510 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8015: 8015
  Patchwork_138592v1: e55e4cc47de4150012eec3e54b6d710967d66510 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138592v1/index.html

--===============1241662875956845163==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Don&#x27;t allow tile4 framebuffer to do hflip on Xe2</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138592/">https://patchwork.freedesktop.org/series/138592/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138592v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138592v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15408 -&gt; Patchwork_138592v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138592v1/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): fi-snb-2520m fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138592v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15408/bat-arls-1/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138592v1/bat-arls-1/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15408/bat-arls-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138592v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15408 -&gt; Patchwork_138592v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15408: e55e4cc47de4150012eec3e54b6d710967d66510 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8015: 8015<br />
  Patchwork_138592v1: e55e4cc47de4150012eec3e54b6d710967d66510 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1241662875956845163==--
