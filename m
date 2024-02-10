Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBE4850670
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Feb 2024 22:16:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6C6710E2CB;
	Sat, 10 Feb 2024 21:16:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10FBE10E2CB;
 Sat, 10 Feb 2024 21:16:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2313450556904763580=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/dp=3A_add_an_API_to_ind?=
 =?utf-8?q?icate_if_sink_supports_VSC_SDP?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abhinav Kumar" <quic_abhinavk@quicinc.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 10 Feb 2024 21:16:28 -0000
Message-ID: <170759978807.1129907.12998278542923357869@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240210202704.977303-1-quic_abhinavk@quicinc.com>
In-Reply-To: <20240210202704.977303-1-quic_abhinavk@quicinc.com>
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

--===============2313450556904763580==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp: add an API to indicate if sink supports VSC SDP
URL   : https://patchwork.freedesktop.org/series/129748/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14248 -> Patchwork_129748v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/index.html

Participating hosts (36 -> 34)
------------------------------

  Additional (1): fi-apl-guc 
  Missing    (3): bat-mtlp-8 bat-atsm-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129748v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {bat-arls-2}:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/bat-arls-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_129748v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-apl-guc:         NOTRUN -> [SKIP][3] ([fdo#109271]) +13 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-busy@ccs0:
    - {bat-arls-1}:       [DMESG-WARN][4] ([i915#10194]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html

  * igt@i915_selftest@live@gt_pm:
    - bat-adln-1:         [DMESG-FAIL][6] ([i915#10010]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-adln-1/igt@i915_selftest@live@gt_pm.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/bat-adln-1/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10010]: https://gitlab.freedesktop.org/drm/intel/issues/10010
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10197]: https://gitlab.freedesktop.org/drm/intel/issues/10197
  [i915#10206]: https://gitlab.freedesktop.org/drm/intel/issues/10206
  [i915#10211]: https://gitlab.freedesktop.org/drm/intel/issues/10211
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613


Build changes
-------------

  * Linux: CI_DRM_14248 -> Patchwork_129748v1

  CI-20190529: 20190529
  CI_DRM_14248: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7708: c2ecf4ba307d3342682745de6f608d307a06782c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129748v1: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

edaf0bb3ca49 drm/dp: add an API to indicate if sink supports VSC SDP

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/index.html

--===============2313450556904763580==
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
<tr><td><b>Series:</b></td><td>drm/dp: add an API to indicate if sink supports VSC SDP</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129748/">https://patchwork.freedesktop.org/series/129748/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14248 -&gt; Patchwork_129748v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/index.html</p>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Additional (1): fi-apl-guc <br />
  Missing    (3): bat-mtlp-8 bat-atsm-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129748v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@runner@aborted:<ul>
<li>{bat-arls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/bat-arls-2/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129748v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@ccs0:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-adln-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10010">i915#10010</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129748v1/bat-adln-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14248 -&gt; Patchwork_129748v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14248: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7708: c2ecf4ba307d3342682745de6f608d307a06782c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129748v1: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>edaf0bb3ca49 drm/dp: add an API to indicate if sink supports VSC SDP</p>

</body>
</html>

--===============2313450556904763580==--
