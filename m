Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 740C58584F3
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 19:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E489010EADF;
	Fri, 16 Feb 2024 18:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4788C10EADF;
 Fri, 16 Feb 2024 18:15:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2792815692053933648=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Use_drm=5Fprint?=
 =?utf-8?q?er_more?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Feb 2024 18:15:08 -0000
Message-ID: <170810730827.54066.9643399997605006511@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
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

--===============2792815692053933648==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use drm_printer more
URL   : https://patchwork.freedesktop.org/series/129956/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14285 -> Patchwork_129956v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v1/index.html

Participating hosts (36 -> 35)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_129956v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_fence@basic-busy@ccs0:
    - {bat-arls-1}:       [DMESG-WARN][1] ([i915#10194]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14285/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v1/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7567u:       [CRASH][3] ([i915#9947]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14285/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#9947]: https://gitlab.freedesktop.org/drm/intel/issues/9947


Build changes
-------------

  * Linux: CI_DRM_14285 -> Patchwork_129956v1

  CI-20190529: 20190529
  CI_DRM_14285: 9c2a8434bbf098a9709cfbbd7df0e1aa02c8927b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7716: 7716
  Patchwork_129956v1: 9c2a8434bbf098a9709cfbbd7df0e1aa02c8927b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d7f4fd06a387 drm/i915: Create the printer only once in intel_pipe_config_compare()
503cde3bbc2d drm/i915: Reuse pipe_config_mismatch() more
0082805f766a drm/i915: Relocate pipe_config_mismatch()
03e47a5e1d96 drm/i915: Skip intel_crtc_state_dump() if debugs aren't enabled
498dd38f794c drm/i915: Convert the remaining state dump to drm_printer
b1b783a6591d drm/i915: Use drm_printer more extensively in intel_crtc_state_dump()
808c979ffc2c drm/i915: Convert intel_dpll_dump_hw_state() to drm_printer
af010cb68707 drm/i915: Convert pipe_config_buffer_mismatch() to drm_printer
e03cb8b204ee drm/i915: Convert pipe_config_infoframe_mismatch() to drm_printer
29636b93e180 drm/i915: Include CRTC info in VSC SDP mismatch prints
4a8cab442d9f drm/i915: Include CRTC info in infoframe mismatch prints
e3950dbf6672 drm/i915: Indicate which pipe failed the fastset check overall

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v1/index.html

--===============2792815692053933648==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use drm_printer more</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129956/">https://patchwork.freedesktop.org/series/129956/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14285 -&gt; Patchwork_129956v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v1/index.html</p>
<h2>Participating hosts (36 -&gt; 35)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129956v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@ccs0:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14285/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v1/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14285/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9947">i915#9947</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14285 -&gt; Patchwork_129956v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14285: 9c2a8434bbf098a9709cfbbd7df0e1aa02c8927b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7716: 7716<br />
  Patchwork_129956v1: 9c2a8434bbf098a9709cfbbd7df0e1aa02c8927b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d7f4fd06a387 drm/i915: Create the printer only once in intel_pipe_config_compare()<br />
503cde3bbc2d drm/i915: Reuse pipe_config_mismatch() more<br />
0082805f766a drm/i915: Relocate pipe_config_mismatch()<br />
03e47a5e1d96 drm/i915: Skip intel_crtc_state_dump() if debugs aren't enabled<br />
498dd38f794c drm/i915: Convert the remaining state dump to drm_printer<br />
b1b783a6591d drm/i915: Use drm_printer more extensively in intel_crtc_state_dump()<br />
808c979ffc2c drm/i915: Convert intel_dpll_dump_hw_state() to drm_printer<br />
af010cb68707 drm/i915: Convert pipe_config_buffer_mismatch() to drm_printer<br />
e03cb8b204ee drm/i915: Convert pipe_config_infoframe_mismatch() to drm_printer<br />
29636b93e180 drm/i915: Include CRTC info in VSC SDP mismatch prints<br />
4a8cab442d9f drm/i915: Include CRTC info in infoframe mismatch prints<br />
e3950dbf6672 drm/i915: Indicate which pipe failed the fastset check overall</p>

</body>
</html>

--===============2792815692053933648==--
