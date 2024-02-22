Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C02E8605CE
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 23:41:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CFEC10EAA6;
	Thu, 22 Feb 2024 22:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E84710EAA7;
 Thu, 22 Feb 2024 22:41:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4913968264099003156=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_LNL_display?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Feb 2024 22:41:30 -0000
Message-ID: <170864169038.235433.14732220973885420708@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
In-Reply-To: <20240222125634.275047-1-vinod.govindapillai@intel.com>
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

--===============4913968264099003156==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: LNL display
URL   : https://patchwork.freedesktop.org/series/130255/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14320 -> Patchwork_130255v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130255v1/index.html

Participating hosts (36 -> 34)
------------------------------

  Missing    (2): fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_130255v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#10112])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14320/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130255v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7567u:       [CRASH][3] ([i915#9947]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14320/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130255v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][5] ([i915#7911]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14320/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130255v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10112]: https://gitlab.freedesktop.org/drm/intel/issues/10112
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#9947]: https://gitlab.freedesktop.org/drm/intel/issues/9947


Build changes
-------------

  * Linux: CI_DRM_14320 -> Patchwork_130255v1

  CI-20190529: 20190529
  CI_DRM_14320: 164222e11030db989ad66c48f764b5ce4b896181 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7725: 7725
  Patchwork_130255v1: 164222e11030db989ad66c48f764b5ce4b896181 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c15a03f81f61 drm/xe/lnl: Enable the display support
5e2e2b4f9574 drm/i915/xe2lpd: Load DMC
cf249b91a71c drm/i915/xe2lpd: Update mbus on post plane updates
b5a0717bf26e drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane
439656705f90 drm/i915/lnl: Add programming for CDCLK change
3558c3a8f439 drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130255v1/index.html

--===============4913968264099003156==
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
<tr><td><b>Series:</b></td><td>LNL display</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130255/">https://patchwork.freedesktop.org/series/130255/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130255v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130255v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14320 -&gt; Patchwork_130255v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130255v1/index.html</p>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Missing    (2): fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130255v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14320/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130255v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10112">i915#10112</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14320/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9947">i915#9947</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130255v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14320/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130255v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14320 -&gt; Patchwork_130255v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14320: 164222e11030db989ad66c48f764b5ce4b896181 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7725: 7725<br />
  Patchwork_130255v1: 164222e11030db989ad66c48f764b5ce4b896181 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c15a03f81f61 drm/xe/lnl: Enable the display support<br />
5e2e2b4f9574 drm/i915/xe2lpd: Load DMC<br />
cf249b91a71c drm/i915/xe2lpd: Update mbus on post plane updates<br />
b5a0717bf26e drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane<br />
439656705f90 drm/i915/lnl: Add programming for CDCLK change<br />
3558c3a8f439 drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf</p>

</body>
</html>

--===============4913968264099003156==--
