Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1144B13BD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 18:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60BA810E8A8;
	Thu, 10 Feb 2022 17:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A7AAA10E8A8;
 Thu, 10 Feb 2022 17:01:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3505A0BCB;
 Thu, 10 Feb 2022 17:01:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2250958764099445554=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 10 Feb 2022 17:01:20 -0000
Message-ID: <164451248063.24636.4876535458075421992@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1644507885.git.jani.nikula@intel.com>
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_drm=5Fi915=2Eh_cleanup?=
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

--===============2250958764099445554==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: drm_i915.h cleanup
URL   : https://patchwork.freedesktop.org/series/99979/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11214 -> Patchwork_22241
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/index.html

Participating hosts (45 -> 41)
------------------------------

  Additional (1): fi-adl-ddr4 
  Missing    (5): fi-hsw-4200u fi-bsw-cyan fi-apl-guc fi-ctg-p8600 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22241 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-hsw-4770/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-skl-6600u:       NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [PASS][3] -> [DMESG-FAIL][4] ([i915#3987])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][5] -> [DMESG-FAIL][6] ([i915#5026])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][7] ([i915#2426] / [i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-bdw-5557u/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][8] ([fdo#109271] / [i915#2403] / [i915#2426] / [i915#4312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-blb-e6850/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][9] ([i915#4785]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-skl-6600u:       [SKIP][11] ([fdo#109271]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/fi-skl-6600u/igt@i915_selftest@live@sanitycheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-skl-6600u/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - {bat-adlp-6}:       [DMESG-WARN][13] ([i915#5068]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/bat-adlp-6/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/bat-adlp-6/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3138]: https://gitlab.freedesktop.org/drm/intel/issues/3138
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#5026]: https://gitlab.freedesktop.org/drm/intel/issues/5026
  [i915#5068]: https://gitlab.freedesktop.org/drm/intel/issues/5068


Build changes
-------------

  * Linux: CI_DRM_11214 -> Patchwork_22241

  CI-20190529: 20190529
  CI_DRM_11214: b9ddf3cdcb94017765655d8d31adc1bb70b11046 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6342: 1bd167a3af9e8f6168ac89c64c64b929694d9be7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22241: 87ebd22e92626dd1f4961891c249525601dbf7ef @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

87ebd22e9262 drm/i915: fix drm_i915.h include grouping and sorting
93ece4d15229 drm/i915: axe lots of unnecessary includes from i915_drv.h
f23b4aa08e52 drm/i915: include some drm headers only where needed
77dc444c0e4e drm/i915: include shmem_fs.h only where needed
7130b228f332 drm/i915: don't include drm_cache.h in i915_drv.h
7ae42d3f0003 drm/i915: split out i915_file_private.h from i915_drv.h
88223875cb87 drm/i915: move i915_reset_count()/i915_reset_engine_count() out of i915_drv.h
abc075a2bd16 drm/i915: move i915_gem_vm_lookup() where it's used
615db0e2922f drm/i915: move i915_cache_level_str() static in i915_debugfs.c
08e14a541597 drm/i915: split out gem/i915_gem_domain.h from i915_drv.h
d530ee1287c2 drm/i915: split out gem/i915_gem_create.h from i915_drv.h
80fa6e91fdb3 drm/i915: split out gem/i915_gem_dmabuf.h from i915_drv.h
59b695819bdb drm/i915: remove leftover i915_gem_pm.h declarations from i915_drv.h
2e49d59d1b68 drm/i915: split out i915_gem_internal.h from i915_drv.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/index.html

--===============2250958764099445554==
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
<tr><td><b>Series:</b></td><td>drm/i915: drm_i915.h cleanup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99979/">https://patchwork.freedesktop.org/series/99979/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11214 -&gt; Patchwork_22241</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/index.html</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Additional (1): fi-adl-ddr4 <br />
  Missing    (5): fi-hsw-4200u fi-bsw-cyan fi-apl-guc fi-ctg-p8600 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22241 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-hsw-4770/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3987">i915#3987</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5026">i915#5026</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/fi-skl-6600u/igt@i915_selftest@live@sanitycheck.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/fi-skl-6600u/igt@i915_selftest@live@sanitycheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/bat-adlp-6/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5068">i915#5068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22241/bat-adlp-6/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11214 -&gt; Patchwork_22241</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11214: b9ddf3cdcb94017765655d8d31adc1bb70b11046 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6342: 1bd167a3af9e8f6168ac89c64c64b929694d9be7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22241: 87ebd22e92626dd1f4961891c249525601dbf7ef @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>87ebd22e9262 drm/i915: fix drm_i915.h include grouping and sorting<br />
93ece4d15229 drm/i915: axe lots of unnecessary includes from i915_drv.h<br />
f23b4aa08e52 drm/i915: include some drm headers only where needed<br />
77dc444c0e4e drm/i915: include shmem_fs.h only where needed<br />
7130b228f332 drm/i915: don't include drm_cache.h in i915_drv.h<br />
7ae42d3f0003 drm/i915: split out i915_file_private.h from i915_drv.h<br />
88223875cb87 drm/i915: move i915_reset_count()/i915_reset_engine_count() out of i915_drv.h<br />
abc075a2bd16 drm/i915: move i915_gem_vm_lookup() where it's used<br />
615db0e2922f drm/i915: move i915_cache_level_str() static in i915_debugfs.c<br />
08e14a541597 drm/i915: split out gem/i915_gem_domain.h from i915_drv.h<br />
d530ee1287c2 drm/i915: split out gem/i915_gem_create.h from i915_drv.h<br />
80fa6e91fdb3 drm/i915: split out gem/i915_gem_dmabuf.h from i915_drv.h<br />
59b695819bdb drm/i915: remove leftover i915_gem_pm.h declarations from i915_drv.h<br />
2e49d59d1b68 drm/i915: split out i915_gem_internal.h from i915_drv.h</p>

</body>
</html>

--===============2250958764099445554==--
