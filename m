Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EED2CE4D6
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 02:16:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E5CE6E0E3;
	Fri,  4 Dec 2020 01:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 646616E0E1;
 Fri,  4 Dec 2020 01:16:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C216A47EB;
 Fri,  4 Dec 2020 01:16:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Fri, 04 Dec 2020 01:16:14 -0000
Message-ID: <160704457434.27540.15917503628444277889@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201203235358.18041-1-manasi.d.navare@intel.com>
In-Reply-To: <20201203235358.18041-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/9=5D_drm/i915/display/vrr=3A_Create?=
 =?utf-8?q?_VRR_file_and_add_VRR_capability_check?=
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
Content-Type: multipart/mixed; boundary="===============2067109752=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2067109752==
Content-Type: multipart/alternative;
 boundary="===============4852164742729084141=="

--===============4852164742729084141==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v3,1/9] drm/i915/display/vrr: Create VRR file and add VRR capability check
URL   : https://patchwork.freedesktop.org/series/84555/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9439 -> Patchwork_19055
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19055/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9439 and Patchwork_19055:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 37 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19055 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-WARN][2] ([i915#2605])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9439/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19055/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-x1275:       [INCOMPLETE][3] ([i915#1037] / [i915#794]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9439/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19055/fi-kbl-x1275/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-apl-guc:         [INCOMPLETE][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9439/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19055/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html

  
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (42 -> 38)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (5): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9439 -> Patchwork_19055

  CI-20190529: 20190529
  CI_DRM_9439: 17ead179a640cc74313ebdd72c51eee3d2d803d6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5880: d67bad61dc9a7515f94a7eecadd3bcd6b4f9d49e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19055: 0697846f288cc40a7c000c3949d4b40372e0c433 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0697846f288c drm/i915/display: Add HW state readout for VRR
035b3f92bb52 drm/i915/display/vrr: Set IGNORE_MSA_PAR state in DP Sink
03a364a7224e drm/i915/display/vrr: Disable VRR in modeset disable path
afe5f49bc923 drm/i915/display/vrr: Send VRR push to flip the frame
cb4f72be0cfb drm/i915/display/vrr: Configure and enable VRR in modeset enable
8646b8611fef drm/i915/display/dp: Do not enable PSR if VRR is enabled
f5ba4274a731 drm/i915/display/dp: Compute VRR state in atomic_check
7fa296742c37 drm/i915/display/dp: Attach and set drm connector VRR property
0f525febc7f4 drm/i915/display/vrr: Create VRR file and add VRR capability check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19055/index.html

--===============4852164742729084141==
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
<tr><td><b>Series:</b></td><td>series starting with [v3,1/9] drm/i915/display/vrr: Create VRR file and add VRR capability check</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84555/">https://patchwork.freedesktop.org/series/84555/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19055/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19055/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9439 -&gt; Patchwork_19055</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19055/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9439 and Patchwork_19055:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 37 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19055 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9439/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19055/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9439/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19055/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9439/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19055/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Additional (1): fi-tgl-y <br />
  Missing    (5): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9439 -&gt; Patchwork_19055</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9439: 17ead179a640cc74313ebdd72c51eee3d2d803d6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5880: d67bad61dc9a7515f94a7eecadd3bcd6b4f9d49e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19055: 0697846f288cc40a7c000c3949d4b40372e0c433 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0697846f288c drm/i915/display: Add HW state readout for VRR<br />
035b3f92bb52 drm/i915/display/vrr: Set IGNORE_MSA_PAR state in DP Sink<br />
03a364a7224e drm/i915/display/vrr: Disable VRR in modeset disable path<br />
afe5f49bc923 drm/i915/display/vrr: Send VRR push to flip the frame<br />
cb4f72be0cfb drm/i915/display/vrr: Configure and enable VRR in modeset enable<br />
8646b8611fef drm/i915/display/dp: Do not enable PSR if VRR is enabled<br />
f5ba4274a731 drm/i915/display/dp: Compute VRR state in atomic_check<br />
7fa296742c37 drm/i915/display/dp: Attach and set drm connector VRR property<br />
0f525febc7f4 drm/i915/display/vrr: Create VRR file and add VRR capability check</p>

</body>
</html>

--===============4852164742729084141==--

--===============2067109752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2067109752==--
