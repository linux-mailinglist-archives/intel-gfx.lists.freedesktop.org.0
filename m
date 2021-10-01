Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E237A41EE82
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 15:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B65E6E491;
	Fri,  1 Oct 2021 13:25:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8F5176E491;
 Fri,  1 Oct 2021 13:25:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7997FA363C;
 Fri,  1 Oct 2021 13:25:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1956502301812236609=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 01 Oct 2021 13:25:34 -0000
Message-ID: <163309473449.25584.3922381388993082449@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210928223241.22149-1-jani.nikula@intel.com>
In-Reply-To: <20210928223241.22149-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/locking=3A_add_backtrace_for_locking_contended_locks_without_b?=
 =?utf-8?q?ackoff_=28rev2=29?=
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

--===============1956502301812236609==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/locking: add backtrace for locking contended locks without backoff (rev2)
URL   : https://patchwork.freedesktop.org/series/95182/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10674 -> Patchwork_21215
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21215/index.html

Known issues
------------

  Here are the changes found in Patchwork_21215 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-tgl-dsi}:       [DMESG-FAIL][1] ([i915#541]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10674/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21215/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (33 -> 28)
------------------------------

  Additional (1): fi-jsl-1 
  Missing    (6): bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 bat-jsl-2 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10674 -> Patchwork_21215

  CI-20190529: 20190529
  CI_DRM_10674: 3e43eef827708f7c371bc29c9756cf0808b42e3b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21215: 28bb80fe73993f57ae38a728187d9590a516a5fd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

28bb80fe7399 drm/locking: add backtrace for locking contended locks without backoff

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21215/index.html

--===============1956502301812236609==
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
<tr><td><b>Series:</b></td><td>drm/locking: add backtrace for locking contended locks without backoff (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95182/">https://patchwork.freedesktop.org/series/95182/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21215/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21215/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10674 -&gt; Patchwork_21215</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21215/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21215 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10674/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21215/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (33 -&gt; 28)</h2>
<p>Additional (1): fi-jsl-1 <br />
  Missing    (6): bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 bat-jsl-2 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10674 -&gt; Patchwork_21215</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10674: 3e43eef827708f7c371bc29c9756cf0808b42e3b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21215: 28bb80fe73993f57ae38a728187d9590a516a5fd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>28bb80fe7399 drm/locking: add backtrace for locking contended locks without backoff</p>

</body>
</html>

--===============1956502301812236609==--
