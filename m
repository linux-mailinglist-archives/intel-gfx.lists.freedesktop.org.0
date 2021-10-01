Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 933BE41F26E
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 18:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9180D6E52C;
	Fri,  1 Oct 2021 16:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6DEA66E52C;
 Fri,  1 Oct 2021 16:47:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62CCFAA3D8;
 Fri,  1 Oct 2021 16:47:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1314244331591751094=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 01 Oct 2021 16:47:20 -0000
Message-ID: <163310684037.25585.2022711998971369278@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211001100316.26441-1-jani.nikula@intel.com>
In-Reply-To: <20211001100316.26441-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/reg=3A_add_AUD=5FTCA=5FDP=5F2DOT0=5FCTRL_registers?=
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

--===============1314244331591751094==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/reg: add AUD_TCA_DP_2DOT0_CTRL registers
URL   : https://patchwork.freedesktop.org/series/95316/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10678 -> Patchwork_21216
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21216/index.html

Known issues
------------

  Here are the changes found in Patchwork_21216 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +48 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21216/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@userptr:
    - fi-pnv-d510:        [INCOMPLETE][2] ([i915#299]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10678/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21216/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299


Participating hosts (33 -> 28)
------------------------------

  Missing    (5): bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10678 -> Patchwork_21216

  CI-20190529: 20190529
  CI_DRM_10678: 3b37020fc330891193b22d86106ca2abae75b034 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21216: 2e6ff8d7426c9399a17cd4d20f94d52f1bfc8505 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2e6ff8d7426c drm/i915/reg: add AUD_TCA_DP_2DOT0_CTRL registers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21216/index.html

--===============1314244331591751094==
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
<tr><td><b>Series:</b></td><td>drm/i915/reg: add AUD_TCA_DP_2DOT0_CTRL registers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95316/">https://patchwork.freedesktop.org/series/95316/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21216/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21216/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10678 -&gt; Patchwork_21216</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21216/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21216 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_vgem@basic-userptr:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21216/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_parallel@engines@userptr:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10678/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21216/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (33 -&gt; 28)</h2>
<p>Missing    (5): bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10678 -&gt; Patchwork_21216</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10678: 3b37020fc330891193b22d86106ca2abae75b034 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21216: 2e6ff8d7426c9399a17cd4d20f94d52f1bfc8505 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2e6ff8d7426c drm/i915/reg: add AUD_TCA_DP_2DOT0_CTRL registers</p>

</body>
</html>

--===============1314244331591751094==--
