Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7896086D808
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 00:50:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F19EC10E3F9;
	Thu, 29 Feb 2024 23:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE8510E3F9;
 Thu, 29 Feb 2024 23:49:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0060912573862004439=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_series_starting_with_=5B1/4?=
 =?utf-8?q?=5D_drm/i915=3A_Rename_ICL=5FAUX=5FANAOVRD1_to_ICL=5FPORT=5FTX=5F?=
 =?utf-8?q?DW6=5FAUX?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Feb 2024 23:49:57 -0000
Message-ID: <170925059777.414572.14222247300694585044@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240229200357.7969-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240229200357.7969-1-ville.syrjala@linux.intel.com>
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

--===============0060912573862004439==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: Rename ICL_AUX_ANAOVRD1 to ICL_PORT_TX_DW6_AUX
URL   : https://patchwork.freedesktop.org/series/130581/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14370 -> Patchwork_130581v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-arls-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_130581v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-arls-3:         [PASS][1] -> [FAIL][2] ([i915#10234])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-3/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/bat-arls-3/boot.html
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8109u/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - bat-dg2-13:         NOTRUN -> [SKIP][5] ([Intel XE#484]) +1 other test skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - bat-dg2-13:         NOTRUN -> [SKIP][6] ([Intel XE#484] / [i915#4550]) +1 other test skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@dmabuf:
    - bat-arls-1:         [DMESG-FAIL][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-1/igt@i915_selftest@live@dmabuf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/bat-arls-1/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@gt_timelines:
    - {bat-arls-4}:       [INCOMPLETE][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-4/igt@i915_selftest@live@gt_timelines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/bat-arls-4/igt@i915_selftest@live@gt_timelines.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#484]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/484
  [i915#10234]: https://gitlab.freedesktop.org/drm/intel/issues/10234
  [i915#4550]: https://gitlab.freedesktop.org/drm/intel/issues/4550
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14370 -> Patchwork_130581v1

  CI-20190529: 20190529
  CI_DRM_14370: c1a0f6caf0ffa81e77e74e04d937605a2e293774 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7738: 7738
  Patchwork_130581v1: c1a0f6caf0ffa81e77e74e04d937605a2e293774 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0c144112a027 drm/i915: Streamline eDP handling in icl_combo_phy_aux_power_well_enable()
0fa49ce48c9e drm/i915: Use pw_idx to derive PHY for ICL_LANE_ENABLE_AUX override
0286bc59ff54 drm/i915: Use REG_BIT() & co. in intel_combo_phy_regs.h
3a06bbca238d drm/i915: Rename ICL_AUX_ANAOVRD1 to ICL_PORT_TX_DW6_AUX

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/index.html

--===============0060912573862004439==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: Rename ICL_AUX_ANAOVRD1 to ICL_PORT_TX_DW6_AUX</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130581/">https://patchwork.freedesktop.org/series/130581/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14370 -&gt; Patchwork_130581v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-arls-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130581v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-3/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/bat-arls-3/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10234">i915#10234</a>)</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4550">i915#4550</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-1/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/bat-arls-1/igt@i915_selftest@live@dmabuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>{bat-arls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-4/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130581v1/bat-arls-4/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14370 -&gt; Patchwork_130581v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14370: c1a0f6caf0ffa81e77e74e04d937605a2e293774 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7738: 7738<br />
  Patchwork_130581v1: c1a0f6caf0ffa81e77e74e04d937605a2e293774 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0c144112a027 drm/i915: Streamline eDP handling in icl_combo_phy_aux_power_well_enable()<br />
0fa49ce48c9e drm/i915: Use pw_idx to derive PHY for ICL_LANE_ENABLE_AUX override<br />
0286bc59ff54 drm/i915: Use REG_BIT() &amp; co. in intel_combo_phy_regs.h<br />
3a06bbca238d drm/i915: Rename ICL_AUX_ANAOVRD1 to ICL_PORT_TX_DW6_AUX</p>

</body>
</html>

--===============0060912573862004439==--
