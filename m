Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4CBA2C794
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 16:44:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F16110EB5A;
	Fri,  7 Feb 2025 15:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E85F10EB58;
 Fri,  7 Feb 2025 15:42:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2240598812964032862=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915=3A_intel=5Fdispl?=
 =?utf-8?q?ay_conversions_and_some_debug_improvements_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 07 Feb 2025 15:42:59 -0000
Message-ID: <173894297938.2702385.3024382284597691853@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
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

--===============2240598812964032862==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: intel_display conversions and some debug improvements (rev2)
URL   : https://patchwork.freedesktop.org/series/143942/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16082 -> Patchwork_143942v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_143942v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_143942v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_143942v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-mtlp-9/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-mtlp-9/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_143942v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          NOTRUN -> [INCOMPLETE][3] ([i915#12904]) +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-apl-1:          NOTRUN -> [SKIP][4] +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-apl-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][5] -> [DMESG-FAIL][6] ([i915#12061] / [i915#12435])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-arlh-3/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-arlh-3/igt@i915_selftest@live.html
    - bat-twl-2:          NOTRUN -> [ABORT][7] ([i915#12919] / [i915#13503])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-twl-2/igt@i915_selftest@live.html
    - bat-jsl-3:          [PASS][8] -> [INCOMPLETE][9] ([i915#12445] / [i915#13241])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-jsl-3/igt@i915_selftest@live.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-jsl-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@evict:
    - bat-jsl-3:          [PASS][10] -> [INCOMPLETE][11] ([i915#12445])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-jsl-3/igt@i915_selftest@live@evict.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-jsl-3/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gt_timelines:
    - bat-twl-2:          NOTRUN -> [ABORT][12] ([i915#12919])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-twl-2/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][13] -> [DMESG-FAIL][14] ([i915#12061])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arls-5:         [PASS][15] -> [DMESG-FAIL][16] ([i915#12061]) +1 other test dmesg-fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-adlp-6:         [PASS][17] -> [INCOMPLETE][18] ([i915#9413]) +1 other test incomplete
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-adlp-6/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-adlp-6/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-apl-1:          [ABORT][19] ([i915#13571]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-apl-1/igt@core_hotunplug@unbind-rebind.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-apl-1/igt@core_hotunplug@unbind-rebind.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13241]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241
  [i915#13503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503
  [i915#13571]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13571
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_16082 -> Patchwork_143942v2

  CI-20190529: 20190529
  CI_DRM_16082: f2401c718ce075408a723b147cac70aad2a8246f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8224: c659b986ba648584d36b3cfece897bc84a33dcbb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143942v2: f2401c718ce075408a723b147cac70aad2a8246f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b7ac509412c7 drm/i915: Pimp plane debugs
94378cdf2e30 drm/i915: Use DRM_RECT_FMT & co. for plane debugs
f5cbd8545fe3 drm/i915: Convert skl_univeral_plane.c to struct intel_display
311cd269900b drm/i915: Convert intel_cursor.c to struct intel_display
6a5b7e5a9c21 drm/i915: Finish intel_sprite.c struct intel_display conversion
f27c94ba1c01 drm/i915: Convert i9xx_plane.c to struct intel_display
332a42c9dc85 drm/i915: Convert intel_display_power_{get, put}*() to intel_display
c6c1a98f81ef drm/i915: Convert intel_fb.c to struct intel_display
6312b3e7ee15 drm/i915: Convert intel_crtc.c to struct intel_display
de616099fe89 drm/i915: Decouple intel_fb_bo.h interfaces from driver specific types
198b9596abbd drm/i915: Decouple i915_gem_dumb_create() from the display a bit
f5b734fd800b drm/i915: Pass intel_display to intel_scanout_needs_vtd_wa()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/index.html

--===============2240598812964032862==
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
<tr><td><b>Series:</b></td><td>drm/i915: intel_display conversions and some debug improvements (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143942/">https://patchwork.freedesktop.org/series/143942/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16082 -&gt; Patchwork_143942v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_143942v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_143942v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_143942v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-mtlp-9/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143942v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-apl-1/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-apl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-apl-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a>)</li>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-twl-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503">i915#13503</a>)</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-jsl-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-jsl-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241">i915#13241</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-jsl-3/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-jsl-3/igt@i915_selftest@live@evict.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-twl-2/igt@i915_selftest@live@gt_timelines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-adlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-adlp-6/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) +1 other test incomplete</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16082/bat-apl-1/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13571">i915#13571</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143942v2/bat-apl-1/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16082 -&gt; Patchwork_143942v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16082: f2401c718ce075408a723b147cac70aad2a8246f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8224: c659b986ba648584d36b3cfece897bc84a33dcbb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143942v2: f2401c718ce075408a723b147cac70aad2a8246f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b7ac509412c7 drm/i915: Pimp plane debugs<br />
94378cdf2e30 drm/i915: Use DRM_RECT_FMT &amp; co. for plane debugs<br />
f5cbd8545fe3 drm/i915: Convert skl_univeral_plane.c to struct intel_display<br />
311cd269900b drm/i915: Convert intel_cursor.c to struct intel_display<br />
6a5b7e5a9c21 drm/i915: Finish intel_sprite.c struct intel_display conversion<br />
f27c94ba1c01 drm/i915: Convert i9xx_plane.c to struct intel_display<br />
332a42c9dc85 drm/i915: Convert intel_display_power_{get, put}*() to intel_display<br />
c6c1a98f81ef drm/i915: Convert intel_fb.c to struct intel_display<br />
6312b3e7ee15 drm/i915: Convert intel_crtc.c to struct intel_display<br />
de616099fe89 drm/i915: Decouple intel_fb_bo.h interfaces from driver specific types<br />
198b9596abbd drm/i915: Decouple i915_gem_dumb_create() from the display a bit<br />
f5b734fd800b drm/i915: Pass intel_display to intel_scanout_needs_vtd_wa()</p>

</body>
</html>

--===============2240598812964032862==--
