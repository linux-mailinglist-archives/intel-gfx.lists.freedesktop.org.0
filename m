Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 998503632E7
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Apr 2021 03:07:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 875E76E059;
	Sun, 18 Apr 2021 01:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9EC86E04E;
 Sun, 18 Apr 2021 01:07:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1362A73C9;
 Sun, 18 Apr 2021 01:07:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sun, 18 Apr 2021 01:07:15 -0000
Message-ID: <161870803576.9418.2163038504863571697@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210418002126.87882-1-jose.souza@intel.com>
In-Reply-To: <20210418002126.87882-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915/display=3A_Fill_PSR_state_?=
 =?utf-8?q?during_hardware_configuration_read_out?=
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
Content-Type: multipart/mixed; boundary="===============1592397009=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1592397009==
Content-Type: multipart/alternative;
 boundary="===============0550065927940731439=="

--===============0550065927940731439==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/5] drm/i915/display: Fill PSR state during hardware configuration read out
URL   : https://patchwork.freedesktop.org/series/89204/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9979 -> Patchwork_19945
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/index.html

Known issues
------------

  Here are the changes found in Patchwork_19945 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][2] ([i915#2782] / [i915#2940]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940


Participating hosts (43 -> 41)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9979 -> Patchwork_19945

  CI-20190529: 20190529
  CI_DRM_9979: 3fc393180390c562554bdd7d0ac08fa4b86a4011 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6067: 14317b92a672d9a20cd04fc3b0c80e2fb12d51d5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19945: 552ce59e5d6a8805bfa342474467e6018c10dacb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

552ce59e5d6a drm/i915/display/xelpd: Implement Wa_14013475917
5c9ffe2f639b drm/i915/display: Drop dead code from hsw_read_infoframe()
d99e007b3098 drm/i915/display: Drop duplicated code in intel_dp_set_infoframes()
37bb2604f801 drm/i915/display: Replace intel_psr_enabled() calls by intel_crtc_state check
e731d682aa18 drm/i915/display: Fill PSR state during hardware configuration read out

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/index.html

--===============0550065927940731439==
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
<tr><td><b>Series:</b></td><td>series starting with [1/5] drm/i915/display: Fill PSR state during hardware configuration read out</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89204/">https://patchwork.freedesktop.org/series/89204/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9979 -&gt; Patchwork_19945</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19945 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_basic@query-info:<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9979 -&gt; Patchwork_19945</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9979: 3fc393180390c562554bdd7d0ac08fa4b86a4011 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6067: 14317b92a672d9a20cd04fc3b0c80e2fb12d51d5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19945: 552ce59e5d6a8805bfa342474467e6018c10dacb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>552ce59e5d6a drm/i915/display/xelpd: Implement Wa_14013475917<br />
5c9ffe2f639b drm/i915/display: Drop dead code from hsw_read_infoframe()<br />
d99e007b3098 drm/i915/display: Drop duplicated code in intel_dp_set_infoframes()<br />
37bb2604f801 drm/i915/display: Replace intel_psr_enabled() calls by intel_crtc_state check<br />
e731d682aa18 drm/i915/display: Fill PSR state during hardware configuration read out</p>

</body>
</html>

--===============0550065927940731439==--

--===============1592397009==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1592397009==--
