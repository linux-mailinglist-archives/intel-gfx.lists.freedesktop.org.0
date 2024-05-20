Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 372EF8CA1EF
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:20:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FFC010E7FA;
	Mon, 20 May 2024 18:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA33E10E7FA;
 Mon, 20 May 2024 18:20:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3668500862869731253=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Plane_register_?=
 =?utf-8?q?cleanups_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2024 18:20:37 -0000
Message-ID: <171622923775.2160912.2885640420755233562@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
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

--===============3668500862869731253==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Plane register cleanups (rev3)
URL   : https://patchwork.freedesktop.org/series/133701/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14785 -> Patchwork_133701v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/index.html

Participating hosts (41 -> 41)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (1): bat-arls-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_133701v3:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1:
    - {bat-twl-1}:        [PASS][1] -> [DMESG-WARN][2] +1 other test dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-twl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/bat-twl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_133701v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-9:          [PASS][3] -> [FAIL][4] ([i915#10378])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][5] +19 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1:
    - bat-mtlp-8:         [PASS][6] -> [DMESG-WARN][7] ([i915#9157]) +1 other test dmesg-warn
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-mtlp-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/bat-mtlp-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-dg2-8:          [DMESG-WARN][8] ([i915#10014]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-8/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/bat-dg2-8/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gt_timelines:
    - bat-arls-2:         [INCOMPLETE][10] -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-arls-2/igt@i915_selftest@live@gt_timelines.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/bat-arls-2/igt@i915_selftest@live@gt_timelines.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10014]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10014
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#9157]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9157


Build changes
-------------

  * Linux: CI_DRM_14785 -> Patchwork_133701v3

  CI-20190529: 20190529
  CI_DRM_14785: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7863: fa1dc232d5d840532521df8a6fcf1fe82c514304 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133701v3: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/index.html

--===============3668500862869731253==
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
<tr><td><b>Series:</b></td><td>drm/i915: Plane register cleanups (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133701/">https://patchwork.freedesktop.org/series/133701/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14785 -&gt; Patchwork_133701v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (1): bat-arls-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_133701v3:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1:<ul>
<li>{bat-twl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-twl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/bat-twl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133701v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-mtlp-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/bat-mtlp-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9157">i915#9157</a>) +1 other test dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-8/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10014">i915#10014</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/bat-dg2-8/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-arls-2/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/bat-arls-2/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14785 -&gt; Patchwork_133701v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14785: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7863: fa1dc232d5d840532521df8a6fcf1fe82c514304 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133701v3: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3668500862869731253==--
