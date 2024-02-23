Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B4086209E
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Feb 2024 00:26:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5F4110ECEF;
	Fri, 23 Feb 2024 23:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02C8C10ECEE;
 Fri, 23 Feb 2024 23:26:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1425414601398902487=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_series_starting_with_=5B1/3?=
 =?utf-8?q?=5D_drm/i915/bios=3A_bump_expected_child_device_size_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Feb 2024 23:26:12 -0000
Message-ID: <170873077201.264278.1415135308911655015@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240131184841.872487-1-jani.nikula@intel.com>
In-Reply-To: <20240131184841.872487-1-jani.nikula@intel.com>
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

--===============1425414601398902487==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915/bios: bump expected child device size (rev3)
URL   : https://patchwork.freedesktop.org/series/129378/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14330 -> Patchwork_129378v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/index.html

Participating hosts (36 -> 35)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_129378v3 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-cfl-8109u:       [FAIL][1] ([i915#8293]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14330/fi-cfl-8109u/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][5] -> [ABORT][6] ([i915#9662])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14330/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-14:         [PASS][7] -> [INCOMPLETE][8] ([i915#10137])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14330/bat-dg2-14/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/bat-dg2-14/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][9] ([fdo#109271]) +11 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9662]: https://gitlab.freedesktop.org/drm/intel/issues/9662


Build changes
-------------

  * Linux: CI_DRM_14330 -> Patchwork_129378v3

  CI-20190529: 20190529
  CI_DRM_14330: 7291e2e67dff0ff573900266382c9c9248a7dea5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7729: 7729
  Patchwork_129378v3: 7291e2e67dff0ff573900266382c9c9248a7dea5 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f5a23f106b63 drm/i915/bios: abstract child device expected size
b9277c2c3299 drm/i915/bios: abstract child device size check
1b368d99d12f drm/i915/bios: bump expected child device size

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/index.html

--===============1425414601398902487==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/bios: bump expected child device size (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129378/">https://patchwork.freedesktop.org/series/129378/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14330 -&gt; Patchwork_129378v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/index.html</p>
<h2>Participating hosts (36 -&gt; 35)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129378v3 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14330/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/fi-cfl-8109u/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14330/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9662">i915#9662</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14330/bat-dg2-14/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/bat-dg2-14/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10137">i915#10137</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v3/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14330 -&gt; Patchwork_129378v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14330: 7291e2e67dff0ff573900266382c9c9248a7dea5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7729: 7729<br />
  Patchwork_129378v3: 7291e2e67dff0ff573900266382c9c9248a7dea5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f5a23f106b63 drm/i915/bios: abstract child device expected size<br />
b9277c2c3299 drm/i915/bios: abstract child device size check<br />
1b368d99d12f drm/i915/bios: bump expected child device size</p>

</body>
</html>

--===============1425414601398902487==--
