Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6B37A2D5D
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Sep 2023 04:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155E810E0A2;
	Sat, 16 Sep 2023 02:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0302810E0A2;
 Sat, 16 Sep 2023 02:12:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E86E5A0093;
 Sat, 16 Sep 2023 02:12:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1221800816561034420=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
Date: Sat, 16 Sep 2023 02:12:32 -0000
Message-ID: <169483035291.10847.5979931932349107603@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_Lunar_Lake_display_=28rev5=29?=
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

--===============1221800816561034420==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Lunar Lake display (rev5)
URL   : https://patchwork.freedesktop.org/series/122799/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13643 -> Patchwork_122799v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_122799v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_122799v5, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v5/index.html

Participating hosts (40 -> 17)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_122799v5 prevented too many machines from booting.

  Missing    (23): fi-rkl-11600 bat-adls-5 fi-snb-2520m bat-rpls-1 fi-blb-e6850 fi-skl-6600u fi-bsw-n3050 bat-dg2-9 fi-ilk-650 bat-adln-1 fi-elk-e7500 bat-jsl-3 bat-rplp-1 fi-bsw-nick fi-kbl-7567u bat-kbl-2 fi-cfl-8700k bat-mtlp-8 bat-jsl-1 fi-cfl-guc fi-cfl-8109u fi-kbl-8809g bat-dg2-13 

