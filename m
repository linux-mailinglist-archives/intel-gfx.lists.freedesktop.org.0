Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8F0879A85
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 18:19:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B97B10E56E;
	Tue, 12 Mar 2024 17:19:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D769D10E56E;
 Tue, 12 Mar 2024 17:18:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8059502520001960118=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/opregion=3A_add_in?=
 =?utf-8?q?tel=5Fopregion=5Fvbt=5Fpresent=28=29_stub_for_ACPI=3Dn?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Mar 2024 17:18:59 -0000
Message-ID: <171026393988.696620.16797580867058879857@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240312115757.683584-1-jani.nikula@intel.com>
In-Reply-To: <20240312115757.683584-1-jani.nikula@intel.com>
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

--===============8059502520001960118==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/opregion: add intel_opregion_vbt_present() stub for ACPI=n
URL   : https://patchwork.freedesktop.org/series/131021/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14421 -> Patchwork_131021v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/index.html

Participating hosts (36 -> 35)
------------------------------

  Additional (1): fi-glk-j4005 
  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_131021v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-j4005:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][3] ([i915#4613]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-arls-2:         NOTRUN -> [SKIP][4] ([i915#10213]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-7:          NOTRUN -> [SKIP][5] ([i915#6621])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html
    - bat-arls-2:         NOTRUN -> [SKIP][6] ([i915#10209])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@hangcheck:
    - fi-kbl-8809g:       NOTRUN -> [INCOMPLETE][7] ([i915#9527])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html
    - bat-rpls-3:         [PASS][8] -> [DMESG-WARN][9] ([i915#5591])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][10] +10 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_dsc@dsc-basic:
    - bat-arls-2:         NOTRUN -> [SKIP][11] ([i915#9886])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-arls-2:         NOTRUN -> [SKIP][12] ([i915#10207])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@psr-primary-mmap-gtt@edp-1:
    - bat-arls-2:         NOTRUN -> [SKIP][13] ([i915#10196] / [i915#4077] / [i915#9688])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-dg1-7:          NOTRUN -> [SKIP][14] ([i915#9732]) +3 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-arls-2:         NOTRUN -> [SKIP][15] ([i915#10208] / [i915#8809])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-7:          NOTRUN -> [SKIP][16] ([i915#3555])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg1-7:          NOTRUN -> [SKIP][17] ([i915#3708]) +3 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg1-7:          NOTRUN -> [SKIP][18] ([i915#3708] / [i915#4077]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html
    - bat-arls-2:         NOTRUN -> [SKIP][19] ([i915#10196] / [i915#3708] / [i915#4077]) +1 other test skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-arls-2:         NOTRUN -> [SKIP][20] ([i915#10212] / [i915#3708])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - bat-arls-2:         NOTRUN -> [SKIP][21] ([i915#10214] / [i915#3708])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-arls-2:         NOTRUN -> [SKIP][22] ([i915#10216] / [i915#3708])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - bat-arls-2:         [ABORT][23] -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/bat-arls-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-dg1-7:          [ABORT][25] ([i915#10367]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/bat-dg1-7/igt@kms_pm_rpm@basic-pci-d3-state.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-dg1-7/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@vgem_basic@unload:
    - fi-kbl-8809g:       [INCOMPLETE][27] -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/fi-kbl-8809g/igt@vgem_basic@unload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/fi-kbl-8809g/igt@vgem_basic@unload.html

  
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10207]: https://gitlab.freedesktop.org/drm/intel/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/intel/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/intel/issues/10209
  [i915#10212]: https://gitlab.freedesktop.org/drm/intel/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/intel/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/intel/issues/10216
  [i915#10367]: https://gitlab.freedesktop.org/drm/intel/issues/10367
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9527]: https://gitlab.freedesktop.org/drm/intel/issues/9527
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14421 -> Patchwork_131021v1

  CI-20190529: 20190529
  CI_DRM_14421: 1dfbf3ced62236dd318c701e3f21f5a33c226d0d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7756: 7756
  Patchwork_131021v1: 1dfbf3ced62236dd318c701e3f21f5a33c226d0d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a8ee1bf67d7a drm/i915/opregion: add intel_opregion_vbt_present() stub for ACPI=n

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/index.html

--===============8059502520001960118==
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
<tr><td><b>Series:</b></td><td>drm/i915/opregion: add intel_opregion_vbt_present() stub for ACPI=n</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131021/">https://patchwork.freedesktop.org/series/131021/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14421 -&gt; Patchwork_131021v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/index.html</p>
<h2>Participating hosts (36 -&gt; 35)</h2>
<p>Additional (1): fi-glk-j4005 <br />
  Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131021v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10213">i915#10213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10209">i915#10209</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9527">i915#9527</a>)</li>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10207">i915#10207</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt@edp-1:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/bat-arls-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-arls-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/bat-dg1-7/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10367">i915#10367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/bat-dg1-7/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/fi-kbl-8809g/igt@vgem_basic@unload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131021v1/fi-kbl-8809g/igt@vgem_basic@unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14421 -&gt; Patchwork_131021v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14421: 1dfbf3ced62236dd318c701e3f21f5a33c226d0d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7756: 7756<br />
  Patchwork_131021v1: 1dfbf3ced62236dd318c701e3f21f5a33c226d0d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a8ee1bf67d7a drm/i915/opregion: add intel_opregion_vbt_present() stub for ACPI=n</p>

</body>
</html>

--===============8059502520001960118==--
