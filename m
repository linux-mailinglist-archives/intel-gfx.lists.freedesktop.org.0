Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE03630004
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 23:25:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A16810E7E5;
	Fri, 18 Nov 2022 22:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 77D0F10E7E2;
 Fri, 18 Nov 2022 22:25:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72D38A66C9;
 Fri, 18 Nov 2022 22:25:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8637722388707395417=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 18 Nov 2022 22:25:00 -0000
Message-ID: <166881030042.25644.12433673992119777329@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221118185201.10469-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221118185201.10469-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_non-existent_pipes_from_bigjoiner_pipe_mask?=
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

--===============8637722388707395417==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove non-existent pipes from bigjoiner pipe mask
URL   : https://patchwork.freedesktop.org/series/111086/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12402 -> Patchwork_111086v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/index.html

Participating hosts (43 -> 29)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (15): bat-dg1-7 fi-ilk-m540 fi-bdw-samus bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-hsw-4770 bat-adln-1 bat-rplp-1 bat-rpls-2 bat-dg2-11 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_111086v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +9 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-skl-6600u:       [PASS][2] -> [FAIL][3] ([fdo#103375])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12402/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#4613]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][7] -> [INCOMPLETE][8] ([i915#7120])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12402/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][9] ([i915#7099])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][10] ([i915#5334])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
    - fi-apl-guc:         NOTRUN -> [DMESG-FAIL][11] ([i915#5334])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][12] ([i915#1886])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@mman:
    - fi-rkl-guc:         [PASS][13] -> [TIMEOUT][14] ([i915#6794])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12402/fi-rkl-guc/igt@i915_selftest@live@mman.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-rkl-guc/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [PASS][15] -> [INCOMPLETE][16] ([i915#4817])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12402/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-apl-guc:         NOTRUN -> [SKIP][17] ([fdo#109271] / [fdo#111827])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][18] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [PASS][19] -> [FAIL][20] ([i915#6298])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12402/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][21] ([fdo#109271] / [i915#4312])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-apl-guc:         [INCOMPLETE][22] ([i915#7073]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12402/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7073]: https://gitlab.freedesktop.org/drm/intel/issues/7073
  [i915#7099]: https://gitlab.freedesktop.org/drm/intel/issues/7099
  [i915#7120]: https://gitlab.freedesktop.org/drm/intel/issues/7120


Build changes
-------------

  * Linux: CI_DRM_12402 -> Patchwork_111086v1

  CI-20190529: 20190529
  CI_DRM_12402: 5a80237a6cb777a5bc65a63218764ebe1ca51201 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7068: 5c0ec905b6bbecfb8df8b8f3315d0470539e6ae3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111086v1: 5a80237a6cb777a5bc65a63218764ebe1ca51201 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2f7920955d2b drm/i915: Remove non-existent pipes from bigjoiner pipe mask

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/index.html

--===============8637722388707395417==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove non-existent pipes from bigjoiner pipe mask</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111086/">https://patchwork.freedesktop.org/series/111086/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12402 -&gt; Patchwork_111086v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/index.html</p>
<h2>Participating hosts (43 -&gt; 29)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (15): bat-dg1-7 fi-ilk-m540 fi-bdw-samus bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-hsw-4770 bat-adln-1 bat-rplp-1 bat-rpls-2 bat-dg2-11 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111086v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12402/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12402/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7120">i915#7120</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7099">i915#7099</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12402/fi-rkl-guc/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-rkl-guc/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12402/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12402/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12402/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7073">i915#7073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111086v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12402 -&gt; Patchwork_111086v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12402: 5a80237a6cb777a5bc65a63218764ebe1ca51201 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7068: 5c0ec905b6bbecfb8df8b8f3315d0470539e6ae3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111086v1: 5a80237a6cb777a5bc65a63218764ebe1ca51201 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2f7920955d2b drm/i915: Remove non-existent pipes from bigjoiner pipe mask</p>

</body>
</html>

--===============8637722388707395417==--
