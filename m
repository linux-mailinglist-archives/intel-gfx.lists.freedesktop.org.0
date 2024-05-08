Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 479F48BF984
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 11:26:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EC8610F2E7;
	Wed,  8 May 2024 09:26:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E179610EF4F;
 Wed,  8 May 2024 09:26:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0505674515462866190=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Cursor_Fault_Fix?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 08 May 2024 09:26:14 -0000
Message-ID: <171516037491.2017562.6230126973726902389@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240508073904.1661848-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240508073904.1661848-1-chaitanya.kumar.borah@intel.com>
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

--===============0505674515462866190==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Cursor Fault Fix
URL   : https://patchwork.freedesktop.org/series/133311/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14726 -> Patchwork_133311v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_133311v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_133311v1, please notify your bug team (&#x27;I915-ci-infra@lists.freedesktop.org&#x27;) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): bat-dg2-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_133311v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-arls-3:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-arls-3/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-arls-3/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - {bat-mtlp-9}:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-mtlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-mtlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_133311v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][5] -> [ABORT][6] ([i915#10594])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-adlp-11:        [ABORT][7] ([i915#10021]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-adlp-11/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-adlp-11/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-adlp-9:         [INCOMPLETE][9] ([i915#10949]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-adlp-9/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-adlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp7:
    - {bat-mtlp-9}:       [FAIL][11] ([i915#6121]) -> [PASS][12] +4 other tests pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html

  * igt@kms_flip@basic-flip-vs-dpms@c-dp6:
    - {bat-mtlp-9}:       [DMESG-FAIL][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp6.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp6.html

  * igt@kms_hdmi_inject@inject-audio:
    - {bat-mtlp-9}:       [DMESG-WARN][15] ([i915#10435]) -> [PASS][16] +2 other tests pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-mtlp-9/igt@kms_hdmi_inject@inject-audio.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-mtlp-9/igt@kms_hdmi_inject@inject-audio.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10021]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10021
  [i915#10435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10435
  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#10594]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10949]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10949
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121
  [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732


Build changes
-------------

  * Linux: CI_DRM_14726 -> Patchwork_133311v1

  CI-20190529: 20190529
  CI_DRM_14726: a86eda4223247cae54c66577e8f0a6816e02e803 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7838: 155628bc9d0ee70c67c3612462a62f095609f152 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133311v1: a86eda4223247cae54c66577e8f0a6816e02e803 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/index.html

--===============0505674515462866190==
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
<tr><td><b>Series:</b></td><td>Cursor Fault Fix</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133311/">https://patchwork.freedesktop.org/series/133311/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14726 -&gt; Patchwork_133311v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_133311v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_133311v1, please notify your bug team (&#x27;I915-ci-infra@lists.freedesktop.org&#x27;) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): bat-dg2-11 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_133311v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-arls-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-arls-3/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pm_rpm@basic-pci-d3-state:<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-mtlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-mtlp-9/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133311v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594">i915#10594</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-adlp-11/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10021">i915#10021</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-adlp-11/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-adlp-9/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10949">i915#10949</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-adlp-9/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp6.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp6.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14726/bat-mtlp-9/igt@kms_hdmi_inject@inject-audio.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10435">i915#10435</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133311v1/bat-mtlp-9/igt@kms_hdmi_inject@inject-audio.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14726 -&gt; Patchwork_133311v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14726: a86eda4223247cae54c66577e8f0a6816e02e803 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7838: 155628bc9d0ee70c67c3612462a62f095609f152 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133311v1: a86eda4223247cae54c66577e8f0a6816e02e803 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0505674515462866190==--
