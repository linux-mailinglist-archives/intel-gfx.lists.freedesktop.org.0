Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DADEC965FC8
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 13:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09BDD10EA7A;
	Fri, 30 Aug 2024 11:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0C2910EA79;
 Fri, 30 Aug 2024 11:00:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7093978747774235904=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_fbdev=3A_Introduce_devm=5Fr?=
 =?utf-8?q?egister=5Fframebuffer=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2024 11:00:35 -0000
Message-ID: <172501563597.854308.6402461382379994254@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240830-fbdev-devm_register_framebuffer-v1-1-6d4186519c68@weissschuh.net>
In-Reply-To: <20240830-fbdev-devm_register_framebuffer-v1-1-6d4186519c68@weissschuh.net>
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

--===============7093978747774235904==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: fbdev: Introduce devm_register_framebuffer()
URL   : https://patchwork.freedesktop.org/series/138009/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15331 -> Patchwork_138009v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138009v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Additional (1): bat-arlh-3 
  Missing    (3): bat-dg2-11 bat-arls-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_138009v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-2:         [DMESG-WARN][1] ([i915#11349]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15331/bat-arls-2/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138009v1/bat-arls-2/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10196
  [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#11725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725
  [i915#12041]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12041
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318


Build changes
-------------

  * Linux: CI_DRM_15331 -> Patchwork_138009v1

  CI-20190529: 20190529
  CI_DRM_15331: 2c1b4f4d497c7c28266d94a00170aad1bbaec5e3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7999: a73311079a5d8ac99eb25336a8369a2c3c6b519b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_138009v1: 2c1b4f4d497c7c28266d94a00170aad1bbaec5e3 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138009v1/index.html

--===============7093978747774235904==
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
<tr><td><b>Series:</b></td><td>fbdev: Introduce devm_register_framebuffer()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138009/">https://patchwork.freedesktop.org/series/138009/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138009v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138009v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15331 -&gt; Patchwork_138009v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138009v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Additional (1): bat-arlh-3 <br />
  Missing    (3): bat-dg2-11 bat-arls-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138009v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15331/bat-arls-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138009v1/bat-arls-2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15331 -&gt; Patchwork_138009v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15331: 2c1b4f4d497c7c28266d94a00170aad1bbaec5e3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7999: a73311079a5d8ac99eb25336a8369a2c3c6b519b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_138009v1: 2c1b4f4d497c7c28266d94a00170aad1bbaec5e3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7093978747774235904==--
