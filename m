Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF346EEB80
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 02:36:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E481410E855;
	Wed, 26 Apr 2023 00:36:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3671510E84F;
 Wed, 26 Apr 2023 00:36:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EEDAAADE8;
 Wed, 26 Apr 2023 00:36:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3490356094663520932=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Wed, 26 Apr 2023 00:36:43 -0000
Message-ID: <168246940316.17151.7425870056645533096@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230425202826.1144429-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230425202826.1144429-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgbXRs?=
 =?utf-8?q?=3A_add_support_for_pmdemand_=28rev2=29?=
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

--===============3490356094663520932==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: mtl: add support for pmdemand (rev2)
URL   : https://patchwork.freedesktop.org/series/116949/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13062 -> Patchwork_116949v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_116949v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_116949v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v2/index.html

Participating hosts (39 -> 37)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116949v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@mman:
    - bat-dg2-11:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-11/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v2/bat-dg2-11/igt@i915_selftest@live@mman.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@hugepages:
    - {bat-mtlp-8}:       NOTRUN -> [FAIL][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v2/bat-mtlp-8/igt@i915_selftest@live@hugepages.html

  
Known issues
------------

  Here are the changes found in Patchwork_116949v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-11:         [PASS][4] -> [FAIL][5] ([i915#8308])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v2/bat-dg2-11/igt@i915_pm_rps@basic-api.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-8}:       [ABORT][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v2/bat-mtlp-8/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#8308]: https://gitlab.freedesktop.org/drm/intel/issues/8308


Build changes
-------------

  * Linux: CI_DRM_13062 -> Patchwork_116949v2

  CI-20190529: 20190529
  CI_DRM_13062: 5a0333cf630a335d7e8f60fd2b8526ed0895900c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7270: 3bd8bf9bca97bbfb7b4b408f9fccd0cf6f742d4c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116949v2: 5a0333cf630a335d7e8f60fd2b8526ed0895900c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f65b5be992b6 drm/i915/display: provision to suppress drm_warn in intel_get_crtc_new_encoder
897e3abe75c0 drm/i915/mtl: Add support for PM DEMAND
fc0cdce0114b drm/i915/mtl: find best QGV point and configure sagv
f149d24d2e6e drm/i915: modify max_bw to return index to intel_bw_info
d7b062eb1108 drm/i915: extract intel_bw_check_qgv_points()
333fda9f3b68 drm/i915: store the peak bw per QGV point
46b74dc0feaf drm/i915: update the QGV point frequency calculations
27bfa64f8cc4 drm/i915: fix the derating percentage for MTL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v2/index.html

--===============3490356094663520932==
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
<tr><td><b>Series:</b></td><td>mtl: add support for pmdemand (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116949/">https://patchwork.freedesktop.org/series/116949/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13062 -&gt; Patchwork_116949v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_116949v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_116949v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v2/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116949v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@mman:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-11/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v2/bat-dg2-11/igt@i915_selftest@live@mman.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@hugepages:<ul>
<li>{bat-mtlp-8}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v2/bat-mtlp-8/igt@i915_selftest@live@hugepages.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116949v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_pm_rps@basic-api:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-11/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v2/bat-dg2-11/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v2/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13062 -&gt; Patchwork_116949v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13062: 5a0333cf630a335d7e8f60fd2b8526ed0895900c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7270: 3bd8bf9bca97bbfb7b4b408f9fccd0cf6f742d4c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116949v2: 5a0333cf630a335d7e8f60fd2b8526ed0895900c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f65b5be992b6 drm/i915/display: provision to suppress drm_warn in intel_get_crtc_new_encoder<br />
897e3abe75c0 drm/i915/mtl: Add support for PM DEMAND<br />
fc0cdce0114b drm/i915/mtl: find best QGV point and configure sagv<br />
f149d24d2e6e drm/i915: modify max_bw to return index to intel_bw_info<br />
d7b062eb1108 drm/i915: extract intel_bw_check_qgv_points()<br />
333fda9f3b68 drm/i915: store the peak bw per QGV point<br />
46b74dc0feaf drm/i915: update the QGV point frequency calculations<br />
27bfa64f8cc4 drm/i915: fix the derating percentage for MTL</p>

</body>
</html>

--===============3490356094663520932==--
