Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B685A04C8
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 01:40:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C55211334C;
	Wed, 24 Aug 2022 23:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D2A32112950;
 Wed, 24 Aug 2022 23:39:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7226FA882E;
 Wed, 24 Aug 2022 23:39:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7928673870510669287=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 24 Aug 2022 23:39:01 -0000
Message-ID: <166138434143.9873.5226972182113063082@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1661346845.git.jani.nikula@intel.com>
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_add_display_sub-struct_to_drm=5Fi915=5Fprivate_=28rev2?=
 =?utf-8?q?=29?=
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

--===============7928673870510669287==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: add display sub-struct to drm_i915_private (rev2)
URL   : https://patchwork.freedesktop.org/series/107170/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12022 -> Patchwork_107170v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): bat-dg2-9 bat-jsl-3 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107170v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_engines:
    - {bat-dg2-10}:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/bat-dg2-10/igt@i915_selftest@live@gt_engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_107170v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        [PASS][2] -> [DMESG-FAIL][3] ([i915#4528])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-pnv-d510/igt@i915_selftest@live@gem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][4] -> [INCOMPLETE][5] ([i915#3303] / [i915#4785])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][6] ([i915#4817] / [i915#6598])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-hsw-4770/igt@i915_suspend@basic-s3-without-i915.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#2403] / [i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-pnv-d510/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][8] ([fdo#109271] / [i915#4312] / [i915#6246])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {bat-dg2-10}:       [INCOMPLETE][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg2-10/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/bat-dg2-10/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][11] ([i915#4785]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - {fi-jsl-1}:         [INCOMPLETE][13] ([i915#5134]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-5:          [DMESG-FAIL][15] ([i915#4494] / [i915#4957]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-elk-e7500:       [INCOMPLETE][17] ([i915#6598] / [i915#6601] / [i915#6648]) -> [INCOMPLETE][18] ([i915#6598] / [i915#6648])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5134]: https://gitlab.freedesktop.org/drm/intel/issues/5134
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6601]: https://gitlab.freedesktop.org/drm/intel/issues/6601
  [i915#6642]: https://gitlab.freedesktop.org/drm/intel/issues/6642
  [i915#6648]: https://gitlab.freedesktop.org/drm/intel/issues/6648


Build changes
-------------

  * Linux: CI_DRM_12022 -> Patchwork_107170v2

  CI-20190529: 20190529
  CI_DRM_12022: 7d700aafd2532afd10b5bd0d1fd76eb3a0d6610a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107170v2: 7d700aafd2532afd10b5bd0d1fd76eb3a0d6610a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

12b413e7b7f5 drm/i915: move and group properties under display.properties
839094fecb0b drm/i915: move atomic_helper under display sub-struct
2a6159e24a43 drm/i915: move quirks under display sub-struct
12ac4a7df853 drm/i915/quirks: abstract quirks further by making quirk ids an enum
c3cc0d97fdf3 drm/i915/quirks: abstract checking for display quirks
4ca466d1ac2d drm/i915: split gem quirks from display quirks
164a1a3dea4b drm/i915: move and group modeset_wq and flip_wq under display.wq
04c199fbb4e6 drm/i915: move dbuf under display sub-struct
3d7ef009b985 drm/i915: move INTEL_FRONTBUFFER_* macros to intel_frontbuffer.h
22a2eb2405bb drm/i915: move fb_tracking under display sub-struct
e7f9757b4603 drm/i915: move and group fdi members under display.fdi
23712bfa5952 drm/i915: move and group power related members under display.power
db9262abc048 drm/i915/vrr: drop window2_delay member from i915
8fdf54a31898 drm/i915: move fbc to display.fbc
fa11ca506b9a drm/i915: move vbt to display.vbt
bf9338f3e18b drm/i915: move mipi_mmio_base to display.dsi
9c36ca0cf95a drm/i915: move backlight to display.backlight
8a119bc72545 drm/i915: move and group cdclk under display.cdclk
9f4bd9d2a97c drm/i915: move opregion to display.opregion
982102c645fe drm/i915: move and group max_bw and bw_obj under display.bw
d18df7ed56ac drm/i915: move and group sagv under display.sagv
f03f1d347023 drm/i915: move overlay to display.overlay
ba19b4cb8db6 drm/i915: move hotplug to display.hotplug
5bc5c67fe059 drm/i915: move and group hdcp under display.hdcp
d6b9203cf903 drm/i915: move wm to display.wm
6e32bc612229 drm/i915: move and group fbdev under display.fbdev
a80dd2d7e23b drm/i915: move dpll under display.dpll
71216a276fcd drm/i915: move and split audio under display.audio and display.funcs
15433cccd651 drm/i915: move dmc to display.dmc
e3ab5532f6df drm/i915: move and group pps members under display.pps
94426157ce7f drm/i915: move and group gmbus members under display.gmbus
19d5163f95b9 drm/i915: move color_funcs to display.funcs
5458d61a5b6b drm/i915: move fdi_funcs to display.funcs
a46024b51bcd drm/i915: move wm_disp funcs to display.funcs
5b545ebb8ffc drm/i915: move hotplug_funcs to display.funcs
71603c7393bb drm/i915: move dpll_funcs to display.funcs
674c5d6e47cd drm/i915: move cdclk_funcs to display.funcs
3d89f0a26142 drm/i915: add display sub-struct to drm_i915_private

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/index.html

--===============7928673870510669287==
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
<tr><td><b>Series:</b></td><td>drm/i915: add display sub-struct to drm_i915_private (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107170/">https://patchwork.freedesktop.org/series/107170/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12022 -&gt; Patchwork_107170v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): bat-dg2-9 bat-jsl-3 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107170v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_engines:<ul>
<li>{bat-dg2-10}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/bat-dg2-10/igt@i915_selftest@live@gt_engines.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107170v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-pnv-d510/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-hsw-4770/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-dg2-10}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg2-10/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/bat-dg2-10/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5134">i915#5134</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6601">i915#6601</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6648">i915#6648</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107170v2/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6648">i915#6648</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12022 -&gt; Patchwork_107170v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12022: 7d700aafd2532afd10b5bd0d1fd76eb3a0d6610a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107170v2: 7d700aafd2532afd10b5bd0d1fd76eb3a0d6610a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>12b413e7b7f5 drm/i915: move and group properties under display.properties<br />
839094fecb0b drm/i915: move atomic_helper under display sub-struct<br />
2a6159e24a43 drm/i915: move quirks under display sub-struct<br />
12ac4a7df853 drm/i915/quirks: abstract quirks further by making quirk ids an enum<br />
c3cc0d97fdf3 drm/i915/quirks: abstract checking for display quirks<br />
4ca466d1ac2d drm/i915: split gem quirks from display quirks<br />
164a1a3dea4b drm/i915: move and group modeset_wq and flip_wq under display.wq<br />
04c199fbb4e6 drm/i915: move dbuf under display sub-struct<br />
3d7ef009b985 drm/i915: move INTEL_FRONTBUFFER_* macros to intel_frontbuffer.h<br />
22a2eb2405bb drm/i915: move fb_tracking under display sub-struct<br />
e7f9757b4603 drm/i915: move and group fdi members under display.fdi<br />
23712bfa5952 drm/i915: move and group power related members under display.power<br />
db9262abc048 drm/i915/vrr: drop window2_delay member from i915<br />
8fdf54a31898 drm/i915: move fbc to display.fbc<br />
fa11ca506b9a drm/i915: move vbt to display.vbt<br />
bf9338f3e18b drm/i915: move mipi_mmio_base to display.dsi<br />
9c36ca0cf95a drm/i915: move backlight to display.backlight<br />
8a119bc72545 drm/i915: move and group cdclk under display.cdclk<br />
9f4bd9d2a97c drm/i915: move opregion to display.opregion<br />
982102c645fe drm/i915: move and group max_bw and bw_obj under display.bw<br />
d18df7ed56ac drm/i915: move and group sagv under display.sagv<br />
f03f1d347023 drm/i915: move overlay to display.overlay<br />
ba19b4cb8db6 drm/i915: move hotplug to display.hotplug<br />
5bc5c67fe059 drm/i915: move and group hdcp under display.hdcp<br />
d6b9203cf903 drm/i915: move wm to display.wm<br />
6e32bc612229 drm/i915: move and group fbdev under display.fbdev<br />
a80dd2d7e23b drm/i915: move dpll under display.dpll<br />
71216a276fcd drm/i915: move and split audio under display.audio and display.funcs<br />
15433cccd651 drm/i915: move dmc to display.dmc<br />
e3ab5532f6df drm/i915: move and group pps members under display.pps<br />
94426157ce7f drm/i915: move and group gmbus members under display.gmbus<br />
19d5163f95b9 drm/i915: move color_funcs to display.funcs<br />
5458d61a5b6b drm/i915: move fdi_funcs to display.funcs<br />
a46024b51bcd drm/i915: move wm_disp funcs to display.funcs<br />
5b545ebb8ffc drm/i915: move hotplug_funcs to display.funcs<br />
71603c7393bb drm/i915: move dpll_funcs to display.funcs<br />
674c5d6e47cd drm/i915: move cdclk_funcs to display.funcs<br />
3d89f0a26142 drm/i915: add display sub-struct to drm_i915_private</p>

</body>
</html>

--===============7928673870510669287==--
