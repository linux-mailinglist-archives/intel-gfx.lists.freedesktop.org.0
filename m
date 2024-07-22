Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B05939356
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 19:55:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3579A10E247;
	Mon, 22 Jul 2024 17:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7221410E250;
 Mon, 22 Jul 2024 17:55:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4388673057318189311=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/dp=3A_Make_read-on?=
 =?utf-8?q?ly_array_bw=5Fgbps_static_const?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Colin Ian King" <colin.i.king@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2024 17:55:25 -0000
Message-ID: <172167092545.342828.6107675811273151863@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240722153937.574819-1-colin.i.king@gmail.com>
In-Reply-To: <20240722153937.574819-1-colin.i.king@gmail.com>
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

--===============4388673057318189311==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Make read-only array bw_gbps static const
URL   : https://patchwork.freedesktop.org/series/136345/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15111 -> Patchwork_136345v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136345v1/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): bat-dg2-11 fi-snb-2520m fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_136345v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@guc:
    - bat-arls-1:         [PASS][1] -> [DMESG-WARN][2] ([i915#10341] / [i915#11378])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15111/bat-arls-1/igt@i915_selftest@live@guc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136345v1/bat-arls-1/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-arls-1:         [PASS][3] -> [DMESG-FAIL][4] ([i915#10262]) +2 other tests dmesg-fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15111/bat-arls-1/igt@i915_selftest@live@guc_multi_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136345v1/bat-arls-1/igt@i915_selftest@live@guc_multi_lrc.html

  
  [i915#10262]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378


Build changes
-------------

  * Linux: CI_DRM_15111 -> Patchwork_136345v1

  CI-20190529: 20190529
  CI_DRM_15111: c846680296ab908d20204e49300060a9d14221ce @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7933: 7933
  Patchwork_136345v1: c846680296ab908d20204e49300060a9d14221ce @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136345v1/index.html

--===============4388673057318189311==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Make read-only array bw_gbps static const</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136345/">https://patchwork.freedesktop.org/series/136345/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136345v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136345v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15111 -&gt; Patchwork_136345v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136345v1/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): bat-dg2-11 fi-snb-2520m fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136345v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15111/bat-arls-1/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136345v1/bat-arls-1/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15111/bat-arls-1/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136345v1/bat-arls-1/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a>) +2 other tests dmesg-fail</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15111 -&gt; Patchwork_136345v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15111: c846680296ab908d20204e49300060a9d14221ce @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7933: 7933<br />
  Patchwork_136345v1: c846680296ab908d20204e49300060a9d14221ce @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4388673057318189311==--
