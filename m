Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C10684C54F2
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 10:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35D7610E44E;
	Sat, 26 Feb 2022 09:43:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 07EA110E44D;
 Sat, 26 Feb 2022 09:43:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0294FAADD2;
 Sat, 26 Feb 2022 09:43:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5147984171555305190=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Sat, 26 Feb 2022 09:43:35 -0000
Message-ID: <164586861597.9639.7257050982665173950@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220225070228.855138-1-jouni.hogander@intel.com>
In-Reply-To: <20220225070228.855138-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/psr=3A_Set_=22SF_Partial_Frame_Enable=22_also_on_full_upd?=
 =?utf-8?q?ate_=28rev5=29?=
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

--===============5147984171555305190==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/psr: Set "SF Partial Frame Enable" also on full update (rev5)
URL   : https://patchwork.freedesktop.org/series/100633/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11291 -> Patchwork_22427
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22427/index.html

Participating hosts (40 -> 41)
------------------------------

  Additional (2): bat-jsl-2 fi-pnv-d510 
  Missing    (1): fi-bsw-cyan 

Known issues
------------

  Here are the changes found in Patchwork_22427 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_basic@create-fd-close:
    - fi-bdw-gvtdvm:      [PASS][1] -> [INCOMPLETE][2] ([i915#2295])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/fi-bdw-gvtdvm/igt@gem_basic@create-fd-close.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22427/fi-bdw-gvtdvm/igt@gem_basic@create-fd-close.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271]) +57 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22427/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [DMESG-WARN][4] ([i915#2867]) -> [PASS][5] +17 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22427/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  * igt@kms_busy@basic@modeset:
    - {bat-adlp-6}:       [DMESG-WARN][6] ([i915#3576]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22427/bat-adlp-6/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11291 -> Patchwork_22427

  CI-20190529: 20190529
  CI_DRM_11291: 1e3f898ee67cb2fd8c58799ae8a094f73054c8b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6359: 57049558c452272b27eeb099fac07e55a924bbf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22427: 3896173b2d38d6de2a00a94187209d38bbf1d6c4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3896173b2d38 drm/i915/psr: Set "SF Partial Frame Enable" also on full update

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22427/index.html

--===============5147984171555305190==
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
<tr><td><b>Series:</b></td><td>drm/i915/psr: Set &quot;SF Partial Frame Enable&quot; also on full update (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100633/">https://patchwork.freedesktop.org/series/100633/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22427/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22427/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11291 -&gt; Patchwork_22427</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22427/index.html</p>
<h2>Participating hosts (40 -&gt; 41)</h2>
<p>Additional (2): bat-jsl-2 fi-pnv-d510 <br />
  Missing    (1): fi-bsw-cyan </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22427 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_basic@create-fd-close:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/fi-bdw-gvtdvm/igt@gem_basic@create-fd-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22427/fi-bdw-gvtdvm/igt@gem_basic@create-fd-close.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22427/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22427/fi-tgl-dsi/igt@i915_selftest@live@perf.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22427/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11291 -&gt; Patchwork_22427</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11291: 1e3f898ee67cb2fd8c58799ae8a094f73054c8b9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6359: 57049558c452272b27eeb099fac07e55a924bbf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22427: 3896173b2d38d6de2a00a94187209d38bbf1d6c4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3896173b2d38 drm/i915/psr: Set "SF Partial Frame Enable" also on full update</p>

</body>
</html>

--===============5147984171555305190==--
