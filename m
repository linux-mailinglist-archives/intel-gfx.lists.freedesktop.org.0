Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD50C8A4DC1
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 13:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60EA310FB68;
	Mon, 15 Apr 2024 11:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FC1310FB20;
 Mon, 15 Apr 2024 11:32:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2274383630758108301=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_treewide=3A_Fix_common_gram?=
 =?utf-8?q?mar_mistake_=22the_the=22?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thorsten Blum" <thorsten.blum@toblux.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Apr 2024 11:32:38 -0000
Message-ID: <171318075839.1404431.12798441222605841837@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240411150437.496153-4-thorsten.blum@toblux.com>
In-Reply-To: <20240411150437.496153-4-thorsten.blum@toblux.com>
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

--===============2274383630758108301==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: treewide: Fix common grammar mistake "the the"
URL   : https://patchwork.freedesktop.org/series/132369/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14572 -> Patchwork_132369v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_132369v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_132369v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132369v1/index.html

Participating hosts (40 -> 34)
------------------------------

  Missing    (6): bat-dg1-7 fi-apl-guc fi-snb-2520m fi-elk-e7500 bat-jsl-1 bat-arls-3 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_132369v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@dmabuf:
    - bat-arls-2:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-arls-2/igt@i915_selftest@live@dmabuf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132369v1/bat-arls-2/igt@i915_selftest@live@dmabuf.html

  
Known issues
------------

  Here are the changes found in Patchwork_132369v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         [FAIL][3] ([i915#10378]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132369v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html

  
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378


Build changes
-------------

  * Linux: CI_DRM_14572 -> Patchwork_132369v1

  CI-20190529: 20190529
  CI_DRM_14572: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132369v1: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b94494866768 treewide: Fix common grammar mistake "the the"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132369v1/index.html

--===============2274383630758108301==
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
<tr><td><b>Series:</b></td><td>treewide: Fix common grammar mistake &quot;the the&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132369/">https://patchwork.freedesktop.org/series/132369/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132369v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132369v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14572 -&gt; Patchwork_132369v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_132369v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_132369v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132369v1/index.html</p>
<h2>Participating hosts (40 -&gt; 34)</h2>
<p>Missing    (6): bat-dg1-7 fi-apl-guc fi-snb-2520m fi-elk-e7500 bat-jsl-1 bat-arls-3 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_132369v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@dmabuf:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-arls-2/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132369v1/bat-arls-2/igt@i915_selftest@live@dmabuf.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132369v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_lmem_swapping@basic@lmem0:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132369v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14572 -&gt; Patchwork_132369v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14572: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132369v1: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b94494866768 treewide: Fix common grammar mistake "the the"</p>

</body>
</html>

--===============2274383630758108301==--
