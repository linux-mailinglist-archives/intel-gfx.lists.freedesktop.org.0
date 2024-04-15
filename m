Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A03C58A4E3E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 13:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E22C1124D6;
	Mon, 15 Apr 2024 11:59:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE2731124D6;
 Mon, 15 Apr 2024 11:59:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6117505416369902693=="
MIME-Version: 1.0
Subject: =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdpdGgg?=
 =?utf-8?b?W0NJLW9ubHksMS84XSBkcm06IEFkZCBkcm1fdmJsYW5rX3dvcmtfZmx1c2hfYWxs?=
 =?utf-8?b?KCku?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Apr 2024 11:59:25 -0000
Message-ID: <171318236577.1404431.16974475708899573066@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240412130946.13148-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240412130946.13148-1-maarten.lankhorst@linux.intel.com>
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

--===============6117505416369902693==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI-only,1/8] drm: Add drm_vblank_work_flush_all().
URL   : https://patchwork.freedesktop.org/series/132374/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14572 -> Patchwork_132374v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/index.html

Participating hosts (40 -> 37)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (4): bat-dg1-7 bat-jsl-1 fi-snb-2520m fi-kbl-8809g 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_132374v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@module-reload:
    - {bat-mtlp-9}:       [PASS][1] -> [CRASH][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_132374v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][3] ([i915#1849])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-9:          [PASS][4] -> [FAIL][5] ([i915#10378])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][6] +39 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         [FAIL][7] ([i915#10378]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849


Build changes
-------------

  * Linux: CI_DRM_14572 -> Patchwork_132374v1

  CI-20190529: 20190529
  CI_DRM_14572: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132374v1: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ddc2e6d6bb78 drm/xe/display: Re-use display vmas when possible
4e1c60b4cd5d drm/xe/display: Prevent overwriting original GGTT when taking over initial FB.
42189385ffb2 drm/xe: Use simple xchg to cache DPT
5e72b72e7993 drm/xe: Remove safety check from __xe_ttm_stolen_io_mem_reserve_stolen
e77a8f80d84a drm/xe/display: Preparations for preallocating dpt bo
feae1a339505 drm/i915: Use the same vblank worker for atomic unpin
93433864266a drm/i915: Use vblank worker to unpin old legacy cursor fb safely
cff4a8948463 drm: Add drm_vblank_work_flush_all().

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/index.html

--===============6117505416369902693==
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
<tr><td><b>Series:</b></td><td>series starting with [CI-only,1/8] drm: Add drm_vblank_work_flush_all().</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132374/">https://patchwork.freedesktop.org/series/132374/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14572 -&gt; Patchwork_132374v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/index.html</p>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (4): bat-dg1-7 bat-jsl-1 fi-snb-2520m fi-kbl-8809g </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_132374v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">CRASH</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132374v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +39 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_lmem_swapping@basic@lmem0:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132374v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14572 -&gt; Patchwork_132374v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14572: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132374v1: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ddc2e6d6bb78 drm/xe/display: Re-use display vmas when possible<br />
4e1c60b4cd5d drm/xe/display: Prevent overwriting original GGTT when taking over initial FB.<br />
42189385ffb2 drm/xe: Use simple xchg to cache DPT<br />
5e72b72e7993 drm/xe: Remove safety check from __xe_ttm_stolen_io_mem_reserve_stolen<br />
e77a8f80d84a drm/xe/display: Preparations for preallocating dpt bo<br />
feae1a339505 drm/i915: Use the same vblank worker for atomic unpin<br />
93433864266a drm/i915: Use vblank worker to unpin old legacy cursor fb safely<br />
cff4a8948463 drm: Add drm_vblank_work_flush_all().</p>

</body>
</html>

--===============6117505416369902693==--
