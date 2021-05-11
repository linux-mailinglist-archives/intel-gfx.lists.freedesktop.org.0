Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD58379FC2
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 08:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A8616E9C1;
	Tue, 11 May 2021 06:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43D316E9C1;
 Tue, 11 May 2021 06:37:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B950A7DFC;
 Tue, 11 May 2021 06:37:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "HardikX Deepakkumar patel" <hardikx.deepakkumar.patel@intel.com>
Date: Tue, 11 May 2021 06:37:37 -0000
Message-ID: <162071505723.32035.1765128612696474590@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210511054239.214607-1-hardikx.deepakkumar.patel@intel.com>
In-Reply-To: <20210511054239.214607-1-hardikx.deepakkumar.patel@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Memory_mapping_with_IOMMU?=
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
Content-Type: multipart/mixed; boundary="===============0792157546=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0792157546==
Content-Type: multipart/alternative;
 boundary="===============5049730417685132530=="

--===============5049730417685132530==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Memory mapping with IOMMU
URL   : https://patchwork.freedesktop.org/series/89987/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10064 -> Patchwork_20096
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20096/index.html

Known issues
------------

  Here are the changes found in Patchwork_20096 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2] ([i915#203]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10064/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20096/fi-cfl-8109u/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3276]: https://gitlab.freedesktop.org/drm/intel/issues/3276
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (40 -> 39)
------------------------------

  Additional (1): fi-rkl-11500t 
  Missing    (2): fi-ilk-m540 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10064 -> Patchwork_20096

  CI-20190529: 20190529
  CI_DRM_10064: eb2730cd1643ffb717211862c1d66eeb8e5b31cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6081: fdff4bba7abf9cb7c8ea21abf14e36d344ebb8c1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20096: d70eeba8b0773f534bcda0a998dbc3f4efef8bc9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d70eeba8b077 drm/i915/selftests: Memory mapping with IOMMU

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20096/index.html

--===============5049730417685132530==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Memory mapping with IOMMU</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89987/">https://patchwork.freedesktop.org/series/89987/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20096/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20096/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10064 -&gt; Patchwork_20096</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20096/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20096 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10064/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20096/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Additional (1): fi-rkl-11500t <br />
  Missing    (2): fi-ilk-m540 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10064 -&gt; Patchwork_20096</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10064: eb2730cd1643ffb717211862c1d66eeb8e5b31cf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6081: fdff4bba7abf9cb7c8ea21abf14e36d344ebb8c1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20096: d70eeba8b0773f534bcda0a998dbc3f4efef8bc9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d70eeba8b077 drm/i915/selftests: Memory mapping with IOMMU</p>

</body>
</html>

--===============5049730417685132530==--

--===============0792157546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0792157546==--
