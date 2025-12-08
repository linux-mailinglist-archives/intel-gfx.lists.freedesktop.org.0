Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E30D0CAE53D
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 23:33:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC51310E3DE;
	Mon,  8 Dec 2025 22:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8019910E3DE;
 Mon,  8 Dec 2025 22:33:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6322668740057146190=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm=3A_unwind_drm_device_?=
 =?utf-8?q?registration_upon_error?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Dec 2025 22:33:49 -0000
Message-ID: <176523322946.67190.6674177931676586479@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <oi563j5djez5facxbrmkkyy7hvtb6lijurrebxffqqjfxhjjnu@7f7mrbufdcbv>
In-Reply-To: <oi563j5djez5facxbrmkkyy7hvtb6lijurrebxffqqjfxhjjnu@7f7mrbufdcbv>
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

--===============6322668740057146190==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: unwind drm device registration upon error
URL   : https://patchwork.freedesktop.org/series/158641/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17644 -> Patchwork_158641v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_158641v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_158641v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v1/index.html

Participating hosts (42 -> 5)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_158641v1 prevented too many machines from booting.

  Missing    (37): fi-rkl-11600 fi-snb-2520m bat-adlp-6 bat-adls-6 fi-skl-6600u bat-mtlp-9 fi-bsw-n3050 bat-dg2-8 bat-dg2-9 fi-hsw-4770 fi-ivb-3770 bat-rpls-4 bat-rplp-1 bat-dg2-11 bat-arls-5 fi-bsw-nick bat-arlh-2 bat-twl-2 fi-kbl-7567u bat-dg1-7 bat-arlh-3 bat-adlp-9 fi-cfl-8700k fi-glk-j4005 bat-dg1-6 bat-arls-6 bat-jsl-1 bat-mtlp-6 bat-mtlp-8 bat-adlp-11 fi-tgl-1115g4 fi-cfl-guc fi-kbl-guc bat-jsl-5 fi-kbl-x1275 fi-kbl-8809g bat-dg2-14 

Known issues
------------

  Here are the changes found in Patchwork_158641v1 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [INCOMPLETE][1] ([i915#12061] / [i915#15157]) -> [INCOMPLETE][2] ([i915#15157])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17644/bat-atsm-1/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v1/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][3] ([i915#14204]) -> [DMESG-FAIL][4] ([i915#13929])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17644/bat-atsm-1/igt@i915_selftest@live@mman.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v1/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#15157]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157


Build changes
-------------

  * Linux: CI_DRM_17644 -> Patchwork_158641v1

  CI-20190529: 20190529
  CI_DRM_17644: 20a0f6f7ed00cc169a15fe7fca330da8b2806732 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8658: 5d645d459768a0e5c8e5e95b9fce16bb17319825 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_158641v1: 20a0f6f7ed00cc169a15fe7fca330da8b2806732 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

16e5e31d2a6c drm: unwind drm device registration upon error

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v1/index.html

--===============6322668740057146190==
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
<tr><td><b>Series:</b></td><td>drm: unwind drm device registration upon error</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/158641/">https://patchwork.freedesktop.org/series/158641/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17644 -&gt; Patchwork_158641v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_158641v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_158641v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v1/index.html</p>
<h2>Participating hosts (42 -&gt; 5)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_158641v1 prevented too many machines from booting.</p>
<p>Missing    (37): fi-rkl-11600 fi-snb-2520m bat-adlp-6 bat-adls-6 fi-skl-6600u bat-mtlp-9 fi-bsw-n3050 bat-dg2-8 bat-dg2-9 fi-hsw-4770 fi-ivb-3770 bat-rpls-4 bat-rplp-1 bat-dg2-11 bat-arls-5 fi-bsw-nick bat-arlh-2 bat-twl-2 fi-kbl-7567u bat-dg1-7 bat-arlh-3 bat-adlp-9 fi-cfl-8700k fi-glk-j4005 bat-dg1-6 bat-arls-6 bat-jsl-1 bat-mtlp-6 bat-mtlp-8 bat-adlp-11 fi-tgl-1115g4 fi-cfl-guc fi-kbl-guc bat-jsl-5 fi-kbl-x1275 fi-kbl-8809g bat-dg2-14 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_158641v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17644/bat-atsm-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157">i915#15157</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v1/bat-atsm-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157">i915#15157</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17644/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v1/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17644 -&gt; Patchwork_158641v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17644: 20a0f6f7ed00cc169a15fe7fca330da8b2806732 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8658: 5d645d459768a0e5c8e5e95b9fce16bb17319825 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_158641v1: 20a0f6f7ed00cc169a15fe7fca330da8b2806732 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>16e5e31d2a6c drm: unwind drm device registration upon error</p>

</body>
</html>

--===============6322668740057146190==--
