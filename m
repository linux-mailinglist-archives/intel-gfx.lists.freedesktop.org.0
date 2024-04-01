Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8052B8938BF
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 09:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B6C010EEC1;
	Mon,  1 Apr 2024 07:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C070E10EEC1;
 Mon,  1 Apr 2024 07:55:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2860283905373410113=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Fix_UBSAN_warning_in_hdcp?=
 =?utf-8?q?=5Finfo_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 01 Apr 2024 07:55:29 -0000
Message-ID: <171195812978.1118006.7077041980517195873@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240401030106.274787-1-suraj.kandpal@intel.com>
In-Reply-To: <20240401030106.274787-1-suraj.kandpal@intel.com>
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

--===============2860283905373410113==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix UBSAN warning in hdcp_info (rev3)
URL   : https://patchwork.freedesktop.org/series/131673/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14511 -> Patchwork_131673v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131673v3/index.html

Participating hosts (33 -> 31)
------------------------------

  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131673v3:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@engines@fds:
    - {bat-mtlp-9}:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-mtlp-9/igt@gem_exec_parallel@engines@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131673v3/bat-mtlp-9/igt@gem_exec_parallel@engines@fds.html

  
Known issues
------------

  Here are the changes found in Patchwork_131673v3 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/fi-cfl-8109u/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131673v3/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-dg2-9:          [DMESG-WARN][5] ([i915#10014]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-dg2-9/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131673v3/bat-dg2-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live@vma:
    - bat-dg2-9:          [ABORT][7] ([i915#10366]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-dg2-9/igt@i915_selftest@live@vma.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131673v3/bat-dg2-9/igt@i915_selftest@live@vma.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10014]: https://gitlab.freedesktop.org/drm/intel/issues/10014
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14511 -> Patchwork_131673v3

  CI-20190529: 20190529
  CI_DRM_14511: a585b19932157f2c96293bf00288968ada86d435 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7792: 80ee6c6247595a92389a56d26d4905ee74e33c7c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131673v3: a585b19932157f2c96293bf00288968ada86d435 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f8ea0263d6b4 drm/i915/hdcp: Fix get remote hdcp capability function
66e336b42db3 drm/i915/display: Initialize capability variables

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131673v3/index.html

--===============2860283905373410113==
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
<tr><td><b>Series:</b></td><td>Fix UBSAN warning in hdcp_info (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131673/">https://patchwork.freedesktop.org/series/131673/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131673v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131673v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14511 -&gt; Patchwork_131673v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131673v3/index.html</p>
<h2>Participating hosts (33 -&gt; 31)</h2>
<p>Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131673v3:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_exec_parallel@engines@fds:<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-mtlp-9/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131673v3/bat-mtlp-9/igt@gem_exec_parallel@engines@fds.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131673v3 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131673v3/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-dg2-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10014">i915#10014</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131673v3/bat-dg2-9/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-dg2-9/igt@i915_selftest@live@vma.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131673v3/bat-dg2-9/igt@i915_selftest@live@vma.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14511 -&gt; Patchwork_131673v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14511: a585b19932157f2c96293bf00288968ada86d435 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7792: 80ee6c6247595a92389a56d26d4905ee74e33c7c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131673v3: a585b19932157f2c96293bf00288968ada86d435 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f8ea0263d6b4 drm/i915/hdcp: Fix get remote hdcp capability function<br />
66e336b42db3 drm/i915/display: Initialize capability variables</p>

</body>
</html>

--===============2860283905373410113==--
