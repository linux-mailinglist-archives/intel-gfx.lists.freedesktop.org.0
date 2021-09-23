Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E6F4157A1
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 06:41:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037026ECB0;
	Thu, 23 Sep 2021 04:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 746DC6ECAF;
 Thu, 23 Sep 2021 04:41:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F373AA914;
 Thu, 23 Sep 2021 04:41:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4667607569768058923=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 04:41:12 -0000
Message-ID: <163237207235.31049.11139410573085340648@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210914090412.1393498-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20210914090412.1393498-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_warning_from_the_rps_worker_=28rev3=29?=
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

--===============4667607569768058923==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove warning from the rps worker (rev3)
URL   : https://patchwork.freedesktop.org/series/94650/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10629 -> Patchwork_21140
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/index.html

Known issues
------------

  Here are the changes found in Patchwork_21140 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2] ([i915#794])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-r:           [DMESG-FAIL][3] ([i915#2291] / [i915#541]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html

  
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (42 -> 34)
------------------------------

  Missing    (8): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-ctg-p8600 fi-kbl-x1275 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10629 -> Patchwork_21140

  CI-20190529: 20190529
  CI_DRM_10629: ce6974ec90355ddef78e6bc2221cb2296e5ba349 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21140: ab9f33f1f6119518b032bb3f4e5da2b699aa6f20 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ab9f33f1f611 drm/i915: Remove warning from the rps worker

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/index.html

--===============4667607569768058923==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove warning from the rps worker (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94650/">https://patchwork.freedesktop.org/series/94650/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10629 -&gt; Patchwork_21140</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21140 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 34)</h2>
<p>Missing    (8): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-ctg-p8600 fi-kbl-x1275 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10629 -&gt; Patchwork_21140</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10629: ce6974ec90355ddef78e6bc2221cb2296e5ba349 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21140: ab9f33f1f6119518b032bb3f4e5da2b699aa6f20 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ab9f33f1f611 drm/i915: Remove warning from the rps worker</p>

</body>
</html>

--===============4667607569768058923==--
