Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AB5780380
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 03:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 016A610E2EF;
	Fri, 18 Aug 2023 01:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBA4D10E2EF;
 Fri, 18 Aug 2023 01:49:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B40F5A7DFB;
 Fri, 18 Aug 2023 01:49:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2952215059267867894=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 18 Aug 2023 01:49:02 -0000
Message-ID: <169232334273.12741.14777463117621249811@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230817161456.3857111-1-imre.deak@intel.com>
In-Reply-To: <20230817161456.3857111-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_BW_management_on_shared_display_links?=
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

--===============2952215059267867894==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Improve BW management on shared display links
URL   : https://patchwork.freedesktop.org/series/122589/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13534 -> Patchwork_122589v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (2): fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_122589v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [PASS][1] -> [ABORT][2] ([i915#5122])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][5] ([i915#5334] / [i915#7872])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][6] ([i915#1886] / [i915#7913])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [PASS][7] -> [FAIL][8] ([fdo#103375])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][9] ([fdo#109271]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][10] ([i915#7699]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913


Build changes
-------------

  * Linux: CI_DRM_13534 -> Patchwork_122589v1

  CI-20190529: 20190529
  CI_DRM_13534: 2c5542cb377b2e9e15c1f84a6e78a3d6fca47ea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7443: 953448dbf2e63918a8eced9707f65fc0a19a9c85 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122589v1: 2c5542cb377b2e9e15c1f84a6e78a3d6fca47ea0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

8069a55b8868 drm/i915/dp_mst: Check BW limitations only when all streams are computed
800890e956a2 drm/i915/dp_mst: Improve BW sharing between MST streams
b9f1572b49fe drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
665d48335aab drm/i915/dp_mst: Fix PBN calculation with FEC overhead
54bfdbc5f57c drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
1c549d40f2fa drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
2a9aec3381b1 drm/dp_mst: Add helper to determine if an MST port is downstream of another port
13020ea3d646 drm/dp_mst: Add a way to calculate PBN values with FEC overhead
46faa49e6bb9 drm/dp_mst: Fix fractional bpp scaling in drm_dp_calc_pbn_mode()
bfbf761d450f drm/i915/fdi: Improve FDI BW sharing between pipe B and C
924e8e5a72aa drm/i915: Factor out a helper to check/compute all the CRTC states
a5bd9fb2d19c drm/i915: Add helper to modeset a set of pipes
0c20239cc145 drm/i915/dp: Limit the output link bpp in DSC mode
c176068a0c48 drm/i915/dp: Update the link bpp limits for DSC mode
453e785e3f91 drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
a524caa1992f drm/i915/dp: Track the pipe and link bpp limits separately
d9abbb5a4074 drm/i915/dp: Factor out helpers to compute the link limits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/index.html

--===============2952215059267867894==
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
<tr><td><b>Series:</b></td><td>drm/i915: Improve BW management on shared display links</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122589/">https://patchwork.freedesktop.org/series/122589/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13534 -&gt; Patchwork_122589v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (2): fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122589v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13534 -&gt; Patchwork_122589v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13534: 2c5542cb377b2e9e15c1f84a6e78a3d6fca47ea0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7443: 953448dbf2e63918a8eced9707f65fc0a19a9c85 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122589v1: 2c5542cb377b2e9e15c1f84a6e78a3d6fca47ea0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>8069a55b8868 drm/i915/dp_mst: Check BW limitations only when all streams are computed<br />
800890e956a2 drm/i915/dp_mst: Improve BW sharing between MST streams<br />
b9f1572b49fe drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms<br />
665d48335aab drm/i915/dp_mst: Fix PBN calculation with FEC overhead<br />
54bfdbc5f57c drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations<br />
1c549d40f2fa drm/dp_mst: Factor out a helper to check the atomic state of a topology manager<br />
2a9aec3381b1 drm/dp_mst: Add helper to determine if an MST port is downstream of another port<br />
13020ea3d646 drm/dp_mst: Add a way to calculate PBN values with FEC overhead<br />
46faa49e6bb9 drm/dp_mst: Fix fractional bpp scaling in drm_dp_calc_pbn_mode()<br />
bfbf761d450f drm/i915/fdi: Improve FDI BW sharing between pipe B and C<br />
924e8e5a72aa drm/i915: Factor out a helper to check/compute all the CRTC states<br />
a5bd9fb2d19c drm/i915: Add helper to modeset a set of pipes<br />
0c20239cc145 drm/i915/dp: Limit the output link bpp in DSC mode<br />
c176068a0c48 drm/i915/dp: Update the link bpp limits for DSC mode<br />
453e785e3f91 drm/i915/dp: Skip computing a non-DSC link config if DSC is needed<br />
a524caa1992f drm/i915/dp: Track the pipe and link bpp limits separately<br />
d9abbb5a4074 drm/i915/dp: Factor out helpers to compute the link limits</p>

</body>
</html>

--===============2952215059267867894==--
