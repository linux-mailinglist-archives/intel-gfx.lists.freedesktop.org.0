Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2365501E87
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 00:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4786010E411;
	Thu, 14 Apr 2022 22:44:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD5F510E40B;
 Thu, 14 Apr 2022 22:44:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB05FA0003;
 Thu, 14 Apr 2022 22:44:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6855756981540596897=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 14 Apr 2022 22:44:42 -0000
Message-ID: <164997628266.1347.9047622726854044477@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220414192230.749771-1-matthew.d.roper@intel.com>
In-Reply-To: <20220414192230.749771-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915/doc=3A_Convert_drm=5F?=
 =?utf-8?q?i915=5Fquery=5Ftopology=5Finfo_comment_to_kerneldoc?=
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

--===============6855756981540596897==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/4] drm/i915/doc: Convert drm_i915_query_topology_info comment to kerneldoc
URL   : https://patchwork.freedesktop.org/series/102713/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11503 -> Patchwork_102713v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/index.html

Participating hosts (49 -> 46)
------------------------------

  Missing    (3): fi-kbl-soraka fi-bsw-cyan fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_102713v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][1] -> [INCOMPLETE][2] ([i915#3921])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@modeset:
    - fi-tgl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-u2/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/fi-tgl-u2/igt@kms_busy@basic@modeset.html

  
#### Possible fixes ####

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-6:          [FAIL][5] ([i915#4032]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/bat-dg1-6/igt@i915_pm_rps@basic-api.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_suspend@system-suspend-without-i915:
    - {fi-tgl-dsi}:       [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032


Build changes
-------------

  * Linux: CI_DRM_11503 -> Patchwork_102713v1

  CI-20190529: 20190529
  CI_DRM_11503: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6437: ea0144ed6ccb66b977f204b4d53b6062ed1cc8bc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102713v1: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

864f27de2da9 drm/i915/uapi: Add DRM_I915_QUERY_GEOMETRY_SUBSLICES
39f8d988442c drm/i915/doc: Link query items to their uapi structs
350f16b19c41 drm/i915/doc: Convert perf UAPI comments to kerneldoc
976e8099bd28 drm/i915/doc: Convert drm_i915_query_topology_info comment to kerneldoc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/index.html

--===============6855756981540596897==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/4] drm/i915/doc: Convert drm_i915_query_topology_info comment to kerneldoc</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102713/">https://patchwork.freedesktop.org/series/102713/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11503 -&gt; Patchwork_102713v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/index.html</p>
<h2>Participating hosts (49 -&gt; 46)</h2>
<p>Missing    (3): fi-kbl-soraka fi-bsw-cyan fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102713v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-u2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/fi-tgl-u2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/bat-dg1-6/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4032">i915#4032</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@system-suspend-without-i915:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11503 -&gt; Patchwork_102713v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11503: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6437: ea0144ed6ccb66b977f204b4d53b6062ed1cc8bc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102713v1: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>864f27de2da9 drm/i915/uapi: Add DRM_I915_QUERY_GEOMETRY_SUBSLICES<br />
39f8d988442c drm/i915/doc: Link query items to their uapi structs<br />
350f16b19c41 drm/i915/doc: Convert perf UAPI comments to kerneldoc<br />
976e8099bd28 drm/i915/doc: Convert drm_i915_query_topology_info comment to kerneldoc</p>

</body>
</html>

--===============6855756981540596897==--
