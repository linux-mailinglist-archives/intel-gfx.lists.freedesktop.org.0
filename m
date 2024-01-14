Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD3D82D16C
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Jan 2024 17:24:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC89810E1A7;
	Sun, 14 Jan 2024 16:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C51510E19C;
 Sun, 14 Jan 2024 16:24:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1254452377825795449=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/guc=3A_Remove_usag?=
 =?utf-8?q?e_of_the_deprecated_ida=5Fsimple=5Fxx=28=29_API?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christophe JAILLET" <christophe.jaillet@wanadoo.fr>
Date: Sun, 14 Jan 2024 16:24:06 -0000
Message-ID: <170524944630.386536.1500965754720276537@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <7108c1871c6cb08d403c4fa6534bc7e6de4cb23d.1705245316.git.christophe.jaillet@wanadoo.fr>
In-Reply-To: <7108c1871c6cb08d403c4fa6534bc7e6de4cb23d.1705245316.git.christophe.jaillet@wanadoo.fr>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1254452377825795449==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Remove usage of the deprecated ida_simple_xx() API
URL   : https://patchwork.freedesktop.org/series/128759/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14120 -> Patchwork_128759v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128759v1/index.html

Participating hosts (38 -> 34)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (5): fi-bsw-n3050 bat-adlm-1 fi-snb-2520m bat-adls-6 bat-mtlp-8 

Known issues
------------

  Here are the changes found in Patchwork_128759v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-apl-guc:         [PASS][1] -> [DMESG-WARN][2] ([i915#8703])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14120/fi-apl-guc/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128759v1/fi-apl-guc/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271]) +31 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128759v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#8703]: https://gitlab.freedesktop.org/drm/intel/issues/8703


Build changes
-------------

  * Linux: CI_DRM_14120 -> Patchwork_128759v1

  CI-20190529: 20190529
  CI_DRM_14120: 05b317e8457c8e2bd1a797c9440ec07b7f341584 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7673: 7673
  Patchwork_128759v1: 05b317e8457c8e2bd1a797c9440ec07b7f341584 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7306aaa17db6 drm/i915/guc: Remove usage of the deprecated ida_simple_xx() API

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128759v1/index.html

--===============1254452377825795449==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Remove usage of the deprecated ida_simple_xx() API</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128759/">https://patchwork.freedesktop.org/series/128759/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128759v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128759v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14120 -&gt; Patchwork_128759v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128759v1/index.html</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (5): fi-bsw-n3050 bat-adlm-1 fi-snb-2520m bat-adls-6 bat-mtlp-8 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128759v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14120/fi-apl-guc/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128759v1/fi-apl-guc/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8703">i915#8703</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128759v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14120 -&gt; Patchwork_128759v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14120: 05b317e8457c8e2bd1a797c9440ec07b7f341584 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7673: 7673<br />
  Patchwork_128759v1: 05b317e8457c8e2bd1a797c9440ec07b7f341584 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7306aaa17db6 drm/i915/guc: Remove usage of the deprecated ida_simple_xx() API</p>

</body>
</html>

--===============1254452377825795449==--
