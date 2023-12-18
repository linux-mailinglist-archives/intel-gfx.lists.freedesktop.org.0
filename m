Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EE5816933
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 10:06:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1034310E083;
	Mon, 18 Dec 2023 09:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8CD4810E037;
 Mon, 18 Dec 2023 09:06:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A95DAADDA;
 Mon, 18 Dec 2023 09:06:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4947119499343711499=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Remove_?=
 =?utf-8?q?dead_code_around_intel=5Fatomic=5Fhelper-=3Efree=5Flist_=28rev9?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Mon, 18 Dec 2023 09:06:11 -0000
Message-ID: <170289037146.12104.3995274964919240190@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231114134141.2527694-1-jouni.hogander@intel.com>
In-Reply-To: <20231114134141.2527694-1-jouni.hogander@intel.com>
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

--===============4947119499343711499==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Remove dead code around intel_atomic_helper->free_list (rev9)
URL   : https://patchwork.freedesktop.org/series/126250/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14034 -> Patchwork_126250v9
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v9/index.html

Participating hosts (36 -> 36)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (1): fi-snb-2520m 

New tests
---------

  New tests have been introduced between CI_DRM_14034 and Patchwork_126250v9:

### New CI tests (1) ###

  * boot:
    - Statuses : 36 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_126250v9 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271]) +15 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v9/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@kms_pm_rpm@basic-rte:
    - bat-rpls-2:         [PASS][2] -> [ABORT][3] ([i915#8668] / [i915#9897])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14034/bat-rpls-2/igt@kms_pm_rpm@basic-rte.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v9/bat-rpls-2/igt@kms_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9897]: https://gitlab.freedesktop.org/drm/intel/issues/9897


Build changes
-------------

  * Linux: CI_DRM_14034 -> Patchwork_126250v9

  CI-20190529: 20190529
  CI_DRM_14034: 552a636613e2836e7c2c0ab7a1a27066127ca97d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7644: 2a2b716161007f885855d6dfcb90b526183e624e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126250v9: 552a636613e2836e7c2c0ab7a1a27066127ca97d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ee850b31ec54 drm/i915/display: Remove dead code around intel_atomic_helper->free_list

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v9/index.html

--===============4947119499343711499==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Remove dead code around intel_atomic_helper-&gt;free_list (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126250/">https://patchwork.freedesktop.org/series/126250/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v9/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14034 -&gt; Patchwork_126250v9</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v9/index.html</p>
<h2>Participating hosts (36 -&gt; 36)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14034 and Patchwork_126250v9:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126250v9 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v9/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14034/bat-rpls-2/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v9/bat-rpls-2/igt@kms_pm_rpm@basic-rte.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9897">i915#9897</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14034 -&gt; Patchwork_126250v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14034: 552a636613e2836e7c2c0ab7a1a27066127ca97d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7644: 2a2b716161007f885855d6dfcb90b526183e624e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126250v9: 552a636613e2836e7c2c0ab7a1a27066127ca97d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ee850b31ec54 drm/i915/display: Remove dead code around intel_atomic_helper-&gt;free_list</p>

</body>
</html>

--===============4947119499343711499==--
