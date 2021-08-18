Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DCB3F0B82
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 21:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42EEB6E8BC;
	Wed, 18 Aug 2021 19:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4AC9B6E8BB;
 Wed, 18 Aug 2021 19:07:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F545A882E;
 Wed, 18 Aug 2021 19:07:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3133716685203596530=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Aug 2021 19:07:47 -0000
Message-ID: <162931366723.16673.8160187180776842206@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210818171203.237687-1-matthew.auld@intel.com>
In-Reply-To: <20210818171203.237687-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_ensure_we_release_the_intel=5Fmemory=5Fregion?=
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

--===============3133716685203596530==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ttm: ensure we release the intel_memory_region
URL   : https://patchwork.freedesktop.org/series/93791/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10496 -> Patchwork_20848
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20848 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20848, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20848:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html

  * igt@kms_addfb_basic@too-wide:
    - fi-tgl-1115g4:      NOTRUN -> [DMESG-WARN][2] +89 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html

  
Known issues
------------

  Here are the changes found in Patchwork_20848 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-1115g4:      NOTRUN -> [DMESG-WARN][4] ([i915#1982])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][5] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][6] ([i915#1155])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][7] ([fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][8] ([fdo#109285])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][9] ([i915#1072]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][10] ([i915#3301])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][11] ([i915#1602] / [i915#2029])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-bdw-5557u/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][12] ([i915#2722] / [i915#3834])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3834]: https://gitlab.freedesktop.org/drm/intel/issues/3834


Participating hosts (34 -> 34)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (1): fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_10496 -> Patchwork_20848

  CI-20190529: 20190529
  CI_DRM_10496: e4f0d7fe9eeff06828925fc08a58a0084a205e50 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20848: fa8be4d952ec47c853afa2d424d137abe8584d5e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fa8be4d952ec drm/i915/ttm: ensure we release the intel_memory_region

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/index.html

--===============3133716685203596530==
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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: ensure we release the intel_memory_region</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93791/">https://patchwork.freedesktop.org/series/93791/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10496 -&gt; Patchwork_20848</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20848 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20848, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20848:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-wide:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html">DMESG-WARN</a> +89 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20848 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20848/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3834">i915#3834</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (34 -&gt; 34)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (1): fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10496 -&gt; Patchwork_20848</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10496: e4f0d7fe9eeff06828925fc08a58a0084a205e50 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20848: fa8be4d952ec47c853afa2d424d137abe8584d5e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fa8be4d952ec drm/i915/ttm: ensure we release the intel_memory_region</p>

</body>
</html>

--===============3133716685203596530==--
