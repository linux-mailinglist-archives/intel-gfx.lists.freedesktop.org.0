Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B3C87C2E5
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 19:40:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C66A110FCD5;
	Thu, 14 Mar 2024 18:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80DFB10FCD5;
 Thu, 14 Mar 2024 18:40:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4445315864272341926=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Disable_automatic_load_CCS_?=
 =?utf-8?q?load_balancing_=28rev10=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Mar 2024 18:40:33 -0000
Message-ID: <171044163352.756190.10212793379992163895@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240313201955.95716-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240313201955.95716-1-andi.shyti@linux.intel.com>
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

--===============4445315864272341926==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Disable automatic load CCS load balancing (rev10)
URL   : https://patchwork.freedesktop.org/series/129951/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14433 -> Patchwork_129951v10
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/index.html

Participating hosts (37 -> 35)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (3): bat-mtlp-8 fi-glk-j4005 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_129951v10 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-8:          [PASS][2] -> [FAIL][3] ([i915#10378])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][4] +39 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live@evict:
    - bat-atsm-1:         [PASS][5] -> [ABORT][6] ([i915#10366])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-atsm-1/igt@i915_selftest@live@evict.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/bat-atsm-1/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gt_engines:
    - bat-adls-6:         [PASS][7] -> [TIMEOUT][8] ([i915#10026])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adls-6/igt@i915_selftest@live@gt_engines.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/bat-adls-6/igt@i915_selftest@live@gt_engines.html

  
  [i915#10026]: https://gitlab.freedesktop.org/drm/intel/issues/10026
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849


Build changes
-------------

  * Linux: CI_DRM_14433 -> Patchwork_129951v10

  CI-20190529: 20190529
  CI_DRM_14433: f5246a1cf97dd1b9bf955148b0ca2cbf0b18d31e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7765: 67615901aedcc79d8d1523c6484c67c11ba0e316 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129951v10: f5246a1cf97dd1b9bf955148b0ca2cbf0b18d31e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ce6fd5803ee0 drm/i915/gt: Enable only one CCS for compute workload
55dcb4a1cfb0 drm/i915/gt: Do not generate the command streamer for all the CCS
03bd96097699 drm/i915/gt: Disable HW load balancing for CCS

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/index.html

--===============4445315864272341926==
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
<tr><td><b>Series:</b></td><td>Disable automatic load CCS load balancing (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129951/">https://patchwork.freedesktop.org/series/129951/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14433 -&gt; Patchwork_129951v10</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (3): bat-mtlp-8 fi-glk-j4005 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129951v10 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-atsm-1/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/bat-atsm-1/igt@i915_selftest@live@evict.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adls-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v10/bat-adls-6/igt@i915_selftest@live@gt_engines.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10026">i915#10026</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14433 -&gt; Patchwork_129951v10</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14433: f5246a1cf97dd1b9bf955148b0ca2cbf0b18d31e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7765: 67615901aedcc79d8d1523c6484c67c11ba0e316 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129951v10: f5246a1cf97dd1b9bf955148b0ca2cbf0b18d31e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ce6fd5803ee0 drm/i915/gt: Enable only one CCS for compute workload<br />
55dcb4a1cfb0 drm/i915/gt: Do not generate the command streamer for all the CCS<br />
03bd96097699 drm/i915/gt: Disable HW load balancing for CCS</p>

</body>
</html>

--===============4445315864272341926==--
