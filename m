Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 851C83EBAF8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 19:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CE646E8AB;
	Fri, 13 Aug 2021 17:02:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE0A789C9D;
 Fri, 13 Aug 2021 17:02:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B5622A47E1;
 Fri, 13 Aug 2021 17:02:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6474652380445949390=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Aug 2021 17:02:38 -0000
Message-ID: <162887415873.17681.17829390662764784665@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210813151734.1236324-1-jim.cromie@gmail.com>
In-Reply-To: <20210813151734.1236324-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHlu?=
 =?utf-8?q?dbg=3A_add_DEFINE=5FDYNAMIC=5FDEBUG=5FCATEGORIES_and_use_in_DRM?=
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

--===============6474652380445949390==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: dyndbg: add DEFINE_DYNAMIC_DEBUG_CATEGORIES and use in DRM
URL   : https://patchwork.freedesktop.org/series/93683/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10482 -> Patchwork_20820
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/index.html

Known issues
------------

  Here are the changes found in Patchwork_20820 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][1] ([fdo#109315])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][2] ([fdo#109271]) +29 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][3] ([fdo#109315] / [i915#2575]) +16 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][4] ([i915#3718])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][5] ([i915#1888])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][6] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][7] ([i915#1155])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][8] ([i915#579])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][9] ([i915#579])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-bdw-5557u/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][10] ([i915#579]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][11] ([fdo#111827]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][13] ([fdo#109285])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][14] ([i915#1072]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][15] ([i915#3301])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][16] ([i915#3303]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (35 -> 34)
------------------------------

  Additional (2): fi-tgl-1115g4 fi-bdw-5557u 
  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10482 -> Patchwork_20820

  CI-20190529: 20190529
  CI_DRM_10482: 772cc2d9bb24a9f750e3a88c6b2172873830e095 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20820: f36b9555c31206ec867480b1aa71d4d87457d0d9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f36b9555c312 dyndbg: RFC add tracer facility RFC
089e2b7e8515 amdgpu_ucode: reduce number of pr_debug calls
8ded13656ce8 drm_print: add choice to use dynamic debug in drm-debug
cc4308e46704 amdgpu: use DEFINE_DYNAMIC_DEBUG_CATEGORIES to control categorized pr_debugs
d1de5f57f0f1 i915/gvt: use DEFINE_DYNAMIC_DEBUG_CATEGORIES to create "gvt:core:" etc categories
52fe10f828c0 i915/gvt: remove spaces in pr_debug "gvt: core:" etc prefixes
918363f529da dyndbg: add DEFINE_DYNAMIC_DEBUG_CATEGORIES and callbacks
9735d1bd2f6a moduleparam: add data member to struct kernel_param

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/index.html

--===============6474652380445949390==
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
<tr><td><b>Series:</b></td><td>dyndbg: add DEFINE_DYNAMIC_DEBUG_CATEGORIES and use in DRM</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93683/">https://patchwork.freedesktop.org/series/93683/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10482 -&gt; Patchwork_20820</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20820 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-bdw-5557u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10482/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20820/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Additional (2): fi-tgl-1115g4 fi-bdw-5557u <br />
  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10482 -&gt; Patchwork_20820</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10482: 772cc2d9bb24a9f750e3a88c6b2172873830e095 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20820: f36b9555c31206ec867480b1aa71d4d87457d0d9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f36b9555c312 dyndbg: RFC add tracer facility RFC<br />
089e2b7e8515 amdgpu_ucode: reduce number of pr_debug calls<br />
8ded13656ce8 drm_print: add choice to use dynamic debug in drm-debug<br />
cc4308e46704 amdgpu: use DEFINE_DYNAMIC_DEBUG_CATEGORIES to control categorized pr_debugs<br />
d1de5f57f0f1 i915/gvt: use DEFINE_DYNAMIC_DEBUG_CATEGORIES to create "gvt:core:" etc categories<br />
52fe10f828c0 i915/gvt: remove spaces in pr_debug "gvt: core:" etc prefixes<br />
918363f529da dyndbg: add DEFINE_DYNAMIC_DEBUG_CATEGORIES and callbacks<br />
9735d1bd2f6a moduleparam: add data member to struct kernel_param</p>

</body>
</html>

--===============6474652380445949390==--
