Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E5286A1C8
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 22:37:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BED0F10E337;
	Tue, 27 Feb 2024 21:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18FFB10E337;
 Tue, 27 Feb 2024 21:37:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3300312962154362660=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/ttm=3A_Fix_TTM=5FP?=
 =?utf-8?q?L=5FFLAG=5FDESIRED?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Feb 2024 21:37:46 -0000
Message-ID: <170906986610.337279.4585592817197115833@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240227202645.20111-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240227202645.20111-1-ville.syrjala@linux.intel.com>
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

--===============3300312962154362660==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ttm: Fix TTM_PL_FLAG_DESIRED
URL   : https://patchwork.freedesktop.org/series/130457/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14352 -> Patchwork_130457v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_130457v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_130457v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130457v1/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130457v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-await@vecs0:
    - bat-rplp-1:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14352/bat-rplp-1/igt@gem_exec_fence@basic-await@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130457v1/bat-rplp-1/igt@gem_exec_fence@basic-await@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_130457v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-arls-3:         [PASS][3] -> [FAIL][4] ([i915#10234])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14352/bat-arls-3/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130457v1/bat-arls-3/boot.html

  
  [i915#10234]: https://gitlab.freedesktop.org/drm/intel/issues/10234


Build changes
-------------

  * Linux: CI_DRM_14352 -> Patchwork_130457v1

  CI-20190529: 20190529
  CI_DRM_14352: 0d7a78693be62a8d1cd311376815b89b18de8204 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7731: 17f897a81868fb35c6a7033a8b07256659742248 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_130457v1: 0d7a78693be62a8d1cd311376815b89b18de8204 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

30570721800e drm/i915/ttm: Fix TTM_PL_FLAG_DESIRED

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130457v1/index.html

--===============3300312962154362660==
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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: Fix TTM_PL_FLAG_DESIRED</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130457/">https://patchwork.freedesktop.org/series/130457/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130457v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130457v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14352 -&gt; Patchwork_130457v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_130457v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_130457v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130457v1/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130457v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_fence@basic-await@vecs0:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14352/bat-rplp-1/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130457v1/bat-rplp-1/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130457v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14352/bat-arls-3/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130457v1/bat-arls-3/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10234">i915#10234</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14352 -&gt; Patchwork_130457v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14352: 0d7a78693be62a8d1cd311376815b89b18de8204 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7731: 17f897a81868fb35c6a7033a8b07256659742248 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_130457v1: 0d7a78693be62a8d1cd311376815b89b18de8204 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>30570721800e drm/i915/ttm: Fix TTM_PL_FLAG_DESIRED</p>

</body>
</html>

--===============3300312962154362660==--