Known issues
------------

  Here are the changes found in Patchwork_122799v5 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][1] ([IGT#3] / [i915#6121]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v5/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121


Build changes
-------------

  * Linux: CI_DRM_13643 -> Patchwork_122799v5

  CI-20190529: 20190529
  CI_DRM_13643: dc4cd6e4e53d46211952fe7c0e408fce3e212993 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7490: 7490
  Patchwork_122799v5: dc4cd6e4e53d46211952fe7c0e408fce3e212993 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a1512e4ab38f drm/i915/xe2lpd: Update mbus on post plane updates
95ba176137a8 drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane
54a8c4429dc1 drm/i915/lnl: Add programming for CDCLK change
1cfd746b85c0 FIXME: drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf
e6bd643715fe drm/i915/lnl: Start using CDCLK through PLL
a88713fc7026 drm/i915/xe2lpd: Add DC state support
a3a743041183 drm/i915/xe2lpd: Add display power well
1f29022f5ef5 drm/i915/lnl: Add CDCLK table
e2fea73b6edb drm/i915/lnl: Add gmbus/ddc support
1a899a446698 drm/i915/xe2lpd: Extend Wa_15010685871
4021c2133859 drm/i915/xe2lpd: Add support for HPD
d9ffb2884399 drm/i915/xe2lpd: Enable odd size and panning for planar yuv
fdd0866ff54f drm/i915/xe2lpd: Read pin assignment from IOM
5360a0f73e66 drm/i915/xe2lpd: Handle port AUX interrupts
8e5fd7b94294 drm/i915/xe2lpd: Re-order DP AUX regs
7ac85cc7520c drm/i915/display: Use _PICK_EVEN_2RANGES() in DP AUX regs
5d11d03ecd91 drm/i915/display: Fix style and conventions for DP AUX regs
fbae14705d90 drm/i915/xe2lpd: Move registers to PICA
d6d6cf7c943e drm/i915/xe2lpd: Move D2D enable/disable
c2bc5e1b4ef3 drm/i915/display: Rename intel_dp->DP
708d470949be drm/i915/display: Consolidate saved port bits in intel_digital_port
43af5bbfa30f drm/i915/xe2lpd: Register DE_RRMR has been removed
a5ec9d7afd0c drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST
dfff011c0855 drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation
e9cede014192 drm/i915/xe2lpd: Add fake PCH
118eb67567aa drm/i915: Re-order if/else ladder in intel_detect_pch()
c76243995f84 drm/i915/display: Remove FBC capability from fused off pipes
1d52bd792e86 drm/i915/xe2lpd: FBC is now supported on all pipes
e6eaf321ef77 drm/i915/lnl: Add display definitions
3b72b290abf4 drm/i915/xelpdp: Add XE_LPDP_FEATURES

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v5/index.html

--===============1221800816561034420==
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
<tr><td><b>Series:</b></td><td>Enable Lunar Lake display (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122799/">https://patchwork.freedesktop.org/series/122799/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13643 -&gt; Patchwork_122799v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_122799v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_122799v5, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v5/index.html</p>
<h2>Participating hosts (40 -&gt; 17)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_122799v5 prevented too many machines from booting.</p>
<p>Missing    (23): fi-rkl-11600 bat-adls-5 fi-snb-2520m bat-rpls-1 fi-blb-e6850 fi-skl-6600u fi-bsw-n3050 bat-dg2-9 fi-ilk-650 bat-adln-1 fi-elk-e7500 bat-jsl-3 bat-rplp-1 fi-bsw-nick fi-kbl-7567u bat-kbl-2 fi-cfl-8700k bat-mtlp-8 bat-jsl-1 fi-cfl-guc fi-cfl-8109u fi-kbl-8809g bat-dg2-13 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122799v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_hdmi_inject@inject-audio:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122799v5/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13643 -&gt; Patchwork_122799v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13643: dc4cd6e4e53d46211952fe7c0e408fce3e212993 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7490: 7490<br />
  Patchwork_122799v5: dc4cd6e4e53d46211952fe7c0e408fce3e212993 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a1512e4ab38f drm/i915/xe2lpd: Update mbus on post plane updates<br />
95ba176137a8 drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane<br />
54a8c4429dc1 drm/i915/lnl: Add programming for CDCLK change<br />
1cfd746b85c0 FIXME: drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf<br />
e6bd643715fe drm/i915/lnl: Start using CDCLK through PLL<br />
a88713fc7026 drm/i915/xe2lpd: Add DC state support<br />
a3a743041183 drm/i915/xe2lpd: Add display power well<br />
1f29022f5ef5 drm/i915/lnl: Add CDCLK table<br />
e2fea73b6edb drm/i915/lnl: Add gmbus/ddc support<br />
1a899a446698 drm/i915/xe2lpd: Extend Wa_15010685871<br />
4021c2133859 drm/i915/xe2lpd: Add support for HPD<br />
d9ffb2884399 drm/i915/xe2lpd: Enable odd size and panning for planar yuv<br />
fdd0866ff54f drm/i915/xe2lpd: Read pin assignment from IOM<br />
5360a0f73e66 drm/i915/xe2lpd: Handle port AUX interrupts<br />
8e5fd7b94294 drm/i915/xe2lpd: Re-order DP AUX regs<br />
7ac85cc7520c drm/i915/display: Use _PICK_EVEN_2RANGES() in DP AUX regs<br />
5d11d03ecd91 drm/i915/display: Fix style and conventions for DP AUX regs<br />
fbae14705d90 drm/i915/xe2lpd: Move registers to PICA<br />
d6d6cf7c943e drm/i915/xe2lpd: Move D2D enable/disable<br />
c2bc5e1b4ef3 drm/i915/display: Rename intel_dp-&gt;DP<br />
708d470949be drm/i915/display: Consolidate saved port bits in intel_digital_port<br />
43af5bbfa30f drm/i915/xe2lpd: Register DE_RRMR has been removed<br />
a5ec9d7afd0c drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST<br />
dfff011c0855 drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation<br />
e9cede014192 drm/i915/xe2lpd: Add fake PCH<br />
118eb67567aa drm/i915: Re-order if/else ladder in intel_detect_pch()<br />
c76243995f84 drm/i915/display: Remove FBC capability from fused off pipes<br />
1d52bd792e86 drm/i915/xe2lpd: FBC is now supported on all pipes<br />
e6eaf321ef77 drm/i915/lnl: Add display definitions<br />
3b72b290abf4 drm/i915/xelpdp: Add XE_LPDP_FEATURES</p>

</body>
</html>

--===============1221800816561034420==--
