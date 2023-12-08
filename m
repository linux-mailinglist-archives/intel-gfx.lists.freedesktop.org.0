Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5115980AAD4
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 18:31:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8B7E10E29A;
	Fri,  8 Dec 2023 17:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2025E10E29A;
 Fri,  8 Dec 2023 17:31:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 188BAACC20;
 Fri,  8 Dec 2023 17:31:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5165513357454233873=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_fix_display_ver?=
 =?utf-8?q?_12-13_fault_error_handling_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 08 Dec 2023 17:31:28 -0000
Message-ID: <170205668806.7325.12898012741745505721@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231208112008.2904497-1-jani.nikula@intel.com>
In-Reply-To: <20231208112008.2904497-1-jani.nikula@intel.com>
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

--===============5165513357454233873==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: fix display ver 12-13 fault error handling (rev2)
URL   : https://patchwork.freedesktop.org/series/127564/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14000 -> Patchwork_127564v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127564v2/index.html

Participating hosts (35 -> 33)
------------------------------

  Missing    (2): bat-dg2-9 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_127564v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14000/bat-jsl-1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127564v2/bat-jsl-1/boot.html

  

### IGT changes ###

#### Possible fixes ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][3] ([IGT#3]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14000/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127564v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14000 -> Patchwork_127564v2

  CI-20190529: 20190529
  CI_DRM_14000: 49f3163775ad99ba15de59607435e367328329fa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7629: 1dd73105a01e092da7954f9552ec0c67ed8a9f4e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127564v2: 49f3163775ad99ba15de59607435e367328329fa @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

8eff32d65adf drm/i915: fix display ver 12-13 fault error handling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127564v2/index.html

--===============5165513357454233873==
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
<tr><td><b>Series:</b></td><td>drm/i915: fix display ver 12-13 fault error handling (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127564/">https://patchwork.freedesktop.org/series/127564/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127564v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127564v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14000 -&gt; Patchwork_127564v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127564v2/index.html</p>
<h2>Participating hosts (35 -&gt; 33)</h2>
<p>Missing    (2): bat-dg2-9 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127564v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14000/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127564v2/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_hdmi_inject@inject-audio:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14000/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127564v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14000 -&gt; Patchwork_127564v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14000: 49f3163775ad99ba15de59607435e367328329fa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7629: 1dd73105a01e092da7954f9552ec0c67ed8a9f4e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127564v2: 49f3163775ad99ba15de59607435e367328329fa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>8eff32d65adf drm/i915: fix display ver 12-13 fault error handling</p>

</body>
</html>

--===============5165513357454233873==--
