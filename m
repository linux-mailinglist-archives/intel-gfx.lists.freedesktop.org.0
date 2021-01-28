Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE63A307E6E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 19:52:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE5E6E212;
	Thu, 28 Jan 2021 18:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 949A16E210;
 Thu, 28 Jan 2021 18:52:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8ED20A00E6;
 Thu, 28 Jan 2021 18:52:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Thu, 28 Jan 2021 18:52:40 -0000
Message-ID: <161185996058.13617.7356241622678401396@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210128164312.91160-1-jose.souza@intel.com>
In-Reply-To: <20210128164312.91160-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Nuke_not_needed_me?=
 =?utf-8?q?mbers_of_dram=5Finfo?=
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
Content-Type: multipart/mixed; boundary="===============0818557221=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0818557221==
Content-Type: multipart/alternative;
 boundary="===============1039843515874741277=="

--===============1039843515874741277==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/3] drm/i915: Nuke not needed members of dram_info
URL   : https://patchwork.freedesktop.org/series/86404/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9695 -> Patchwork_19531
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19531/index.html

Known issues
------------

  Here are the changes found in Patchwork_19531 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@read:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-y/igt@fbdev@read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19531/fi-tgl-y/igt@fbdev@read.html

  
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9695 -> Patchwork_19531

  CI-20190529: 20190529
  CI_DRM_9695: 67e514b158700703fcaaed71c3fb1eea8b2e645c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5977: 0b6967520b15e73773eace7937ed8c17ba411bc0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19531: 8e4dd2f243e2cc51d43e6b67f2a9d6d2ce5c45a3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8e4dd2f243e2 drm/i915: Rename is_16gb_dimm to wm_lv_0_adjust_needed
287b939f58f6 drm/i915/gen11+: Only load DRAM information from pcode
0373afb0d1b9 drm/i915: Nuke not needed members of dram_info

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19531/index.html

--===============1039843515874741277==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/3] drm/i915: Nuke not needed members of dram_info</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86404/">https://patchwork.freedesktop.org/series/86404/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19531/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19531/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9695 -&gt; Patchwork_19531</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19531/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19531 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@fbdev@read:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-y/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19531/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9695 -&gt; Patchwork_19531</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9695: 67e514b158700703fcaaed71c3fb1eea8b2e645c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5977: 0b6967520b15e73773eace7937ed8c17ba411bc0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19531: 8e4dd2f243e2cc51d43e6b67f2a9d6d2ce5c45a3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8e4dd2f243e2 drm/i915: Rename is_16gb_dimm to wm_lv_0_adjust_needed<br />
287b939f58f6 drm/i915/gen11+: Only load DRAM information from pcode<br />
0373afb0d1b9 drm/i915: Nuke not needed members of dram_info</p>

</body>
</html>

--===============1039843515874741277==--

--===============0818557221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0818557221==--
