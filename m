Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C12872E9BA8
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 18:04:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 246816E02B;
	Mon,  4 Jan 2021 17:04:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 81C176E029;
 Mon,  4 Jan 2021 17:04:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C244A8831;
 Mon,  4 Jan 2021 17:04:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 04 Jan 2021 17:04:34 -0000
Message-ID: <160977987450.24932.14372945159537721986@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210104140135.26285-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210104140135.26285-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gem=3A_Almagamate_clflushe?=
 =?utf-8?q?s_on_suspend?=
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
Content-Type: multipart/mixed; boundary="===============1073071258=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1073071258==
Content-Type: multipart/alternative;
 boundary="===============5454385047397861836=="

--===============5454385047397861836==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/gem: Almagamate clflushes on suspend
URL   : https://patchwork.freedesktop.org/series/85445/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9542 -> Patchwork_19249
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/index.html

Known issues
------------

  Here are the changes found in Patchwork_19249 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_linear_blits@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9542/fi-tgl-y/igt@gem_linear_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/fi-tgl-y/igt@gem_linear_blits@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [PASS][3] -> [DMESG-FAIL][4] ([i915#2601])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9542/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bsw-nick:        [PASS][5] -> [DMESG-FAIL][6] ([i915#2675] / [i915#541])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9542/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - fi-ivb-3770:        [PASS][7] -> [INCOMPLETE][8] ([i915#2782])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9542/fi-ivb-3770/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/fi-ivb-3770/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@gem_tiled_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][9] ([i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9542/fi-tgl-y/igt@gem_tiled_blits@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/fi-tgl-y/igt@gem_tiled_blits@basic.html

  
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#2675]: https://gitlab.freedesktop.org/drm/intel/issues/2675
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (40 -> 36)
------------------------------

  Missing    (4): fi-cml-u2 fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9542 -> Patchwork_19249

  CI-20190529: 20190529
  CI_DRM_9542: 64db0a08e9841f4cbe0fa5a37feba8606802fe13 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5941: 58b135e66be4fa4db8f668fa5d125b31537cb9a6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19249: 644d89d97dcfd3ee52e9406c4cfc9f11bf0ed44d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

644d89d97dcf drm/i915/gem: Almagamate clflushes on freeze
6aa49b77f911 drm/i915/gem: Almagamate clflushes on suspend

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/index.html

--===============5454385047397861836==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/gem: Almagamate clflushes on suspend</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85445/">https://patchwork.freedesktop.org/series/85445/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9542 -&gt; Patchwork_19249</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19249 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9542/fi-tgl-y/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/fi-tgl-y/igt@gem_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9542/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9542/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2675">i915#2675</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9542/fi-ivb-3770/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/fi-ivb-3770/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_tiled_blits@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9542/fi-tgl-y/igt@gem_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19249/fi-tgl-y/igt@gem_tiled_blits@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 36)</h2>
<p>Missing    (4): fi-cml-u2 fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9542 -&gt; Patchwork_19249</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9542: 64db0a08e9841f4cbe0fa5a37feba8606802fe13 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5941: 58b135e66be4fa4db8f668fa5d125b31537cb9a6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19249: 644d89d97dcfd3ee52e9406c4cfc9f11bf0ed44d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>644d89d97dcf drm/i915/gem: Almagamate clflushes on freeze<br />
6aa49b77f911 drm/i915/gem: Almagamate clflushes on suspend</p>

</body>
</html>

--===============5454385047397861836==--

--===============1073071258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1073071258==--
