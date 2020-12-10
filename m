Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE0B2D5303
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 06:02:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DBBF6E3AC;
	Thu, 10 Dec 2020 05:02:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 85FEE6E3AC;
 Thu, 10 Dec 2020 05:02:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E1B2A7DFE;
 Thu, 10 Dec 2020 05:02:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Date: Thu, 10 Dec 2020 05:02:49 -0000
Message-ID: <160757656949.19115.5864056776357703534@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210041755.29088-1-airlied@gmail.com>
In-Reply-To: <20201210041755.29088-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_drm/i915/display=3A_move_needs=5Fmo?=
 =?utf-8?q?deset_to_an_inline_in_header?=
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
Content-Type: multipart/mixed; boundary="===============0803244090=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0803244090==
Content-Type: multipart/alternative;
 boundary="===============2035501008634021543=="

--===============2035501008634021543==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/9] drm/i915/display: move needs_modeset to an inline in header
URL   : https://patchwork.freedesktop.org/series/84761/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9467 -> Patchwork_19104
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/index.html

Known issues
------------

  Here are the changes found in Patchwork_19104 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-icl-u2:          [PASS][1] -> [DMESG-WARN][2] ([i915#1226])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/fi-tgl-y/igt@prime_vgem@basic-userptr.html

  
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 40)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9467 -> Patchwork_19104

  CI-20190529: 20190529
  CI_DRM_9467: 97bdde324e46e276a88de5d2d0c759b4309173c6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5886: c65fd1fbc26e9f65756d130d33b0ed56bc8faec7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19104: 6a72e6f856364a3f11c5b4be843e81acc4b7f6fe @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6a72e6f85636 drm/i915: migrate skl planes code new file
8fd0727c2a20 drm/i915: migrate hsw fdi code to new file.
3f29deb02bb0 drm/i915: split fdi code out from intel_display.c
3a72e7ca995f drm/i915: refactor pll code out into intel_dpll_legacy.c
cda39caa4c68 drm/i915: refactor some crtc code out of intel display.
e673ce40272b drm/i915: refactor cursor code out of i915_display.c
89c17eeef1fa drm/i915/display: fix misused comma
f7906d61c852 drm/i915/display: move to_intel_frontbuffer to header
ee7dca5fec1e drm/i915/display: move needs_modeset to an inline in header

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/index.html

--===============2035501008634021543==
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
<tr><td><b>Series:</b></td><td>series starting with [1/9] drm/i915/display: move needs_modeset to an inline in header</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84761/">https://patchwork.freedesktop.org/series/84761/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9467 -&gt; Patchwork_19104</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19104 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_vgem@basic-userptr:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/fi-tgl-y/igt@prime_vgem@basic-userptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9467 -&gt; Patchwork_19104</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9467: 97bdde324e46e276a88de5d2d0c759b4309173c6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5886: c65fd1fbc26e9f65756d130d33b0ed56bc8faec7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19104: 6a72e6f856364a3f11c5b4be843e81acc4b7f6fe @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6a72e6f85636 drm/i915: migrate skl planes code new file<br />
8fd0727c2a20 drm/i915: migrate hsw fdi code to new file.<br />
3f29deb02bb0 drm/i915: split fdi code out from intel_display.c<br />
3a72e7ca995f drm/i915: refactor pll code out into intel_dpll_legacy.c<br />
cda39caa4c68 drm/i915: refactor some crtc code out of intel display.<br />
e673ce40272b drm/i915: refactor cursor code out of i915_display.c<br />
89c17eeef1fa drm/i915/display: fix misused comma<br />
f7906d61c852 drm/i915/display: move to_intel_frontbuffer to header<br />
ee7dca5fec1e drm/i915/display: move needs_modeset to an inline in header</p>

</body>
</html>

--===============2035501008634021543==--

--===============0803244090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0803244090==--
