Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8949142817B
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Oct 2021 15:19:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49D0F6E30C;
	Sun, 10 Oct 2021 13:19:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EC4116E2F2;
 Sun, 10 Oct 2021 13:19:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1E84AA914;
 Sun, 10 Oct 2021 13:19:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2365829867006232039=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 10 Oct 2021 13:19:05 -0000
Message-ID: <163387194588.32087.13823048407756389012@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211010121039.14725-1-animesh.manna@intel.com>
In-Reply-To: <20211010121039.14725-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUGFu?=
 =?utf-8?q?el_replay_phase1_implementation_=28rev3=29?=
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

--===============2365829867006232039==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Panel replay phase1 implementation (rev3)
URL   : https://patchwork.freedesktop.org/series/94470/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10706 -> Patchwork_21302
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/index.html

Known issues
------------

  Here are the changes found in Patchwork_21302 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +11 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][2] -> [INCOMPLETE][3] ([i915#3921])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10706/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-kbl-soraka:      [PASS][4] -> [DMESG-WARN][5] ([i915#1982])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10706/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_flip@basic-plain-flip@c-dp2:
    - fi-cfl-8109u:       [PASS][6] -> [DMESG-WARN][7] ([i915#295])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10706/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][8] ([i915#1982]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10706/fi-tgl-dsi/igt@i915_module_load@reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/fi-tgl-dsi/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921


Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10706 -> Patchwork_21302

  CI-20190529: 20190529
  CI_DRM_10706: 06c55d63636faa92633f3f4673437059dff94bfa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6241: 426723f979380f18f9c07d36ebac3a52f760ba7e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21302: 2e0649d10c3b68737baa4f7410e87a2d1204dc22 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2e0649d10c3b drm/i915/panelreplay: Added state checker for panel replay state
f8a9c0e7bea1 drm/i915/panelreplay: enable/disable panel replay
24116fc88ff5 drm/i915/panelreplay: Initializaton and compute config for panel replay
958b50451637 drm/i915/panelreplay: HAS_PR() macro added for panel replay
6a3ffaa466ae drm/i915/panelreplay: dpcd register definition for panelreplay

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/index.html

--===============2365829867006232039==
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
<tr><td><b>Series:</b></td><td>Panel replay phase1 implementation (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94470/">https://patchwork.freedesktop.org/series/94470/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10706 -&gt; Patchwork_21302</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21302 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10706/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10706/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp2:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10706/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10706/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21302/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10706 -&gt; Patchwork_21302</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10706: 06c55d63636faa92633f3f4673437059dff94bfa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6241: 426723f979380f18f9c07d36ebac3a52f760ba7e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21302: 2e0649d10c3b68737baa4f7410e87a2d1204dc22 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2e0649d10c3b drm/i915/panelreplay: Added state checker for panel replay state<br />
f8a9c0e7bea1 drm/i915/panelreplay: enable/disable panel replay<br />
24116fc88ff5 drm/i915/panelreplay: Initializaton and compute config for panel replay<br />
958b50451637 drm/i915/panelreplay: HAS_PR() macro added for panel replay<br />
6a3ffaa466ae drm/i915/panelreplay: dpcd register definition for panelreplay</p>

</body>
</html>

--===============2365829867006232039==--
