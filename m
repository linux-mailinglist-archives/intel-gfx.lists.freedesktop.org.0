Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6A0858887
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 23:32:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CF1110ECC2;
	Fri, 16 Feb 2024 22:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 092EF10E73E;
 Fri, 16 Feb 2024 22:32:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5889672838161884954=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Enable_Adaptive_Sync_SDP_Su?=
 =?utf-8?q?pport_for_DP_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Feb 2024 22:32:26 -0000
Message-ID: <170812274601.54066.9193694967022756316@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240216142024.1884258-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240216142024.1884258-1-mitulkumar.ajitkumar.golani@intel.com>
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

--===============5889672838161884954==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Adaptive Sync SDP Support for DP (rev8)
URL   : https://patchwork.freedesktop.org/series/126829/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14286 -> Patchwork_126829v8
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126829v8 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126829v8, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/index.html

Participating hosts (36 -> 35)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126829v8:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-adlp-9:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-adlp-9/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-adlp-9/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-dg2-11/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-dg2-11/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/fi-elk-e7500/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/fi-elk-e7500/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/fi-bsw-nick/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/fi-bsw-nick/igt@i915_module_load@load.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-adlp-6:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-adlp-6/igt@kms_hdmi_inject@inject-audio.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-adlp-6/igt@kms_hdmi_inject@inject-audio.html
    - bat-rplp-1:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-rplp-1/igt@kms_hdmi_inject@inject-audio.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-rplp-1/igt@kms_hdmi_inject@inject-audio.html
    - bat-adln-1:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-adln-1/igt@kms_hdmi_inject@inject-audio.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-adln-1/igt@kms_hdmi_inject@inject-audio.html
    - fi-ilk-650:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-arls-1}:       [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-arls-1/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-arls-1/igt@i915_module_load@load.html
    - {bat-dg2-13}:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-dg2-13/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-dg2-13/igt@i915_module_load@load.html
    - {bat-dg2-14}:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-dg2-14/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-dg2-14/igt@i915_module_load@load.html
    - {bat-arls-2}:       [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-arls-2/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-arls-2/igt@i915_module_load@load.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).



Build changes
-------------

  * Linux: CI_DRM_14286 -> Patchwork_126829v8

  CI-20190529: 20190529
  CI_DRM_14286: 41e3752f995d1c3a9b5b88b11450ff6b88f65973 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7716: 7716
  Patchwork_126829v8: 41e3752f995d1c3a9b5b88b11450ff6b88f65973 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

023db6735f0b drm/i915/display: Read/Write AS sdp only when sink/source has enabled
aaaf498430c6 drm/i915/display: Compute vrr_vsync params
ca63e93d91dc drm/i915/display: Compute and Enable AS SDP
e02ba5dddddb drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
a7828a2d05cd drm: Add Adaptive Sync SDP logging
4e5682bb30b2 drm/dp: Add an support to indicate if sink supports AS SDP

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/index.html

--===============5889672838161884954==
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
<tr><td><b>Series:</b></td><td>Enable Adaptive Sync SDP Support for DP (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126829/">https://patchwork.freedesktop.org/series/126829/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14286 -&gt; Patchwork_126829v8</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126829v8 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126829v8, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/index.html</p>
<h2>Participating hosts (36 -&gt; 35)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126829v8:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-adlp-9/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-dg2-11/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/fi-elk-e7500/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/fi-bsw-nick/igt@i915_module_load@load.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-adlp-6/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-adlp-6/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-rplp-1/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-rplp-1/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a></li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-adln-1/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-adln-1/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-arls-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-arls-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-dg2-13/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-dg2-14/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-arls-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v8/bat-arls-2/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14286 -&gt; Patchwork_126829v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14286: 41e3752f995d1c3a9b5b88b11450ff6b88f65973 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7716: 7716<br />
  Patchwork_126829v8: 41e3752f995d1c3a9b5b88b11450ff6b88f65973 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>023db6735f0b drm/i915/display: Read/Write AS sdp only when sink/source has enabled<br />
aaaf498430c6 drm/i915/display: Compute vrr_vsync params<br />
ca63e93d91dc drm/i915/display: Compute and Enable AS SDP<br />
e02ba5dddddb drm/i915/dp: Add Read/Write support for Adaptive Sync SDP<br />
a7828a2d05cd drm: Add Adaptive Sync SDP logging<br />
4e5682bb30b2 drm/dp: Add an support to indicate if sink supports AS SDP</p>

</body>
</html>

--===============5889672838161884954==--
