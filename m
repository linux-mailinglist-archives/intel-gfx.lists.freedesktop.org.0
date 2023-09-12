Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DD879C64D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 07:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6C710E03C;
	Tue, 12 Sep 2023 05:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95F4C10E03C;
 Tue, 12 Sep 2023 05:35:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6246EA7DFB;
 Tue, 12 Sep 2023 05:35:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7191487774024037473=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
Date: Tue, 12 Sep 2023 05:35:08 -0000
Message-ID: <169449690837.31797.7890113751950543197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRW5h?=
 =?utf-8?q?ble_Lunar_Lake_display_=28rev4=29?=
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

--===============7191487774024037473==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Lunar Lake display (rev4)
URL   : https://patchwork.freedesktop.org/series/122799/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13622 -> Patchwork_122799v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v4/index.html

Participating hosts (38 -> 34)
------------------------------

  Missing    (4): bat-adlm-1 bat-adlp-11 fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_122799v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [PASS][1] -> [DMESG-FAIL][2] ([i915#7699] / [i915#7913])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13622/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v4/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [PASS][3] -> [FAIL][4] ([IGT#3] / [i915#6121])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13622/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v4/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hugepages:
    - bat-mtlp-8:         [DMESG-WARN][5] ([i915#9121]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13622/bat-mtlp-8/igt@i915_selftest@live@hugepages.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v4/bat-mtlp-8/igt@i915_selftest@live@hugepages.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2:
    - bat-dg1-5:          [FAIL][7] ([fdo#103375]) -> [PASS][8] +4 other tests pass
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13622/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v4/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121


Build changes
-------------

  * Linux: CI_DRM_13622 -> Patchwork_122799v4

  CI-20190529: 20190529
  CI_DRM_13622: 84ba384a9f96d41e3ec3c331feb544e7d39be04d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7480: a8d38db9ac258d7fd71b2cf7607e259a864f95be @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122799v4: 84ba384a9f96d41e3ec3c331feb544e7d39be04d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1e1053feb7f5 drm/i915/xe2lpd: Update mbus on post plane updates
e4779eb7c078 drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane
38eef2ccba5d drm/i915/lnl: Add programming for CDCLK change
46a39070a159 FIXME: drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf
80b515c2b8bf drm/i915/lnl: Start using CDCLK through PLL
7ef85f209140 drm/i915/lnl: Add CDCLK table
d5126b1c2b0b drm/i915/lnl: Add gmbus/ddc support
9e1eeab5a24b drm/i915/xe2lpd: Extend Wa_15010685871
b2eda0afd2a6 drm/i915/xe2lpd: Add support for HPD
7e3b69869cbc drm/i915/xe2lpd: Enable odd size and panning for planar yuv
739f01362ab5 drm/i915/xe2lpd: Read pin assignment from IOM
68f24924b7fc drm/i915/xe2lpd: Handle port AUX interrupts
36da552e6c3c drm/i915/xe2lpd: Add DC state support
f933713472e0 drm/i915/xe2lpd: Add display power well
29e0a2391a1f drm/i915/xe2lpd: Re-order DP AUX regs
e803dafba256 drm/i915/display: Use _PICK_EVEN_2RANGES() in DP AUX regs
6efdc5a817b0 drm/i915/display: Fix style and conventions for DP AUX regs
3f1bb33ecc7c drm/i915/xe2lpd: Register DE_RRMR has been removed
33b611718a02 drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST
abee38178fbe drm/i915/xe2lpd: Move registers to PICA
ff3547808cdb drm/i915/xe2lpd: Move D2D enable/disable
5a518ae3f952 drm/i915/display: Consolidate saved port bits in intel_digital_port
5e4ef9a328fc drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation
41e4af2a4ec1 drm/i915/xe2lpd: Add fake PCH
649ed5aabcb0 drm/i915: Re-order if/else ladder in intel_detect_pch()
b547bddccfaf drm/i915/display: Remove FBC capability from fused off pipes
f7b20a7c584f drm/i915/xe2lpd: FBC is now supported on all pipes
8e24e62c5576 drm/i915/lnl: Add display definitions
f9a895c8e4be drm/i915/xelpdp: Add XE_LPDP_FEATURES

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v4/index.html

--===============7191487774024037473==
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
<tr><td><b>Series:</b></td><td>Enable Lunar Lake display (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122799/">https://patchwork.freedesktop.org/series/122799/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13622 -&gt; Patchwork_122799v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v4/index.html</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Missing    (4): bat-adlm-1 bat-adlp-11 fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122799v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13622/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v4/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13622/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v4/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13622/bat-mtlp-8/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9121">i915#9121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v4/bat-mtlp-8/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13622/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v4/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13622 -&gt; Patchwork_122799v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13622: 84ba384a9f96d41e3ec3c331feb544e7d39be04d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7480: a8d38db9ac258d7fd71b2cf7607e259a864f95be @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122799v4: 84ba384a9f96d41e3ec3c331feb544e7d39be04d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1e1053feb7f5 drm/i915/xe2lpd: Update mbus on post plane updates<br />
e4779eb7c078 drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane<br />
38eef2ccba5d drm/i915/lnl: Add programming for CDCLK change<br />
46a39070a159 FIXME: drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf<br />
80b515c2b8bf drm/i915/lnl: Start using CDCLK through PLL<br />
7ef85f209140 drm/i915/lnl: Add CDCLK table<br />
d5126b1c2b0b drm/i915/lnl: Add gmbus/ddc support<br />
9e1eeab5a24b drm/i915/xe2lpd: Extend Wa_15010685871<br />
b2eda0afd2a6 drm/i915/xe2lpd: Add support for HPD<br />
7e3b69869cbc drm/i915/xe2lpd: Enable odd size and panning for planar yuv<br />
739f01362ab5 drm/i915/xe2lpd: Read pin assignment from IOM<br />
68f24924b7fc drm/i915/xe2lpd: Handle port AUX interrupts<br />
36da552e6c3c drm/i915/xe2lpd: Add DC state support<br />
f933713472e0 drm/i915/xe2lpd: Add display power well<br />
29e0a2391a1f drm/i915/xe2lpd: Re-order DP AUX regs<br />
e803dafba256 drm/i915/display: Use _PICK_EVEN_2RANGES() in DP AUX regs<br />
6efdc5a817b0 drm/i915/display: Fix style and conventions for DP AUX regs<br />
3f1bb33ecc7c drm/i915/xe2lpd: Register DE_RRMR has been removed<br />
33b611718a02 drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST<br />
abee38178fbe drm/i915/xe2lpd: Move registers to PICA<br />
ff3547808cdb drm/i915/xe2lpd: Move D2D enable/disable<br />
5a518ae3f952 drm/i915/display: Consolidate saved port bits in intel_digital_port<br />
5e4ef9a328fc drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation<br />
41e4af2a4ec1 drm/i915/xe2lpd: Add fake PCH<br />
649ed5aabcb0 drm/i915: Re-order if/else ladder in intel_detect_pch()<br />
b547bddccfaf drm/i915/display: Remove FBC capability from fused off pipes<br />
f7b20a7c584f drm/i915/xe2lpd: FBC is now supported on all pipes<br />
8e24e62c5576 drm/i915/lnl: Add display definitions<br />
f9a895c8e4be drm/i915/xelpdp: Add XE_LPDP_FEATURES</p>

</body>
</html>

--===============7191487774024037473==--
