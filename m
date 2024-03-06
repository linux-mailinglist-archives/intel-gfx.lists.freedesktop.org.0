Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F540872E07
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 05:30:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF53112E9F;
	Wed,  6 Mar 2024 04:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9EA7112E9F;
 Wed,  6 Mar 2024 04:30:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7374624600017058772=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Disable_automatic_load_CCS_?=
 =?utf-8?q?load_balancing_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Mar 2024 04:30:37 -0000
Message-ID: <170969943795.524258.4840840394394370982@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240306012247.246003-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240306012247.246003-1-andi.shyti@linux.intel.com>
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

--===============7374624600017058772==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Disable automatic load CCS load balancing (rev5)
URL   : https://patchwork.freedesktop.org/series/129951/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14395 -> Patchwork_129951v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129951v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129951v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/index.html

Participating hosts (41 -> 36)
------------------------------

  Missing    (5): bat-dg1-7 bat-arls-2 fi-snb-2520m fi-glk-j4005 bat-mtlp-8 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129951v5:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - bat-atsm-1:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
    - bat-dg2-9:          [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-dg2-9/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-dg2-9/igt@i915_selftest@live@hangcheck.html
    - bat-dg2-8:          [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-dg2-8/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-dg2-8/igt@i915_selftest@live@hangcheck.html
    - bat-dg2-14:         [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-dg2-14/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-dg2-14/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_129951v5 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-cfl-8109u:       [PASS][9] -> [FAIL][10] ([i915#8293])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/fi-cfl-8109u/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@client:
    - bat-dg2-11:         [PASS][11] -> [ABORT][12] ([i915#10366])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-dg2-11/igt@i915_selftest@live@client.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-dg2-11/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [PASS][13] -> [DMESG-FAIL][14] ([i915#10112])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/fi-skl-guc/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@guc_hang:
    - bat-arls-3:         [DMESG-FAIL][15] ([i915#10262]) -> [PASS][16] +12 other tests pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-arls-3/igt@i915_selftest@live@guc_hang.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-arls-3/igt@i915_selftest@live@guc_hang.html

  * igt@i915_selftest@live@hangcheck:
    - {bat-rpls-3}:       [DMESG-WARN][17] ([i915#5591]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10112]: https://gitlab.freedesktop.org/drm/intel/issues/10112
  [i915#10262]: https://gitlab.freedesktop.org/drm/intel/issues/10262
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10373]: https://gitlab.freedesktop.org/drm/intel/issues/10373
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14395 -> Patchwork_129951v5

  CI-20190529: 20190529
  CI_DRM_14395: dd08fd912fdc1b72984a39852fdbee49b97b8ce4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7746: 7746
  Patchwork_129951v5: dd08fd912fdc1b72984a39852fdbee49b97b8ce4 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3c93de5b3a9f drm/i915/gt: Enable only one CCS for compute workload
799b867a12ff drm/i915/gt: Refactor uabi engine class/instance list creation
f9818d3502ea drm/i915/gt: Disable HW load balancing for CCS

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/index.html

--===============7374624600017058772==
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
<tr><td><b>Series:</b></td><td>Disable automatic load CCS load balancing (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129951/">https://patchwork.freedesktop.org/series/129951/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14395 -&gt; Patchwork_129951v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129951v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129951v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/index.html</p>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Missing    (5): bat-dg1-7 bat-arls-2 fi-snb-2520m fi-glk-j4005 bat-mtlp-8 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129951v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-dg2-14/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-dg2-14/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129951v5 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-dg2-11/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-dg2-11/igt@i915_selftest@live@client.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10112">i915#10112</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-arls-3/igt@i915_selftest@live@guc_hang.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10262">i915#10262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-arls-3/igt@i915_selftest@live@guc_hang.html">PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v5/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14395 -&gt; Patchwork_129951v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14395: dd08fd912fdc1b72984a39852fdbee49b97b8ce4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7746: 7746<br />
  Patchwork_129951v5: dd08fd912fdc1b72984a39852fdbee49b97b8ce4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3c93de5b3a9f drm/i915/gt: Enable only one CCS for compute workload<br />
799b867a12ff drm/i915/gt: Refactor uabi engine class/instance list creation<br />
f9818d3502ea drm/i915/gt: Disable HW load balancing for CCS</p>

</body>
</html>

--===============7374624600017058772==--
