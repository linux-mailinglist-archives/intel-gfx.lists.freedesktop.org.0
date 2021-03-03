Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4A132BA32
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 20:27:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5DC8899FF;
	Wed,  3 Mar 2021 19:27:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A9BD2899DC;
 Wed,  3 Mar 2021 19:27:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1396A47E2;
 Wed,  3 Mar 2021 19:27:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Wed, 03 Mar 2021 19:27:23 -0000
Message-ID: <161479964363.23598.10049801207839534172@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210303164201.31301-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210303164201.31301-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/display=3A_Move_dc3co=5Fex?=
 =?utf-8?q?itline_variable_to_struct_intel=5Fpsr?=
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
Content-Type: multipart/mixed; boundary="===============1628881059=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1628881059==
Content-Type: multipart/alternative;
 boundary="===============1190482063531074007=="

--===============1190482063531074007==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915/display: Move dc3co_exitline variable to struct intel_psr
URL   : https://patchwork.freedesktop.org/series/87596/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9824 -> Patchwork_19751
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19751 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19751, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19751:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_wait@busy@all:
    - fi-bsw-nick:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-bsw-nick/igt@gem_wait@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-bsw-nick/igt@gem_wait@busy@all.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-rkl-11500t}:    [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_19751 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][5] ([fdo#109271]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_linear_blits@basic:
    - fi-kbl-8809g:       [PASS][6] -> [TIMEOUT][7] ([i915#2502])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-8809g/igt@gem_linear_blits@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-kbl-8809g/igt@gem_linear_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-kbl-8809g:       [PASS][8] -> [TIMEOUT][9] ([i915#3145])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [TIMEOUT][10] ([i915#3145]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][12] ([i915#2782]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][14] ([i915#1372]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9824 -> Patchwork_19751

  CI-20190529: 20190529
  CI_DRM_9824: 6b21aa2a30637b56282297d09a9fbfd1954cc7b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6020: 8382d9e87bba39ecc6fa879b2491e28c7fb2e3c7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19751: 81b7380be9637dce2e4685b4cfcfe465c692b9db @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

81b7380be963 drm/i915/display: Introduce new intel_psr_pause/resume function
027c24831154 drm/i915/display: Remove a redundant function argument from intel_psr_enable_source()
64a484d3e434 drm/i915/display: Move dc3co_exitline variable to struct intel_psr

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/index.html

--===============1190482063531074007==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/display: Move dc3co_exitline variable to struct intel_psr</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87596/">https://patchwork.freedesktop.org/series/87596/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9824 -&gt; Patchwork_19751</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19751 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19751, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19751:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_wait@busy@all:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-bsw-nick/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-bsw-nick/igt@gem_wait@busy@all.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19751 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-8809g/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-kbl-8809g/igt@gem_linear_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19751/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9824 -&gt; Patchwork_19751</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9824: 6b21aa2a30637b56282297d09a9fbfd1954cc7b0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6020: 8382d9e87bba39ecc6fa879b2491e28c7fb2e3c7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19751: 81b7380be9637dce2e4685b4cfcfe465c692b9db @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>81b7380be963 drm/i915/display: Introduce new intel_psr_pause/resume function<br />
027c24831154 drm/i915/display: Remove a redundant function argument from intel_psr_enable_source()<br />
64a484d3e434 drm/i915/display: Move dc3co_exitline variable to struct intel_psr</p>

</body>
</html>

--===============1190482063531074007==--

--===============1628881059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1628881059==--
