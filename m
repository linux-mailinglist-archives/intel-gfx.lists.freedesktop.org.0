Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E11B93B3903
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 23:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07B046E05A;
	Thu, 24 Jun 2021 21:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DCEA76E05A;
 Thu, 24 Jun 2021 21:59:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D52E2A7DFB;
 Thu, 24 Jun 2021 21:59:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Thu, 24 Jun 2021 21:59:03 -0000
Message-ID: <162457194384.1852.7272958183069622610@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624174732.1754546-1-jason@jlekstrand.net>
In-Reply-To: <20210624174732.1754546-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZG1h?=
 =?utf-8?q?-buf/sync=5Ffile=3A_Don=27t_leak_fences_on_merge_failure?=
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
Content-Type: multipart/mixed; boundary="===============0454573543=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0454573543==
Content-Type: multipart/alternative;
 boundary="===============0138564987860425039=="

--===============0138564987860425039==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: dma-buf/sync_file: Don't leak fences on merge failure
URL   : https://patchwork.freedesktop.org/series/91888/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10278 -> Patchwork_20461
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20461/index.html

Known issues
------------

  Here are the changes found in Patchwork_20461 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bdw-5557u:       [PASS][1] -> [DMESG-FAIL][2] ([i915#541])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20461/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][3] ([i915#1982] / [k.org#205379]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/fi-tgl-dsi/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20461/fi-tgl-dsi/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10278 -> Patchwork_20461

  CI-20190529: 20190529
  CI_DRM_10278: 33497e95c159f1fe3393f1016b1ec1187eab1589 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6119: a306810ebbc8984bde38a57ef0c33eea394f4e18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20461: eca3b2db550829b76113089f8c877a4bee198ab9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

eca3b2db5508 dma-buf/sync_file: Don't leak fences on merge failure

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20461/index.html

--===============0138564987860425039==
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
<tr><td><b>Series:</b></td><td>dma-buf/sync_file: Don&#39;t leak fences on merge failure</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91888/">https://patchwork.freedesktop.org/series/91888/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20461/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20461/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10278 -&gt; Patchwork_20461</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20461/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20461 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20461/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20461/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10278 -&gt; Patchwork_20461</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10278: 33497e95c159f1fe3393f1016b1ec1187eab1589 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6119: a306810ebbc8984bde38a57ef0c33eea394f4e18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20461: eca3b2db550829b76113089f8c877a4bee198ab9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>eca3b2db5508 dma-buf/sync_file: Don't leak fences on merge failure</p>

</body>
</html>

--===============0138564987860425039==--

--===============0454573543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0454573543==--
