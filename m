Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E76233B9A7A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 03:17:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 980416EC7A;
	Fri,  2 Jul 2021 01:17:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 810E76EC79;
 Fri,  2 Jul 2021 01:17:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7AE10AA915;
 Fri,  2 Jul 2021 01:17:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Fri, 02 Jul 2021 01:17:47 -0000
Message-ID: <162518866747.22030.11265109218435977485@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210701193114.17531-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210701193114.17531-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgU3Rl?=
 =?utf-8?q?pping/substepping_reorg_for_DMC?=
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
Content-Type: multipart/mixed; boundary="===============1514459225=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1514459225==
Content-Type: multipart/alternative;
 boundary="===============7610700832270952687=="

--===============7610700832270952687==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Stepping/substepping reorg for DMC
URL   : https://patchwork.freedesktop.org/series/92132/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10301 -> Patchwork_20516
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20516 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20516, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20516/index.html

Known issues
------------

  Here are the changes found in Patchwork_20516 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20516/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20516/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][3] ([i915#2782] / [i915#2940]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20516/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-bsw-kefka:       [INCOMPLETE][5] ([i915#2782] / [i915#2940]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20516/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940


Participating hosts (37 -> 14)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_20516 prevented too many machines from booting.

  Missing    (23): fi-kbl-soraka fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-6600u fi-bxt-dsi fi-cml-s fi-glk-dsi fi-kbl-7500u fi-skl-6700k2 fi-kbl-r fi-kbl-7567u fi-tgl-dsi fi-cfl-8700k fi-dg1-1 fi-ehl-2 fi-jsl-1 fi-tgl-1115g4 fi-bsw-cyan fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10301 -> Patchwork_20516

  CI-20190529: 20190529
  CI_DRM_10301: 3d3ff5917ce204b783f4847c14e8839fde358a3a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20516: cfef0bcd32febba37c4b26ceaea5bb175a2163bc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cfef0bcd32fe drm/i915/dmc: Add steping info table for remaining platforms
89d374a999d0 drm/i915/dmc: Use RUNTIME_INFO->step for DMC

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20516/index.html

--===============7610700832270952687==
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
<tr><td><b>Series:</b></td><td>Stepping/substepping reorg for DMC</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92132/">https://patchwork.freedesktop.org/series/92132/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20516/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20516/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10301 -&gt; Patchwork_20516</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20516 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20516, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20516/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20516 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20516/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20516/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20516/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20516/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (37 -&gt; 14)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_20516 prevented too many machines from booting.</p>
<p>Missing    (23): fi-kbl-soraka fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-6600u fi-bxt-dsi fi-cml-s fi-glk-dsi fi-kbl-7500u fi-skl-6700k2 fi-kbl-r fi-kbl-7567u fi-tgl-dsi fi-cfl-8700k fi-dg1-1 fi-ehl-2 fi-jsl-1 fi-tgl-1115g4 fi-bsw-cyan fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10301 -&gt; Patchwork_20516</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10301: 3d3ff5917ce204b783f4847c14e8839fde358a3a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20516: cfef0bcd32febba37c4b26ceaea5bb175a2163bc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cfef0bcd32fe drm/i915/dmc: Add steping info table for remaining platforms<br />
89d374a999d0 drm/i915/dmc: Use RUNTIME_INFO-&gt;step for DMC</p>

</body>
</html>

--===============7610700832270952687==--

--===============1514459225==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1514459225==--
