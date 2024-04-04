Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A21F9898CE8
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 19:04:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF45A11334D;
	Thu,  4 Apr 2024 17:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A364C11334B;
 Thu,  4 Apr 2024 17:04:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2896758816489356808=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_limit_eDP_MSO_p?=
 =?utf-8?q?ipe_only_for_display_version_20_and_below_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 04 Apr 2024 17:04:46 -0000
Message-ID: <171225028666.1209302.13238512227996414783@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240404091646.165309-1-luciano.coelho@intel.com>
In-Reply-To: <20240404091646.165309-1-luciano.coelho@intel.com>
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

--===============2896758816489356808==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: limit eDP MSO pipe only for display version 20 and below (rev3)
URL   : https://patchwork.freedesktop.org/series/129123/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14527 -> Patchwork_129123v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129123v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129123v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129123v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@dmabuf:
    - bat-mtlp-6:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/bat-mtlp-6/igt@i915_selftest@live@dmabuf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/bat-mtlp-6/igt@i915_selftest@live@dmabuf.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-kbl-7567u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_129123v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-rpls-3:         [PASS][5] -> [DMESG-WARN][6] ([i915#5591])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - bat-dg2-8:          [PASS][7] -> [ABORT][8] ([i915#10366])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/bat-dg2-8/igt@i915_selftest@live@hugepages.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/bat-dg2-8/igt@i915_selftest@live@hugepages.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-arls-2:         [ABORT][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/bat-arls-2/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/bat-arls-2/igt@i915_pm_rpm@module-reload.html
    - {bat-mtlp-9}:       [WARN][11] ([i915#10436]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_contexts:
    - bat-dg2-11:         [ABORT][13] ([i915#10366]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/bat-dg2-11/igt@i915_selftest@live@gt_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/bat-dg2-11/igt@i915_selftest@live@gt_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10436]: https://gitlab.freedesktop.org/drm/intel/issues/10436
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591


Build changes
-------------

  * Linux: CI_DRM_14527 -> Patchwork_129123v3

  CI-20190529: 20190529
  CI_DRM_14527: f1408ebd4c6b508ff23139fcbc7275fa227b197b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7798: 5e3263748a636ebc91ecfafbd339870c77e3eed6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129123v3: f1408ebd4c6b508ff23139fcbc7275fa227b197b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0ca27ba735df drm/i915: limit eDP MSO pipe only for display version 20 and below

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/index.html

--===============2896758816489356808==
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
<tr><td><b>Series:</b></td><td>drm/i915: limit eDP MSO pipe only for display version 20 and below (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129123/">https://patchwork.freedesktop.org/series/129123/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14527 -&gt; Patchwork_129123v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129123v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129123v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129123v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/bat-mtlp-6/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/bat-mtlp-6/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dp1:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129123v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/bat-dg2-8/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/bat-dg2-8/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/bat-arls-2/igt@i915_pm_rpm@module-reload.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/bat-arls-2/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10436">i915#10436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14527/bat-dg2-11/igt@i915_selftest@live@gt_contexts.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v3/bat-dg2-11/igt@i915_selftest@live@gt_contexts.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14527 -&gt; Patchwork_129123v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14527: f1408ebd4c6b508ff23139fcbc7275fa227b197b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7798: 5e3263748a636ebc91ecfafbd339870c77e3eed6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129123v3: f1408ebd4c6b508ff23139fcbc7275fa227b197b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0ca27ba735df drm/i915: limit eDP MSO pipe only for display version 20 and below</p>

</body>
</html>

--===============2896758816489356808==--
