Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A5D49D60D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 00:14:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2938710EC8C;
	Wed, 26 Jan 2022 23:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E65810EC8B;
 Wed, 26 Jan 2022 23:14:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06E95A0078;
 Wed, 26 Jan 2022 23:14:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1281766191635090802=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 26 Jan 2022 23:14:09 -0000
Message-ID: <164323884999.25402.12535155984968870749@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220126195304.8262-1-manasi.d.navare@intel.com>
In-Reply-To: <20220126195304.8262-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/vrr=3A_Reset_VRR_capable_property_on_a_long_hpd_?=
 =?utf-8?b?KHJldjIp?=
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

--===============1281766191635090802==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/vrr: Reset VRR capable property on a long hpd (rev2)
URL   : https://patchwork.freedesktop.org/series/98801/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11147 -> Patchwork_22115
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22115 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22115, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22115/index.html

Participating hosts (48 -> 16)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_22115 prevented too many machines from booting.

  Additional (1): bat-adls-5 
  Missing    (33): fi-kbl-soraka fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-snb-2520m fi-pnv-d510 fi-skl-6600u fi-snb-2600 fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-glk-dsi fi-ilk-650 fi-kbl-7500u fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22115 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [PASS][1] -> [DMESG-FAIL][2] ([i915#4494])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11147/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22115/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - {fi-jsl-1}:         [DMESG-FAIL][3] ([i915#1886]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11147/fi-jsl-1/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22115/fi-jsl-1/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898


Build changes
-------------

  * Linux: CI_DRM_11147 -> Patchwork_22115

  CI-20190529: 20190529
  CI_DRM_11147: ad57bf1ff13e1c4462f947398fbfb861f1b2e345 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6335: 2b30115edd692b60d16cb10375730a87f51f0e37 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22115: 071c4ebbb036b0f740a0a3b497efb2ad50588e54 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

071c4ebbb036 drm/i915/display/vrr: Reset VRR capable property on a long hpd

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22115/index.html

--===============1281766191635090802==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/vrr: Reset VRR capable property on a long hpd (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98801/">https://patchwork.freedesktop.org/series/98801/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22115/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22115/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11147 -&gt; Patchwork_22115</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22115 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22115, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22115/index.html</p>
<h2>Participating hosts (48 -&gt; 16)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_22115 prevented too many machines from booting.</p>
<p>Additional (1): bat-adls-5 <br />
  Missing    (33): fi-kbl-soraka fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-snb-2520m fi-pnv-d510 fi-skl-6600u fi-snb-2600 fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-glk-dsi fi-ilk-650 fi-kbl-7500u fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22115 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11147/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22115/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11147/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22115/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11147 -&gt; Patchwork_22115</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11147: ad57bf1ff13e1c4462f947398fbfb861f1b2e345 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6335: 2b30115edd692b60d16cb10375730a87f51f0e37 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22115: 071c4ebbb036b0f740a0a3b497efb2ad50588e54 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>071c4ebbb036 drm/i915/display/vrr: Reset VRR capable property on a long hpd</p>

</body>
</html>

--===============1281766191635090802==--
