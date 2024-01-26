Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C91283D66D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jan 2024 10:34:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC16010F56A;
	Fri, 26 Jan 2024 09:34:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 870A010E1CB;
 Fri, 26 Jan 2024 09:34:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5650426658598990390=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/gvt=3A_Fix_uniniti?=
 =?utf-8?q?alized_variable_in_handle=5Fmmio=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dan Carpenter" <dan.carpenter@linaro.org>
Date: Fri, 26 Jan 2024 09:34:08 -0000
Message-ID: <170626164855.745586.13922863468648165841@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <11957c20-b178-4027-9b0a-e32e9591dd7c@moroto.mountain>
In-Reply-To: <11957c20-b178-4027-9b0a-e32e9591dd7c@moroto.mountain>
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

--===============5650426658598990390==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: Fix uninitialized variable in handle_mmio()
URL   : https://patchwork.freedesktop.org/series/129190/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14180 -> Patchwork_129190v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129190v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129190v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129190v1/index.html

Participating hosts (36 -> 33)
------------------------------

  Missing    (3): fi-skl-guc fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129190v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-dpms@d-edp1:
    - bat-adlp-6:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14180/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129190v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_129190v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [PASS][3] -> [DMESG-FAIL][4] ([i915#10010])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14180/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129190v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][5] ([i915#9197]) +1 other test skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129190v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
  [i915#10010]: https://gitlab.freedesktop.org/drm/intel/issues/10010
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197


Build changes
-------------

  * Linux: CI_DRM_14180 -> Patchwork_129190v1

  CI-20190529: 20190529
  CI_DRM_14180: 246d92693aa04ab89430fc3b028ed9b0b7e8a0c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7692: 5d9c29c620701497323bf3721146da57efa50952 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129190v1: 246d92693aa04ab89430fc3b028ed9b0b7e8a0c8 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c0fb87b248d9 drm/i915/gvt: Fix uninitialized variable in handle_mmio()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129190v1/index.html

--===============5650426658598990390==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: Fix uninitialized variable in handle_mmio()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129190/">https://patchwork.freedesktop.org/series/129190/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129190v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129190v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14180 -&gt; Patchwork_129190v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129190v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129190v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129190v1/index.html</p>
<h2>Participating hosts (36 -&gt; 33)</h2>
<p>Missing    (3): fi-skl-guc fi-snb-2520m fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129190v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-dpms@d-edp1:<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14180/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129190v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129190v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14180/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129190v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10010">i915#10010</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129190v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14180 -&gt; Patchwork_129190v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14180: 246d92693aa04ab89430fc3b028ed9b0b7e8a0c8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7692: 5d9c29c620701497323bf3721146da57efa50952 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129190v1: 246d92693aa04ab89430fc3b028ed9b0b7e8a0c8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c0fb87b248d9 drm/i915/gvt: Fix uninitialized variable in handle_mmio()</p>

</body>
</html>

--===============5650426658598990390==--
