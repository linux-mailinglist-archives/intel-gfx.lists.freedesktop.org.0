Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BAA7ED709
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 23:07:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D5C910E29D;
	Wed, 15 Nov 2023 22:07:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A339110E27D;
 Wed, 15 Nov 2023 22:07:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9CA99A7E03;
 Wed, 15 Nov 2023 22:07:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0362711136279796167=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 15 Nov 2023 22:07:32 -0000
Message-ID: <170008605260.646.2639020939140170579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231114155528.96935-1-jani.nikula@intel.com>
In-Reply-To: <20231114155528.96935-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_keep_struct_intel=5Fdisplay_members_sorted_=28?=
 =?utf-8?q?rev2=29?=
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

--===============0362711136279796167==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: keep struct intel_display members sorted (rev2)
URL   : https://patchwork.freedesktop.org/series/126413/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13881 -> Patchwork_126413v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v2/index.html

Participating hosts (40 -> 35)
------------------------------

  Missing    (5): bat-kbl-2 bat-dg2-9 fi-snb-2520m fi-pnv-d510 bat-rpls-1 

Known issues
------------

  Here are the changes found in Patchwork_126413v2 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-bsw-n3050:       [FAIL][1] ([i915#8293]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/fi-bsw-n3050/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v2/fi-bsw-n3050/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][3] ([fdo#109271]) +14 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v2/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][4] ([IGT#3])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v2/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][5] ([i915#8668]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13881 -> Patchwork_126413v2

  CI-20190529: 20190529
  CI_DRM_13881: 36732395a74634a9ff9db10c79c4c52719cdab40 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7590: c484e1422184a3183d11f1595e53a6715574520f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126413v2: 36732395a74634a9ff9db10c79c4c52719cdab40 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a65d53519df2 drm/i915/display: keep struct intel_display members sorted

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v2/index.html

--===============0362711136279796167==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: keep struct intel_display members sorted (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126413/">https://patchwork.freedesktop.org/series/126413/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13881 -&gt; Patchwork_126413v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v2/index.html</p>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Missing    (5): bat-kbl-2 bat-dg2-9 fi-snb-2520m fi-pnv-d510 bat-rpls-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126413v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v2/fi-bsw-n3050/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v2/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v2/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13881 -&gt; Patchwork_126413v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13881: 36732395a74634a9ff9db10c79c4c52719cdab40 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7590: c484e1422184a3183d11f1595e53a6715574520f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126413v2: 36732395a74634a9ff9db10c79c4c52719cdab40 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a65d53519df2 drm/i915/display: keep struct intel_display members sorted</p>

</body>
</html>

--===============0362711136279796167==--
