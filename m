Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC932F6226
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 14:39:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB9EA6E33F;
	Thu, 14 Jan 2021 13:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E0B26E332;
 Thu, 14 Jan 2021 13:39:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 42902A7DFC;
 Thu, 14 Jan 2021 13:39:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 14 Jan 2021 13:39:38 -0000
Message-ID: <161063157823.19646.17467692410888851306@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210114103822.1766-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210114103822.1766-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/selftests=3A_Exercise?=
 =?utf-8?q?_relative_mmio_paths_to_non-privileged_registers?=
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
Content-Type: multipart/mixed; boundary="===============0319457516=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0319457516==
Content-Type: multipart/alternative;
 boundary="===============5899100832718015052=="

--===============5899100832718015052==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/selftests: Exercise relative mmio paths to non-privileged registers
URL   : https://patchwork.freedesktop.org/series/85865/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9607 -> Patchwork_19354
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/index.html

Known issues
------------

  Here are the changes found in Patchwork_19354 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_hangman@error-state-basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/fi-tgl-y/igt@i915_hangman@error-state-basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/fi-tgl-y/igt@i915_hangman@error-state-basic.html

  * igt@i915_selftest@live@active:
    - fi-kbl-soraka:      [PASS][3] -> [DMESG-FAIL][4] ([i915#2291] / [i915#666])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/fi-kbl-soraka/igt@i915_selftest@live@active.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/fi-kbl-soraka/igt@i915_selftest@live@active.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [PASS][5] -> [FAIL][6] ([i915#2128])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@gem_render_tiled_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/fi-tgl-y/igt@gem_render_tiled_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/fi-tgl-y/igt@gem_render_tiled_blits@basic.html

  
  [i915#2128]: https://gitlab.freedesktop.org/drm/intel/issues/2128
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666


Participating hosts (41 -> 38)
------------------------------

  Missing    (3): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9607 -> Patchwork_19354

  CI-20190529: 20190529
  CI_DRM_9607: 1cd1433e50924f963a31d50a0bfcccb1f872544f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5957: 2a2b3418f7458dfa1fac255cc5c71603f617690a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19354: 633f3050f2b666de909387521bc86f0df7e11f81 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

633f3050f2b6 drm/i915/selftests: Exercise cross-process context isolation
e31030c86d7e drm/i915/selftests: Exercise relative mmio paths to non-privileged registers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/index.html

--===============5899100832718015052==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/selftests: Exercise relative mmio paths to non-privileged registers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85865/">https://patchwork.freedesktop.org/series/85865/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9607 -&gt; Patchwork_19354</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19354 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/fi-tgl-y/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/fi-tgl-y/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/fi-kbl-soraka/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/fi-kbl-soraka/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/666">i915#666</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2128">i915#2128</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_render_tiled_blits@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9607/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19354/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9607 -&gt; Patchwork_19354</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9607: 1cd1433e50924f963a31d50a0bfcccb1f872544f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5957: 2a2b3418f7458dfa1fac255cc5c71603f617690a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19354: 633f3050f2b666de909387521bc86f0df7e11f81 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>633f3050f2b6 drm/i915/selftests: Exercise cross-process context isolation<br />
e31030c86d7e drm/i915/selftests: Exercise relative mmio paths to non-privileged registers</p>

</body>
</html>

--===============5899100832718015052==--

--===============0319457516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0319457516==--
