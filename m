Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEE536BA9E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 22:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E776E87A;
	Mon, 26 Apr 2021 20:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A26196E145;
 Mon, 26 Apr 2021 20:21:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 98E99A0BCB;
 Mon, 26 Apr 2021 20:21:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Randy Dunlap" <rdunlap@infradead.org>
Date: Mon, 26 Apr 2021 20:21:25 -0000
Message-ID: <161946848559.18667.11018776892164213442@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210426183516.18957-1-rdunlap@infradead.org>
In-Reply-To: <20210426183516.18957-1-rdunlap@infradead.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_i915=3A_fix_build_when_ACPI_is_disabled_and_BACKLIGHT=3Dm?=
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
Content-Type: multipart/mixed; boundary="===============1409578268=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1409578268==
Content-Type: multipart/alternative;
 boundary="===============7712508721352623904=="

--===============7712508721352623904==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: i915: fix build when ACPI is disabled and BACKLIGHT=m
URL   : https://patchwork.freedesktop.org/series/89509/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10011 -> Patchwork_19995
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19995/index.html

Known issues
------------

  Here are the changes found in Patchwork_19995 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19995/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [PASS][2] -> [INCOMPLETE][3] ([i915#155])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19995/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][4] ([i915#2782] / [i915#2940]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19995/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940


Participating hosts (40 -> 37)
------------------------------

  Missing    (3): fi-tgl-y fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10011 -> Patchwork_19995

  CI-20190529: 20190529
  CI_DRM_10011: 7e185a8c4fb2230187a8637e3885be57123cb7eb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6075: ccf602c569257291045415ff504a6d2460986c28 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19995: 1db2d6629e365765e76b05550c35dd2434adf895 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1db2d6629e36 drm: i915: fix build when ACPI is disabled and BACKLIGHT=m

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19995/index.html

--===============7712508721352623904==
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
<tr><td><b>Series:</b></td><td>drm: i915: fix build when ACPI is disabled and BACKLIGHT=m</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89509/">https://patchwork.freedesktop.org/series/89509/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19995/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19995/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10011 -&gt; Patchwork_19995</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19995/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19995 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19995/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19995/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10011/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19995/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Missing    (3): fi-tgl-y fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10011 -&gt; Patchwork_19995</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10011: 7e185a8c4fb2230187a8637e3885be57123cb7eb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6075: ccf602c569257291045415ff504a6d2460986c28 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19995: 1db2d6629e365765e76b05550c35dd2434adf895 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1db2d6629e36 drm: i915: fix build when ACPI is disabled and BACKLIGHT=m</p>

</body>
</html>

--===============7712508721352623904==--

--===============1409578268==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1409578268==--
