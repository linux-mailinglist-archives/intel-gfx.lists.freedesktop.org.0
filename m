Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC56C847720
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 19:11:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1059410EFEB;
	Fri,  2 Feb 2024 18:11:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9ED310EE7C;
 Fri,  2 Feb 2024 18:11:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1322171635698274790=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_XE_HDCP_Enablement?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 Feb 2024 18:11:04 -0000
Message-ID: <170689746489.953329.10405029070024134650@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240202083737.1088306-1-suraj.kandpal@intel.com>
In-Reply-To: <20240202083737.1088306-1-suraj.kandpal@intel.com>
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

--===============1322171635698274790==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: XE HDCP Enablement
URL   : https://patchwork.freedesktop.org/series/129456/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14212 -> Patchwork_129456v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129456v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129456v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/index.html

Participating hosts (38 -> 35)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (4): bat-mtlp-8 bat-arls-2 fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129456v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-dpms@d-edp1:
    - bat-adlp-6:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_129456v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/bat-jsl-1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][5] ([fdo#109271]) +15 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - bat-adln-1:         [DMESG-FAIL][6] ([i915#10010]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/bat-adln-1/igt@i915_selftest@live@gt_pm.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/bat-adln-1/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-kbl-7567u:       [DMESG-WARN][8] ([i915#180] / [i915#8585]) -> [DMESG-WARN][9] ([i915#180] / [i915#1982] / [i915#8585])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/fi-kbl-7567u/igt@i915_module_load@reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/fi-kbl-7567u/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10010]: https://gitlab.freedesktop.org/drm/intel/issues/10010
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585


Build changes
-------------

  * Linux: CI_DRM_14212 -> Patchwork_129456v1

  CI-20190529: 20190529
  CI_DRM_14212: 1dd92467500a5ead3e44bbdfe15e064dd79b65ef @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7702: bf075a74ece1956fc0e554291591b9da3eab54cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129456v1: 1dd92467500a5ead3e44bbdfe15e064dd79b65ef @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2227076489a5 drm/xe/hdcp: Add intel_hdcp_gsc_message to Makefile
e2dc59dfb1d1 drm/xe/hdcp: Enable HDCP for XE
8b3a1e157076 drm/i915/hdcp: Move intel_hdcp_gsc_message def away from header file

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/index.html

--===============1322171635698274790==
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
<tr><td><b>Series:</b></td><td>XE HDCP Enablement</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129456/">https://patchwork.freedesktop.org/series/129456/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14212 -&gt; Patchwork_129456v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129456v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129456v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (4): bat-mtlp-8 bat-arls-2 fi-snb-2520m fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129456v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-dpms@d-edp1:<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129456v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@random-engines:<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/bat-adln-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10010">i915#10010</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/bat-adln-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/fi-kbl-7567u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129456v1/fi-kbl-7567u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14212 -&gt; Patchwork_129456v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14212: 1dd92467500a5ead3e44bbdfe15e064dd79b65ef @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7702: bf075a74ece1956fc0e554291591b9da3eab54cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129456v1: 1dd92467500a5ead3e44bbdfe15e064dd79b65ef @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2227076489a5 drm/xe/hdcp: Add intel_hdcp_gsc_message to Makefile<br />
e2dc59dfb1d1 drm/xe/hdcp: Enable HDCP for XE<br />
8b3a1e157076 drm/i915/hdcp: Move intel_hdcp_gsc_message def away from header file</p>

</body>
</html>

--===============1322171635698274790==--
