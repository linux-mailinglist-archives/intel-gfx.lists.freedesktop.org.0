Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A0F3B9FF7
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 13:41:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09B636E135;
	Fri,  2 Jul 2021 11:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 927C76E12E;
 Fri,  2 Jul 2021 11:41:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8AC33A47EB;
 Fri,  2 Jul 2021 11:41:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 02 Jul 2021 11:41:30 -0000
Message-ID: <162522609056.22028.12920129141492885343@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210702104642.1189978-1-matthew.auld@intel.com>
In-Reply-To: <20210702104642.1189978-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/selftests=3A_fix_smatch_wa?=
 =?utf-8?q?rning_in_igt=5Fcheck=5Fblocks?=
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
Content-Type: multipart/mixed; boundary="===============0353706682=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0353706682==
Content-Type: multipart/alternative;
 boundary="===============6804768609080821731=="

--===============6804768609080821731==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/selftests: fix smatch warning in igt_check_blocks
URL   : https://patchwork.freedesktop.org/series/92150/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10302 -> Patchwork_20520
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20520/index.html

Known issues
------------

  Here are the changes found in Patchwork_20520 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][1] -> [INCOMPLETE][2] ([i915#2782])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10302/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20520/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782


Participating hosts (40 -> 34)
------------------------------

  Missing    (6): fi-kbl-soraka fi-bsw-cyan bat-adls-4 bat-adls-3 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10302 -> Patchwork_20520

  CI-20190529: 20190529
  CI_DRM_10302: 403c15e48caac46206e92d703408fe07d83c6bf4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20520: 337f0543a04c2c79c40f7602b5b3f19d278b3ab0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

337f0543a04c drm/i915/selftests: fix smatch warning in mock_reserve
0da2bc133432 drm/i915/selftests: fix smatch warning in igt_check_blocks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20520/index.html

--===============6804768609080821731==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/selftests: fix smatch warning in igt_check_blocks</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92150/">https://patchwork.freedesktop.org/series/92150/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20520/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20520/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10302 -&gt; Patchwork_20520</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20520/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20520 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10302/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20520/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 34)</h2>
<p>Missing    (6): fi-kbl-soraka fi-bsw-cyan bat-adls-4 bat-adls-3 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10302 -&gt; Patchwork_20520</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10302: 403c15e48caac46206e92d703408fe07d83c6bf4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20520: 337f0543a04c2c79c40f7602b5b3f19d278b3ab0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>337f0543a04c drm/i915/selftests: fix smatch warning in mock_reserve<br />
0da2bc133432 drm/i915/selftests: fix smatch warning in igt_check_blocks</p>

</body>
</html>

--===============6804768609080821731==--

--===============0353706682==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0353706682==--
