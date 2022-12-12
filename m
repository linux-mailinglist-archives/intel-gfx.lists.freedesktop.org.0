Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B4F649E71
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 13:10:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 587BE10E1D2;
	Mon, 12 Dec 2022 12:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C2F010E1D2;
 Mon, 12 Dec 2022 12:10:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7987DAADE6;
 Mon, 12 Dec 2022 12:10:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7789744391293650257=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 12 Dec 2022 12:10:29 -0000
Message-ID: <167084702949.12116.9198963644153792636@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221212112822.1391254-1-jani.nikula@intel.com>
In-Reply-To: <20221212112822.1391254-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_add_support_for_ICL+_native_MIPI_GPIO_sequence?=
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

--===============7789744391293650257==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsi: add support for ICL+ native MIPI GPIO sequence
URL   : https://patchwork.freedesktop.org/series/111850/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12493 -> Patchwork_111850v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111850v1/index.html

Participating hosts (40 -> 24)
------------------------------

  Missing    (16): fi-kbl-soraka bat-kbl-2 bat-adls-5 bat-adlp-9 bat-dg1-5 fi-bsw-n3050 bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-hsw-4770 bat-jsl-3 bat-dg2-11 fi-bsw-nick fi-skl-6600u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111850v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@workarounds:
    - {bat-rplp-1}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12493/bat-rplp-1/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111850v1/bat-rplp-1/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_111850v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@mman:
    - fi-rkl-guc:         [PASS][3] -> [TIMEOUT][4] ([i915#6794])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12493/fi-rkl-guc/igt@i915_selftest@live@mman.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111850v1/fi-rkl-guc/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [PASS][5] -> [INCOMPLETE][6] ([i915#4817])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12493/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111850v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {bat-rpls-2}:       [DMESG-WARN][7] ([i915#6434]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12493/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111850v1/bat-rpls-2/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794


Build changes
-------------

  * Linux: CI_DRM_12493 -> Patchwork_111850v1

  CI-20190529: 20190529
  CI_DRM_12493: a6dc4d045339e2817103e99539e3efaa554c941f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7090: 5aafcf060b6dfbb2fa7aace76c8074d98ac7da8f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111850v1: a6dc4d045339e2817103e99539e3efaa554c941f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

8d94e2693fce drm/i915/dsi: add support for ICL+ native MIPI GPIO sequence

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111850v1/index.html

--===============7789744391293650257==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsi: add support for ICL+ native MIPI GPIO sequence</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111850/">https://patchwork.freedesktop.org/series/111850/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111850v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111850v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12493 -&gt; Patchwork_111850v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111850v1/index.html</p>
<h2>Participating hosts (40 -&gt; 24)</h2>
<p>Missing    (16): fi-kbl-soraka bat-kbl-2 bat-adls-5 bat-adlp-9 bat-dg1-5 fi-bsw-n3050 bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-hsw-4770 bat-jsl-3 bat-dg2-11 fi-bsw-nick fi-skl-6600u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_111850v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12493/bat-rplp-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111850v1/bat-rplp-1/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111850v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12493/fi-rkl-guc/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111850v1/fi-rkl-guc/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12493/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111850v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12493/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6434">i915#6434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111850v1/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12493 -&gt; Patchwork_111850v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12493: a6dc4d045339e2817103e99539e3efaa554c941f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7090: 5aafcf060b6dfbb2fa7aace76c8074d98ac7da8f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111850v1: a6dc4d045339e2817103e99539e3efaa554c941f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>8d94e2693fce drm/i915/dsi: add support for ICL+ native MIPI GPIO sequence</p>

</body>
</html>

--===============7789744391293650257==--
