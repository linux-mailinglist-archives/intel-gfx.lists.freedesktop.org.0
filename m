Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 606893F64B5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 19:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A8B8898C8;
	Tue, 24 Aug 2021 17:06:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1F41898C7;
 Tue, 24 Aug 2021 17:06:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 99CACA0118;
 Tue, 24 Aug 2021 17:06:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1937243744888395002=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Aug 2021 17:06:37 -0000
Message-ID: <162982479762.27154.18117672008289033002@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1629811722.git.jani.nikula@intel.com>
In-Reply-To: <cover.1629811722.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/bios=3A_remove_vbt_ddi=5Fport=5Finfo_caching?=
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

--===============1937243744888395002==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bios: remove vbt ddi_port_info caching
URL   : https://patchwork.freedesktop.org/series/93957/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10514 -> Patchwork_20878
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20878 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20878, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20878:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-snb-2520m:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-snb-2520m/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-snb-2520m/boot.html
    - fi-ilk-650:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-ilk-650/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-ilk-650/boot.html
    - fi-elk-e7500:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-elk-e7500/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-elk-e7500/boot.html
    - fi-ivb-3770:        [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-ivb-3770/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-ivb-3770/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_20878 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-tgl-1115g4:      [PASS][9] -> [DMESG-WARN][10] ([i915#1385] / [i915#4002])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-tgl-1115g4/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-tgl-1115g4/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [PASS][11] -> [DMESG-FAIL][12] ([i915#3928])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][13] ([i915#3928])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-rkl-guc/igt@runner@aborted.html

  
#### Warnings ####

  * igt@kms_psr@primary_page_flip:
    - fi-tgl-1115g4:      [SKIP][14] ([i915#1072]) -> [SKIP][15] ([i915#1072] / [i915#1385])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1385]: https://gitlab.freedesktop.org/drm/intel/issues/1385
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [i915#4002]: https://gitlab.freedesktop.org/drm/intel/issues/4002


Participating hosts (40 -> 34)
------------------------------

  Missing    (6): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10514 -> Patchwork_20878

  CI-20190529: 20190529
  CI_DRM_10514: cceaf272e7176ed1eeaaf548056efb1c25533cae @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6184: 84f9bbde1e6156c8b978613d9c85c9043fd3180c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20878: 9e4d240f4472e25eb77ebee1bd0dc65432c38489 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9e4d240f4472 drm/i915/bios: get rid of vbt ddi_port_info
356bf413ae7b drm/i915/bios: use ddc pin directly from child data
5724045c5163 drm/i915/bios: move ddc pin mapping code next to ddc pin sanitize
d1d79de86edf drm/i915/bios: use alternate aux channel directly from child data
c13124605d17 drm/i915/bios: use dp max link rate directly from child data
d1719ebad2f9 drm/i915/bios: use max tmds clock directly from child data
b95ad462eb0e drm/i915/bios: use hdmi level shift directly from child data

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/index.html

--===============1937243744888395002==
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
<tr><td><b>Series:</b></td><td>drm/i915/bios: remove vbt ddi_port_info caching</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93957/">https://patchwork.freedesktop.org/series/93957/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10514 -&gt; Patchwork_20878</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20878 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20878, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20878:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-snb-2520m/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-snb-2520m/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-ilk-650/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-ilk-650/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-elk-e7500/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-elk-e7500/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-ivb-3770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-ivb-3770/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20878 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-tgl-1115g4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-tgl-1115g4/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1385">i915#1385</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@primary_page_flip:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10514/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20878/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1385">i915#1385</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 34)</h2>
<p>Missing    (6): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10514 -&gt; Patchwork_20878</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10514: cceaf272e7176ed1eeaaf548056efb1c25533cae @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6184: 84f9bbde1e6156c8b978613d9c85c9043fd3180c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20878: 9e4d240f4472e25eb77ebee1bd0dc65432c38489 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9e4d240f4472 drm/i915/bios: get rid of vbt ddi_port_info<br />
356bf413ae7b drm/i915/bios: use ddc pin directly from child data<br />
5724045c5163 drm/i915/bios: move ddc pin mapping code next to ddc pin sanitize<br />
d1d79de86edf drm/i915/bios: use alternate aux channel directly from child data<br />
c13124605d17 drm/i915/bios: use dp max link rate directly from child data<br />
d1719ebad2f9 drm/i915/bios: use max tmds clock directly from child data<br />
b95ad462eb0e drm/i915/bios: use hdmi level shift directly from child data</p>

</body>
</html>

--===============1937243744888395002==--
