Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EC323A344
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 13:26:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7FF989DA6;
	Mon,  3 Aug 2020 11:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD63C89DA2;
 Mon,  3 Aug 2020 11:25:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AF485A47E8;
 Mon,  3 Aug 2020 11:25:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 03 Aug 2020 11:25:57 -0000
Message-ID: <159645395768.19294.13428455747219315834@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200803101133.4529-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200803101133.4529-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915/gem=3A_Reduce_context_term?=
 =?utf-8?q?ination_list_iteration_guard_to_RCU?=
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
Content-Type: multipart/mixed; boundary="===============1242015019=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1242015019==
Content-Type: multipart/alternative;
 boundary="===============3539932054875897222=="

--===============3539932054875897222==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/7] drm/i915/gem: Reduce context termination list iteration guard to RCU
URL   : https://patchwork.freedesktop.org/series/80203/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8834 -> Patchwork_18298
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18298 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18298, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18298:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_sync@basic-all:
    - fi-bsw-kefka:       [PASS][1] -> [TIMEOUT][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-bsw-kefka/igt@gem_sync@basic-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-bsw-kefka/igt@gem_sync@basic-all.html

  * igt@i915_selftest@live@gt_pm:
    - fi-ivb-3770:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-ivb-3770/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-ivb-3770/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@gem_tiled_blits@basic:
    - fi-bsw-kefka:       [SKIP][5] ([fdo#109271]) -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-bsw-kefka/igt@gem_tiled_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-bsw-kefka/igt@gem_tiled_blits@basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_exec@basic:
    - {fi-tgl-dsi}:       [PASS][7] -> [TIMEOUT][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-tgl-dsi/igt@gem_ctx_exec@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-tgl-dsi/igt@gem_ctx_exec@basic.html

  * igt@gem_exec_basic@basic:
    - {fi-tgl-dsi}:       NOTRUN -> [TIMEOUT][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-tgl-dsi/igt@gem_exec_basic@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_18298 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][10] -> [FAIL][11] ([i915#1888])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-apl-guc:         [PASS][12] -> [TIMEOUT][13] ([i915#1635]) +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [PASS][14] -> [DMESG-WARN][15] ([i915#1982])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-n3050:       [PASS][16] -> [DMESG-WARN][17] ([i915#1982])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
    - fi-icl-y:           [PASS][18] -> [FAIL][19] ([i915#579])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-icl-y/igt@i915_pm_rpm@module-reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-icl-y/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-u2:          [PASS][20] -> [INCOMPLETE][21] ([i915#2045])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [PASS][22] -> [INCOMPLETE][23] ([i915#926])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-icl-u2:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [DMESG-WARN][26] ([i915#1982]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-byt-j1900/igt@i915_module_load@reload.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-u2:          [DMESG-FAIL][28] ([i915#1233]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][30] ([i915#1982]) -> [PASS][31] +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-kbl-x1275:       [DMESG-WARN][32] ([i915#62] / [i915#92]) -> [DMESG-WARN][33] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][34] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][35] ([i915#62] / [i915#92]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2045]: https://gitlab.freedesktop.org/drm/intel/issues/2045
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (42 -> 35)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8834 -> Patchwork_18298

  CI-20190529: 20190529
  CI_DRM_8834: ac25ad7789fe4cc689a854d823a226ce24bb0a62 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5757: d78c7fd293cb228fe03ccff730202b033e25ff18 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18298: 14bb8af2a6f4deb500598e6b3f7fc195d7781d28 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

14bb8af2a6f4 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
f2ce274b32c7 drm/i915/gt: Don't cancel the interrupt shadow too early
f13281e3e17d drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
ece8f60ae6af drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
ee3eeddcd833 drm/i915/gt: Free stale request on destroying the virtual engine
ec9af2d61290 drm/i915/gt: Protect context lifetime with RCU
4421ede59e7d drm/i915/gem: Reduce context termination list iteration guard to RCU

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/index.html

--===============3539932054875897222==
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
<tr><td><b>Series:</b></td><td>series starting with [1/7] drm/i915/gem: Reduce context termination list iteration guard to RCU</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80203/">https://patchwork.freedesktop.org/series/80203/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8834 -&gt; Patchwork_18298</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18298 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18298, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18298:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-bsw-kefka/igt@gem_sync@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-bsw-kefka/igt@gem_sync@basic-all.html">TIMEOUT</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-ivb-3770/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-ivb-3770/igt@i915_selftest@live@gt_pm.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_tiled_blits@basic:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-bsw-kefka/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-bsw-kefka/igt@gem_tiled_blits@basic.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_exec@basic:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-tgl-dsi/igt@gem_ctx_exec@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-tgl-dsi/igt@gem_ctx_exec@basic.html">TIMEOUT</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic:</p>
<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-tgl-dsi/igt@gem_exec_basic@basic.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18298 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-icl-y/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-icl-y/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2045">i915#2045</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/926">i915#926</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1233">i915#1233</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8834/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18298/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 35)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8834 -&gt; Patchwork_18298</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8834: ac25ad7789fe4cc689a854d823a226ce24bb0a62 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5757: d78c7fd293cb228fe03ccff730202b033e25ff18 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18298: 14bb8af2a6f4deb500598e6b3f7fc195d7781d28 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>14bb8af2a6f4 drm/i915/gt: Split the breadcrumb spinlock between global and contexts<br />
f2ce274b32c7 drm/i915/gt: Don't cancel the interrupt shadow too early<br />
f13281e3e17d drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock<br />
ece8f60ae6af drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission<br />
ee3eeddcd833 drm/i915/gt: Free stale request on destroying the virtual engine<br />
ec9af2d61290 drm/i915/gt: Protect context lifetime with RCU<br />
4421ede59e7d drm/i915/gem: Reduce context termination list iteration guard to RCU</p>

</body>
</html>

--===============3539932054875897222==--

--===============1242015019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1242015019==--
