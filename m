Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F35B39F218
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 11:15:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D506EB56;
	Tue,  8 Jun 2021 09:15:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FC9E6EB56;
 Tue,  8 Jun 2021 09:15:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48696A9932;
 Tue,  8 Jun 2021 09:15:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 08 Jun 2021 09:15:33 -0000
Message-ID: <162314373329.419.10941836160992767887@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210608073603.2408-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210608073603.2408-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_DDI_buf_trans_cleaup_and_fixes_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============0682908032=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0682908032==
Content-Type: multipart/alternative;
 boundary="===============6742395335875223846=="

--===============6742395335875223846==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: DDI buf trans cleaup and fixes (rev4)
URL   : https://patchwork.freedesktop.org/series/89311/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10188 -> Patchwork_20306
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/index.html

Known issues
------------

  Here are the changes found in Patchwork_20306 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@execlists:
    - fi-tgl-u2:          NOTRUN -> [INCOMPLETE][2] ([i915#3462])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][3] -> [INCOMPLETE][4] ([i915#2782])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10188/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-u2:          NOTRUN -> [SKIP][5] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-u2:          NOTRUN -> [SKIP][6] ([fdo#109285])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-u2:          NOTRUN -> [SKIP][7] ([i915#3301])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-tgl-u2:          NOTRUN -> [FAIL][8] ([i915#1436] / [i915#2966])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][9] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][10] ([i915#1436] / [i915#3363])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10188/fi-kbl-8809g/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][11] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][12] ([i915#1436] / [i915#3363])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10188/fi-kbl-soraka/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][13] ([i915#1436] / [i915#3363]) -> [FAIL][14] ([i915#1436] / [i915#2426] / [i915#3363])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10188/fi-kbl-guc/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-kbl-guc/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][15] ([i915#3363]) -> [FAIL][16] ([i915#2426] / [i915#3363])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10188/fi-cfl-guc/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][17] ([i915#1436] / [i915#3363]) -> [FAIL][18] ([i915#1436] / [i915#2426] / [i915#3363])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10188/fi-skl-6700k2/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3276]: https://gitlab.freedesktop.org/drm/intel/issues/3276
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3542]: https://gitlab.freedesktop.org/drm/intel/issues/3542
  [i915#3544]: https://gitlab.freedesktop.org/drm/intel/issues/3544
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (46 -> 43)
------------------------------

  Additional (2): fi-rkl-11500t fi-tgl-u2 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10188 -> Patchwork_20306

  CI-20190529: 20190529
  CI_DRM_10188: 8663aa75dada3153f7d48c8bc727da0444f98de2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6099: adb9ee4ed7206725cfe3589bf49f47f9dcf661f2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20306: 80e1204635e741f8e9294bcaaab6132581e62640 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_20306/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  MODPOST modules-only.symvers
ERROR: modpost: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: modpost: "__divdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
scripts/Makefile.modpost:150: recipe for target 'modules-only.symvers' failed
make[1]: *** [modules-only.symvers] Error 1
make[1]: *** Deleting file 'modules-only.symvers'
Makefile:1759: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

80e1204635e7 drm/i915: Add the missing adls vswing tables
ebb8659f2fe4 drm/i915: Nuke buf_trans hdmi functions
7c13bdf62ebe drm/i915: Clean up jsl/ehl buf trans functions
5e5a65a61db3 drm/i915: Fix ehl edp hbr2 vswing table
5b87954c2ede drm/i915: Deduplicate icl DP HBR2 vs. eDP HBR3 table
57bf0c2042ff drm/i915: Fix dg1 buf trans tables
a024fc673e7d drm/i915: Introduce rkl_get_combo_buf_trans()
9e161e21bd23 drm/i915: Clean up hsw/bdw/skl/kbl buf trans funcs
7dc2a2bae0f1 drm/i915: Introduce encoder->get_buf_trans()
a5fa7896aa86 drm/i915: Store the HDMI default entry in the bug trans struct
edb3783fae3c drm/i915; Return the whole buf_trans struct from get_buf_trans()
a7a82eabdb38 drm/i915: Introduce intel_get_buf_trans()
96b3ebba8a49 drm/i915: Wrap the buf trans tables into a struct
be978537cd1a drm/i915: Rename dkl phy buf trans tables
05c03e8ca7cf drm/i915: Wrap the platform specific buf trans structs into a union
92cd92c06299 drm/i915: Introduce hsw_get_buf_trans()
52f3229452fb drm/i915: s/intel/hsw/ for hsw/bdw/skl buf trans

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/index.html

--===============6742395335875223846==
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
<tr><td><b>Series:</b></td><td>drm/i915: DDI buf trans cleaup and fixes (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89311/">https://patchwork.freedesktop.org/series/89311/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10188 -&gt; Patchwork_20306</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20306 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10188/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10188/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10188/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10188/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10188/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10188/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 43)</h2>
<p>Additional (2): fi-rkl-11500t fi-tgl-u2 <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10188 -&gt; Patchwork_20306</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10188: 8663aa75dada3153f7d48c8bc727da0444f98de2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6099: adb9ee4ed7206725cfe3589bf49f47f9dcf661f2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20306: 80e1204635e741f8e9294bcaaab6132581e62640 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Kernel 32bit build ==</p>
<p>Warning: Kernel 32bit buildtest failed:<br />
https://intel-gfx-ci.01.org/Patchwork_20306/build_32bit.log</p>
<p>CALL    scripts/checksyscalls.sh<br />
  CALL    scripts/atomic/check-atomics.sh<br />
  CHK     include/generated/compile.h<br />
Kernel: arch/x86/boot/bzImage is ready  (#1)<br />
  MODPOST modules-only.symvers<br />
ERROR: modpost: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!<br />
ERROR: modpost: "__divdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!<br />
scripts/Makefile.modpost:150: recipe for target 'modules-only.symvers' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">1</a>: <strong><em> [modules-only.symvers] Error 1<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20306/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">1</a>: </em></strong> Deleting file 'modules-only.symvers'<br />
Makefile:1759: recipe for target 'modules' failed<br />
make: *** [modules] Error 2</p>
<p>== Linux commits ==</p>
<p>80e1204635e7 drm/i915: Add the missing adls vswing tables<br />
ebb8659f2fe4 drm/i915: Nuke buf_trans hdmi functions<br />
7c13bdf62ebe drm/i915: Clean up jsl/ehl buf trans functions<br />
5e5a65a61db3 drm/i915: Fix ehl edp hbr2 vswing table<br />
5b87954c2ede drm/i915: Deduplicate icl DP HBR2 vs. eDP HBR3 table<br />
57bf0c2042ff drm/i915: Fix dg1 buf trans tables<br />
a024fc673e7d drm/i915: Introduce rkl_get_combo_buf_trans()<br />
9e161e21bd23 drm/i915: Clean up hsw/bdw/skl/kbl buf trans funcs<br />
7dc2a2bae0f1 drm/i915: Introduce encoder-&gt;get_buf_trans()<br />
a5fa7896aa86 drm/i915: Store the HDMI default entry in the bug trans struct<br />
edb3783fae3c drm/i915; Return the whole buf_trans struct from get_buf_trans()<br />
a7a82eabdb38 drm/i915: Introduce intel_get_buf_trans()<br />
96b3ebba8a49 drm/i915: Wrap the buf trans tables into a struct<br />
be978537cd1a drm/i915: Rename dkl phy buf trans tables<br />
05c03e8ca7cf drm/i915: Wrap the platform specific buf trans structs into a union<br />
92cd92c06299 drm/i915: Introduce hsw_get_buf_trans()<br />
52f3229452fb drm/i915: s/intel/hsw/ for hsw/bdw/skl buf trans</p>

</body>
</html>

--===============6742395335875223846==--

--===============0682908032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0682908032==--
