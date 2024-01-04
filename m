Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B74823B8E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 05:41:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5123E10E378;
	Thu,  4 Jan 2024 04:41:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DDB810E355;
 Thu,  4 Jan 2024 04:41:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1151604978332009349=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Update_bxt=5Fsanitize=5Fcdc?=
 =?utf-8?q?lk=28=29_for_Xe2=5FLPD?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Date: Thu, 04 Jan 2024 04:41:39 -0000
Message-ID: <170434329931.1840.1711184588365174245@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240104032150.118954-1-gustavo.sousa@intel.com>
In-Reply-To: <20240104032150.118954-1-gustavo.sousa@intel.com>
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

--===============1151604978332009349==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Update bxt_sanitize_cdclk() for Xe2_LPD
URL   : https://patchwork.freedesktop.org/series/128175/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14076 -> Patchwork_128175v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_128175v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_128175v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v1/index.html

Participating hosts (38 -> 17)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_128175v1 prevented too many machines from booting.

  Additional (1): bat-kbl-2 
  Missing    (22): fi-rkl-11600 fi-snb-2520m bat-rpls-3 bat-adls-6 fi-pnv-d510 fi-blb-e6850 fi-skl-6600u fi-bsw-n3050 fi-ilk-650 fi-ivb-3770 fi-elk-e7500 bat-rplp-1 bat-jsl-3 fi-kbl-7567u bat-dg1-7 fi-skl-guc bat-jsl-1 bat-mtlp-6 fi-tgl-1115g4 fi-cfl-guc fi-cfl-8109u bat-dg2-14 

Known issues
------------

  Here are the changes found in Patchwork_128175v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][2] ([fdo#109271]) +36 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [PASS][3] -> [DMESG-FAIL][4] ([i915#9500])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#9500]: https://gitlab.freedesktop.org/drm/intel/issues/9500


Build changes
-------------

  * Linux: CI_DRM_14076 -> Patchwork_128175v1

  CI-20190529: 20190529
  CI_DRM_14076: 6fb23c8c47c3c76c9ea4e62d3e4244eb42a6d081 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7655: ddf7cf40a00caa7d02f3729e1e50f78f102463d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_128175v1: 6fb23c8c47c3c76c9ea4e62d3e4244eb42a6d081 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

828d7c8a65d8 drm/i915/cdclk: Re-use bxt_cdclk_ctl() when sanitizing
bc69f75f43c2 drm/i915/cdclk: Reorder bxt_sanitize_cdclk()
ad0655315b55 drm/i915/cdclk: Extract bxt_cdclk_ctl()
cb932418fd32 drm/i915/xe2lpd: Update bxt_sanitize_cdclk()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v1/index.html

--===============1151604978332009349==
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
<tr><td><b>Series:</b></td><td>Update bxt_sanitize_cdclk() for Xe2_LPD</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128175/">https://patchwork.freedesktop.org/series/128175/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14076 -&gt; Patchwork_128175v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_128175v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_128175v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v1/index.html</p>
<h2>Participating hosts (38 -&gt; 17)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_128175v1 prevented too many machines from booting.</p>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (22): fi-rkl-11600 fi-snb-2520m bat-rpls-3 bat-adls-6 fi-pnv-d510 fi-blb-e6850 fi-skl-6600u fi-bsw-n3050 fi-ilk-650 fi-ivb-3770 fi-elk-e7500 bat-rplp-1 bat-jsl-3 fi-kbl-7567u bat-dg1-7 fi-skl-guc bat-jsl-1 bat-mtlp-6 fi-tgl-1115g4 fi-cfl-guc fi-cfl-8109u bat-dg2-14 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128175v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9500">i915#9500</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14076 -&gt; Patchwork_128175v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14076: 6fb23c8c47c3c76c9ea4e62d3e4244eb42a6d081 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7655: ddf7cf40a00caa7d02f3729e1e50f78f102463d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_128175v1: 6fb23c8c47c3c76c9ea4e62d3e4244eb42a6d081 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>828d7c8a65d8 drm/i915/cdclk: Re-use bxt_cdclk_ctl() when sanitizing<br />
bc69f75f43c2 drm/i915/cdclk: Reorder bxt_sanitize_cdclk()<br />
ad0655315b55 drm/i915/cdclk: Extract bxt_cdclk_ctl()<br />
cb932418fd32 drm/i915/xe2lpd: Update bxt_sanitize_cdclk()</p>

</body>
</html>

--===============1151604978332009349==--
