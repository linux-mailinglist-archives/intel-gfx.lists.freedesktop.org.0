Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D873994D26
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 15:02:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C9B10E526;
	Tue,  8 Oct 2024 13:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C95010E528;
 Tue,  8 Oct 2024 13:02:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7825285307334957699=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm=3A_Introduce_DRM_client?=
 =?utf-8?q?_library_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 08 Oct 2024 13:02:16 -0000
Message-ID: <172839253659.1203920.519363514713305319@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241008120652.159190-1-tzimmermann@suse.de>
In-Reply-To: <20241008120652.159190-1-tzimmermann@suse.de>
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

--===============7825285307334957699==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Introduce DRM client library (rev3)
URL   : https://patchwork.freedesktop.org/series/139221/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15490 -> Patchwork_139221v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v3/index.html

Participating hosts (44 -> 42)
------------------------------

  Missing    (2): bat-rpls-4 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_139221v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-WARN][2] ([i915#12310]) +1 other test dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/fi-hsw-4770/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v3/fi-hsw-4770/igt@i915_selftest@live.html

  
  [i915#12310]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12310


Build changes
-------------

  * Linux: CI_DRM_15490 -> Patchwork_139221v3

  CI-20190529: 20190529
  CI_DRM_15490: 131a5dd267541faa13894b97d44af39b257fc887 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8056: a327720fd57ba9f17ed8f15c6453cd2234f9398d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_139221v3: 131a5dd267541faa13894b97d44af39b257fc887 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v3/index.html

--===============7825285307334957699==
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
<tr><td><b>Series:</b></td><td>drm: Introduce DRM client library (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139221/">https://patchwork.freedesktop.org/series/139221/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15490 -&gt; Patchwork_139221v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v3/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Missing    (2): bat-rpls-4 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139221v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/fi-hsw-4770/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v3/fi-hsw-4770/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12310">i915#12310</a>) +1 other test dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15490 -&gt; Patchwork_139221v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15490: 131a5dd267541faa13894b97d44af39b257fc887 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8056: a327720fd57ba9f17ed8f15c6453cd2234f9398d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_139221v3: 131a5dd267541faa13894b97d44af39b257fc887 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7825285307334957699==--
