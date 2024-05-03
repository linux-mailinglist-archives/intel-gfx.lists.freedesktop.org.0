Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E38DA8BAE80
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 16:09:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5925010FD6C;
	Fri,  3 May 2024 14:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3539510EF9A;
 Fri,  3 May 2024 14:09:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6494965335923000456=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/guc=3A_Fix_UB_due_?=
 =?utf-8?q?to_signed_int_overflow_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitrii Bundin" <dmitrii.bundin.a@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 03 May 2024 14:09:06 -0000
Message-ID: <171474534621.1887365.4477044193663780972@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240413031747.2416581-1-dmitrii.bundin.a@gmail.com>
In-Reply-To: <20240413031747.2416581-1-dmitrii.bundin.a@gmail.com>
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

--===============6494965335923000456==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Fix UB due to signed int overflow (rev2)
URL   : https://patchwork.freedesktop.org/series/132446/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14707 -> Patchwork_132446v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132446v2/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_132446v2 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-9:          [FAIL][1] ([i915#10378]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14707/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132446v2/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
    - bat-dg2-8:          [FAIL][3] ([i915#10378]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14707/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132446v2/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - {bat-mtlp-9}:       [DMESG-WARN][5] ([i915#10435]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14707/bat-mtlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132446v2/bat-mtlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#10435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10435


Build changes
-------------

  * Linux: CI_DRM_14707 -> Patchwork_132446v2

  CI-20190529: 20190529
  CI_DRM_14707: 3bc655eb4a31c9a89cccac484e09112f73414b29 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7831: e1d202abb373e78b80e92814924316ee6b52b569 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132446v2: 3bc655eb4a31c9a89cccac484e09112f73414b29 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132446v2/index.html

--===============6494965335923000456==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Fix UB due to signed int overflow (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132446/">https://patchwork.freedesktop.org/series/132446/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132446v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132446v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14707 -&gt; Patchwork_132446v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132446v2/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132446v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14707/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132446v2/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14707/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132446v2/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14707/bat-mtlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10435">i915#10435</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132446v2/bat-mtlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14707 -&gt; Patchwork_132446v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14707: 3bc655eb4a31c9a89cccac484e09112f73414b29 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7831: e1d202abb373e78b80e92814924316ee6b52b569 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132446v2: 3bc655eb4a31c9a89cccac484e09112f73414b29 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6494965335923000456==--
