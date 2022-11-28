Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C3D63A25F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 08:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0F3C10E29F;
	Mon, 28 Nov 2022 07:57:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6635C10E29F;
 Mon, 28 Nov 2022 07:57:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61201AADE4;
 Mon, 28 Nov 2022 07:57:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7778405403907472299=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Mon, 28 Nov 2022 07:57:17 -0000
Message-ID: <166962223736.8065.8517143405607930587@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221128071544.4115881-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221128071544.4115881-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSGFu?=
 =?utf-8?q?dle_BPC_for_HDMI2=2E1_PCON_without_DSC1=2E2_sink_and_other_fixe?=
 =?utf-8?q?s_=28rev7=29?=
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

--===============7778405403907472299==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Handle BPC for HDMI2.1 PCON without DSC1.2 sink and other fixes (rev7)
URL   : https://patchwork.freedesktop.org/series/107550/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12436 -> Patchwork_107550v7
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v7/index.html

Participating hosts (31 -> 30)
------------------------------

  Missing    (1): bat-rpls-2 

Known issues
------------

  Here are the changes found in Patchwork_107550v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#4613]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v7/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-apl-guc:         NOTRUN -> [SKIP][2] ([fdo#109271] / [fdo#111827])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v7/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-apl-guc:         [INCOMPLETE][3] ([i915#7073]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12436/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v7/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#7073]: https://gitlab.freedesktop.org/drm/intel/issues/7073


Build changes
-------------

  * Linux: CI_DRM_12436 -> Patchwork_107550v7

  CI-20190529: 20190529
  CI_DRM_12436: a1b695b469432195cef49cd7b19e32e6bbacd609 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7072: 69ba7163475925cdc69aebbdfa0e87453ae165c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107550v7: a1b695b469432195cef49cd7b19e32e6bbacd609 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b1c5a71460b1 drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints
24381576dc96 drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP
b38b65984701 drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
551d8d4e7931 drm/i915/dp: Avoid DSC with output_format YCBC420
fd3b482f8904 drm/i915/display: Add helper function to check if sink_format is 420
295e1b9668d5 drm/i915/display: Use sink_format instead of ycbcr420_output flag
ed7076511e19 drm/i915/dp: Compute output format with/without DSC
f57e3d249960 drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state sink_format
eda0ef218006 drm/i915/dp: Add Scaler constraint for YCbCr420 output
3d89a4861eff drm/i915/display: Add new member in intel_dp to store ycbcr420 passthrough cap
a169d61a19b4 drm/i915/display: Add new member to configure PCON color conversion

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v7/index.html

--===============7778405403907472299==
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
<tr><td><b>Series:</b></td><td>Handle BPC for HDMI2.1 PCON without DSC1.2 sink and other fixes (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107550/">https://patchwork.freedesktop.org/series/107550/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12436 -&gt; Patchwork_107550v7</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v7/index.html</p>
<h2>Participating hosts (31 -&gt; 30)</h2>
<p>Missing    (1): bat-rpls-2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107550v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v7/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v7/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12436/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7073">i915#7073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v7/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12436 -&gt; Patchwork_107550v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12436: a1b695b469432195cef49cd7b19e32e6bbacd609 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7072: 69ba7163475925cdc69aebbdfa0e87453ae165c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107550v7: a1b695b469432195cef49cd7b19e32e6bbacd609 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b1c5a71460b1 drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints<br />
24381576dc96 drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP<br />
b38b65984701 drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC<br />
551d8d4e7931 drm/i915/dp: Avoid DSC with output_format YCBC420<br />
fd3b482f8904 drm/i915/display: Add helper function to check if sink_format is 420<br />
295e1b9668d5 drm/i915/display: Use sink_format instead of ycbcr420_output flag<br />
ed7076511e19 drm/i915/dp: Compute output format with/without DSC<br />
f57e3d249960 drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state sink_format<br />
eda0ef218006 drm/i915/dp: Add Scaler constraint for YCbCr420 output<br />
3d89a4861eff drm/i915/display: Add new member in intel_dp to store ycbcr420 passthrough cap<br />
a169d61a19b4 drm/i915/display: Add new member to configure PCON color conversion</p>

</body>
</html>

--===============7778405403907472299==--
