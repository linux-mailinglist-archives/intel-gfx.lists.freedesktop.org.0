Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF497F2204
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 01:14:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB94A10E012;
	Tue, 21 Nov 2023 00:14:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 435B410E00B;
 Tue, 21 Nov 2023 00:14:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BFD1FAADD2;
 Tue, 21 Nov 2023 00:14:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3306853385429737092=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Date: Tue, 21 Nov 2023 00:14:12 -0000
Message-ID: <170052565275.30157.2954704296486218863@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_4th_attempt_to_get_rid_of_IOSF_GPIO_=28rev5=29?=
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

--===============3306853385429737092==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsi: 4th attempt to get rid of IOSF GPIO (rev5)
URL   : https://patchwork.freedesktop.org/series/125977/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13900 -> Patchwork_125977v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125977v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125977v5, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/index.html

Participating hosts (33 -> 34)
------------------------------

  Additional (2): fi-kbl-soraka fi-hsw-4770 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125977v5:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  
Known issues
------------

  Here are the changes found in Patchwork_125977v5 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-elk-e7500:       [PASS][2] -> [FAIL][3] ([i915#8293])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/fi-elk-e7500/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-elk-e7500/boot.html
    - fi-kbl-x1275:       [PASS][4] -> [FAIL][5] ([i915#8293])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/fi-kbl-x1275/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-x1275/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - bat-dg2-9:          [PASS][6] -> [INCOMPLETE][7] ([i915#9275])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#2190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][10] ([i915#9307])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-adlm-1:         [PASS][11] -> [INCOMPLETE][12] ([i915#9413])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][13] ([i915#1886])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#5190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][15] ([fdo#109271]) +9 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
    - fi-hsw-4770:        NOTRUN -> [SKIP][16] ([fdo#109271]) +12 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][17] ([i915#5334]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-6:         [DMESG-WARN][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8981]: https://gitlab.freedesktop.org/drm/intel/issues/8981
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9307]: https://gitlab.freedesktop.org/drm/intel/issues/9307
  [i915#9413]: https://gitlab.freedesktop.org/drm/intel/issues/9413
  [i915#9648]: https://gitlab.freedesktop.org/drm/intel/issues/9648


Build changes
-------------

  * Linux: CI_DRM_13900 -> Patchwork_125977v5

  CI-20190529: 20190529
  CI_DRM_13900: 7e7a522c80874faff37a7a66bdaff0747f978e11 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7595: cfa00d99b1dfa0621ea552d1ed54907798da1a1a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125977v5: 7e7a522c80874faff37a7a66bdaff0747f978e11 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cb7eb92e41e3 drm/i915/iosf: Drop unused APIs
44c7e68968f6 drm/i915/dsi: Combine checks in mipi_exec_gpio()
e4396287dc34 drm/i915/dsi: Replace poking of CHV GPIOs behind the driver's back
28e3789e862e drm/i915/dsi: Prepare soc_gpio_set_value() to distinguish GPIO communities
f158fdd42837 drm/i915/dsi: Replace poking of VLV GPIOs behind the driver's back
6d1ab8a8b97e drm/i915/dsi: Extract common soc_gpio_set_value() helper
4dfbdedecdd6 drm/i915/dsi: Fix wrong initial value for GPIOs in bxt_gpio_set_value()
0cb4b3df52e7 drm/i915/dsi: Remove GPIO lookup table at the end of intel_dsi_vbt_gpio_init()
fead969f21d1 drm/i915/dsi: Replace check with a (missing) MIPI sequence name
4c9e915997f9 drm/i915/dsi: Get rid of redundant 'else'
e5900b3a5fd2 drm/i915/dsi: Replace while(1) with one with clear exit condition
2384619f40ea drm/i915/dsi: bxt/icl GPIO set value do not need gpio source
e5c894cae398 drm/i915/dsi: rename platform specific *_exec_gpio() to *_gpio_set_value()
74a19c4a70c6 drm/i915/dsi: clarify GPIO exec sequence
dd72fa43d232 drm/i915/dsi: switch mipi_exec_gpio() from dev_priv to i915
4472705c19fb drm/i915/dsi: assume BXT gpio works for non-native GPIO

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/index.html

--===============3306853385429737092==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsi: 4th attempt to get rid of IOSF GPIO (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125977/">https://patchwork.freedesktop.org/series/125977/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13900 -&gt; Patchwork_125977v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125977v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_125977v5, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/index.html</p>
<h2>Participating hosts (33 -&gt; 34)</h2>
<p>Additional (2): fi-kbl-soraka fi-hsw-4770 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_125977v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_addfb_basic@basic-y-tiled-legacy:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@kms_addfb_basic@basic-y-tiled-legacy.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125977v5 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/fi-elk-e7500/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-elk-e7500/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/fi-kbl-x1275/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-x1275/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9307">i915#9307</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9413">i915#9413</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13900 -&gt; Patchwork_125977v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13900: 7e7a522c80874faff37a7a66bdaff0747f978e11 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7595: cfa00d99b1dfa0621ea552d1ed54907798da1a1a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125977v5: 7e7a522c80874faff37a7a66bdaff0747f978e11 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cb7eb92e41e3 drm/i915/iosf: Drop unused APIs<br />
44c7e68968f6 drm/i915/dsi: Combine checks in mipi_exec_gpio()<br />
e4396287dc34 drm/i915/dsi: Replace poking of CHV GPIOs behind the driver's back<br />
28e3789e862e drm/i915/dsi: Prepare soc_gpio_set_value() to distinguish GPIO communities<br />
f158fdd42837 drm/i915/dsi: Replace poking of VLV GPIOs behind the driver's back<br />
6d1ab8a8b97e drm/i915/dsi: Extract common soc_gpio_set_value() helper<br />
4dfbdedecdd6 drm/i915/dsi: Fix wrong initial value for GPIOs in bxt_gpio_set_value()<br />
0cb4b3df52e7 drm/i915/dsi: Remove GPIO lookup table at the end of intel_dsi_vbt_gpio_init()<br />
fead969f21d1 drm/i915/dsi: Replace check with a (missing) MIPI sequence name<br />
4c9e915997f9 drm/i915/dsi: Get rid of redundant 'else'<br />
e5900b3a5fd2 drm/i915/dsi: Replace while(1) with one with clear exit condition<br />
2384619f40ea drm/i915/dsi: bxt/icl GPIO set value do not need gpio source<br />
e5c894cae398 drm/i915/dsi: rename platform specific <em>_exec_gpio() to </em>_gpio_set_value()<br />
74a19c4a70c6 drm/i915/dsi: clarify GPIO exec sequence<br />
dd72fa43d232 drm/i915/dsi: switch mipi_exec_gpio() from dev_priv to i915<br />
4472705c19fb drm/i915/dsi: assume BXT gpio works for non-native GPIO</p>

</body>
</html>

--===============3306853385429737092==--
