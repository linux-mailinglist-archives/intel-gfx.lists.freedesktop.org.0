Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D33C24C34ED
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 19:44:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3185F10EBD4;
	Thu, 24 Feb 2022 18:44:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FE4B10EBD4;
 Thu, 24 Feb 2022 18:44:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C514A9932;
 Thu, 24 Feb 2022 18:44:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1821999534760767020=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 24 Feb 2022 18:44:46 -0000
Message-ID: <164572828646.32675.16216405999006999887@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220223221453.26274-1-manasi.d.navare@intel.com>
In-Reply-To: <20220223221453.26274-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/vrr=3A_Reset_VRR_capable_property_on_a_long_hpd_?=
 =?utf-8?b?KHJldjQp?=
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

--===============1821999534760767020==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/vrr: Reset VRR capable property on a long hpd (rev4)
URL   : https://patchwork.freedesktop.org/series/98801/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11279 -> Patchwork_22394
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22394 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22394, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/index.html

Participating hosts (43 -> 32)
------------------------------

  Missing    (11): fi-kbl-soraka fi-cml-u2 fi-bsw-cyan fi-ilk-650 fi-apl-guc fi-kbl-7500u fi-kbl-x1275 fi-cfl-8109u fi-bsw-kefka fi-bdw-samus fi-skl-6600u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22394:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-skl-6700k2:      [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0@smem.html

  
Known issues
------------

  Here are the changes found in Patchwork_22394 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-multi-fence:
    - fi-blb-e6850:       NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/fi-blb-e6850/igt@amdgpu/amd_basic@cs-multi-fence.html

  * igt@runner@aborted:
    - fi-skl-6700k2:      NOTRUN -> [FAIL][4] ([i915#4312])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/fi-skl-6700k2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][5] ([i915#4494] / [i915#4957]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][7] ([i915#5026]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@workarounds:
    - {bat-adlp-6}:       [DMESG-WARN][9] ([i915#5068]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/bat-adlp-6/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/bat-adlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][11] ([i915#3576]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5026]: https://gitlab.freedesktop.org/drm/intel/issues/5026
  [i915#5068]: https://gitlab.freedesktop.org/drm/intel/issues/5068


Build changes
-------------

  * Linux: CI_DRM_11279 -> Patchwork_22394

  CI-20190529: 20190529
  CI_DRM_11279: 5301cc85b3cc0eaa37405a117c77a35db7f4a76d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6356: b403d8e73c6888561eaec97835688313b0763ce9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22394: 244f36e5190c176be3ec2fbc9fc18c63b8383621 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

244f36e5190c drm/i915/display/vrr: Reset VRR capable property on a long hpd

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/index.html

--===============1821999534760767020==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/vrr: Reset VRR capable property on a long hpd (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98801/">https://patchwork.freedesktop.org/series/98801/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11279 -&gt; Patchwork_22394</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22394 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22394, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/index.html</p>
<h2>Participating hosts (43 -&gt; 32)</h2>
<p>Missing    (11): fi-kbl-soraka fi-cml-u2 fi-bsw-cyan fi-ilk-650 fi-apl-guc fi-kbl-7500u fi-kbl-x1275 fi-cfl-8109u fi-bsw-kefka fi-bdw-samus fi-skl-6600u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22394:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0@smem:<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22394 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-multi-fence:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/fi-blb-e6850/igt@amdgpu/amd_basic@cs-multi-fence.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5026">i915#5026</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/bat-adlp-6/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5068">i915#5068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/bat-adlp-6/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22394/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11279 -&gt; Patchwork_22394</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11279: 5301cc85b3cc0eaa37405a117c77a35db7f4a76d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6356: b403d8e73c6888561eaec97835688313b0763ce9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22394: 244f36e5190c176be3ec2fbc9fc18c63b8383621 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>244f36e5190c drm/i915/display/vrr: Reset VRR capable property on a long hpd</p>

</body>
</html>

--===============1821999534760767020==--
