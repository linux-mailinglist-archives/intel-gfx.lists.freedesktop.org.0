Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FE088631B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 23:14:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C75151121C2;
	Thu, 21 Mar 2024 22:14:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCBC61121C2;
 Thu, 21 Mar 2024 22:14:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5157335283221929441=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/bios=3A_Pimp_some_?=
 =?utf-8?q?VBT_definitions?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Mar 2024 22:14:15 -0000
Message-ID: <171105925590.940819.12701000656987670352@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240321161806.31714-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240321161806.31714-1-ville.syrjala@linux.intel.com>
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

--===============5157335283221929441==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bios: Pimp some VBT definitions
URL   : https://patchwork.freedesktop.org/series/131441/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14464 -> Patchwork_131441v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131441v1/index.html

Participating hosts (40 -> 37)
------------------------------

  Missing    (3): bat-mtlp-8 bat-dg1-7 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_131441v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-tgl-1115g4/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131441v1/fi-tgl-1115g4/boot.html
    - bat-jsl-1:          [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-jsl-1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131441v1/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-rpls-3:         [PASS][5] -> [DMESG-WARN][6] ([i915#5591])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131441v1/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-dg2-14:         [ABORT][7] ([i915#10366]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131441v1/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html

  
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14464 -> Patchwork_131441v1

  CI-20190529: 20190529
  CI_DRM_14464: ad4a10c6d0e21df4bd830c20c96b795ae2d03962 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7775: 0ee4074685c1e184f2d3612ea6eb4d126f9a2e23 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131441v1: ad4a10c6d0e21df4bd830c20c96b795ae2d03962 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

25fbf709a77e drm/i915/bios: Pimp the VBT backlight data BDB version comments
324e269c5eaa drm/i915/bios: Define the (obsolete) backlight i2c VBT stuff
c1afa0082eef drm/i915/bios: Add the old DPST field into VBT LFP power block
21254df883a6 drm/i915/bios: Update VBT driver feature block version numbers
e088ada72074 drm/i915/bios: s/dpfs/dfps/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131441v1/index.html

--===============5157335283221929441==
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
<tr><td><b>Series:</b></td><td>drm/i915/bios: Pimp some VBT definitions</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131441/">https://patchwork.freedesktop.org/series/131441/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131441v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131441v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14464 -&gt; Patchwork_131441v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131441v1/index.html</p>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Missing    (3): bat-mtlp-8 bat-dg1-7 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131441v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-tgl-1115g4/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131441v1/fi-tgl-1115g4/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131441v1/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131441v1/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131441v1/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14464 -&gt; Patchwork_131441v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14464: ad4a10c6d0e21df4bd830c20c96b795ae2d03962 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7775: 0ee4074685c1e184f2d3612ea6eb4d126f9a2e23 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131441v1: ad4a10c6d0e21df4bd830c20c96b795ae2d03962 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>25fbf709a77e drm/i915/bios: Pimp the VBT backlight data BDB version comments<br />
324e269c5eaa drm/i915/bios: Define the (obsolete) backlight i2c VBT stuff<br />
c1afa0082eef drm/i915/bios: Add the old DPST field into VBT LFP power block<br />
21254df883a6 drm/i915/bios: Update VBT driver feature block version numbers<br />
e088ada72074 drm/i915/bios: s/dpfs/dfps/</p>

</body>
</html>

--===============5157335283221929441==--
