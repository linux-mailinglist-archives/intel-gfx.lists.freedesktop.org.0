Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFCA3ED262
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 12:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C240889DD2;
	Mon, 16 Aug 2021 10:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 13E3C89DD2;
 Mon, 16 Aug 2021 10:51:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4000A00FD;
 Mon, 16 Aug 2021 10:51:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0292711543659434851=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nathan Chancellor" <nathan@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Aug 2021 10:51:09 -0000
Message-ID: <162911106970.26194.3293787254488363961@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210813171158.2665823-1-nathan@kernel.org>
In-Reply-To: <20210813171158.2665823-1-nathan@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftest=3A_Fix_use_of_err_in_igt=5Freset=5F=7Bfail=2C_no?=
 =?utf-8?b?cH1fZW5naW5lKCk=?=
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

--===============0292711543659434851==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftest: Fix use of err in igt_reset_{fail, nop}_engine()
URL   : https://patchwork.freedesktop.org/series/93713/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10487 -> Patchwork_20830
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20830/index.html

Known issues
------------

  Here are the changes found in Patchwork_20830 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20830/fi-kbl-soraka/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@gem_exec_parallel@engines@userptr:
    - fi-pnv-d510:        [PASS][2] -> [INCOMPLETE][3] ([i915#299])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20830/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][4] -> [SKIP][5] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20830/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][6] ([i915#2403] / [i915#2505] / [i915#2722])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20830/fi-pnv-d510/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10487 -> Patchwork_20830

  CI-20190529: 20190529
  CI_DRM_10487: 51573da73ed1828367d6ea150155b85e347ab747 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6176: 3d8642170f2947b6aaad211e9e2e474fadedf6f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20830: 6021b4120d933a9ff840fd058403b5531e3e5778 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6021b4120d93 drm/i915/selftest: Fix use of err in igt_reset_{fail, nop}_engine()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20830/index.html

--===============0292711543659434851==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftest: Fix use of err in igt_reset_{fail, nop}_engine()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93713/">https://patchwork.freedesktop.org/series/93713/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20830/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20830/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10487 -&gt; Patchwork_20830</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20830/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20830 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20830/fi-kbl-soraka/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20830/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20830/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20830/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10487 -&gt; Patchwork_20830</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10487: 51573da73ed1828367d6ea150155b85e347ab747 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6176: 3d8642170f2947b6aaad211e9e2e474fadedf6f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20830: 6021b4120d933a9ff840fd058403b5531e3e5778 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6021b4120d93 drm/i915/selftest: Fix use of err in igt_reset_{fail, nop}_engine()</p>

</body>
</html>

--===============0292711543659434851==--
