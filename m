Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A5B87CD0B
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 13:10:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04BEE11229E;
	Fri, 15 Mar 2024 12:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AF1911229B;
 Fri, 15 Mar 2024 12:10:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4824524798550154831=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Rename_ICL=5FPO?=
 =?utf-8?q?RT=5FTX=5FDW6_bits_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Mar 2024 12:10:12 -0000
Message-ID: <171050461204.795503.8035373459053357212@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240308072400.28918-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240308072400.28918-1-ville.syrjala@linux.intel.com>
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

--===============4824524798550154831==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Rename ICL_PORT_TX_DW6 bits (rev3)
URL   : https://patchwork.freedesktop.org/series/130899/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14438 -> Patchwork_130899v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/index.html

Participating hosts (38 -> 34)
------------------------------

  Additional (1): fi-apl-guc 
  Missing    (5): bat-dg1-7 bat-kbl-2 fi-snb-2520m fi-blb-e6850 bat-dg2-11 

Known issues
------------

  Here are the changes found in Patchwork_130899v3 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/fi-tgl-1115g4/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/fi-tgl-1115g4/boot.html
    - bat-jsl-1:          [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/bat-jsl-1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][5] ([i915#4613]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-dg2-9:          [PASS][6] -> [ABORT][7] ([i915#10366])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@hangcheck:
    - fi-kbl-8809g:       [PASS][8] -> [INCOMPLETE][9] ([i915#9527])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html
    - bat-rpls-3:         [PASS][10] -> [DMESG-WARN][11] ([i915#5591])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-apl-guc:         NOTRUN -> [SKIP][12] +17 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9527]: https://gitlab.freedesktop.org/drm/intel/issues/9527


Build changes
-------------

  * Linux: CI_DRM_14438 -> Patchwork_130899v3

  CI-20190529: 20190529
  CI_DRM_14438: 601f578c8c069e990adab2f8a6d94c549d7d0fe1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7768: 7768
  Patchwork_130899v3: 601f578c8c069e990adab2f8a6d94c549d7d0fe1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

45d19d37d416 drm/i915: Rename ICL_PORT_TX_DW6 bits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/index.html

--===============4824524798550154831==
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
<tr><td><b>Series:</b></td><td>drm/i915: Rename ICL_PORT_TX_DW6 bits (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130899/">https://patchwork.freedesktop.org/series/130899/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14438 -&gt; Patchwork_130899v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/index.html</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Additional (1): fi-apl-guc <br />
  Missing    (5): bat-dg1-7 bat-kbl-2 fi-snb-2520m fi-blb-e6850 bat-dg2-11 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130899v3 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/fi-tgl-1115g4/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/fi-tgl-1115g4/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9527">i915#9527</a>)</li>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130899v3/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> +17 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14438 -&gt; Patchwork_130899v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14438: 601f578c8c069e990adab2f8a6d94c549d7d0fe1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7768: 7768<br />
  Patchwork_130899v3: 601f578c8c069e990adab2f8a6d94c549d7d0fe1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>45d19d37d416 drm/i915: Rename ICL_PORT_TX_DW6 bits</p>

</body>
</html>

--===============4824524798550154831==--
