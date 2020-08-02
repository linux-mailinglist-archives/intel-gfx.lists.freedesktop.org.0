Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 095C8235983
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 19:34:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BDDB6E0D8;
	Sun,  2 Aug 2020 17:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B846889F24;
 Sun,  2 Aug 2020 17:34:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B16B8A0138;
 Sun,  2 Aug 2020 17:34:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 02 Aug 2020 17:34:48 -0000
Message-ID: <159638968872.1950.16077490068892037891@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200802164412.2738-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200802164412.2738-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/42=5D_drm/i915=3A_Fix_wrong_return_valu?=
 =?utf-8?q?e?=
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
Content-Type: multipart/mixed; boundary="===============1021627799=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1021627799==
Content-Type: multipart/alternative;
 boundary="===============4188653410595049751=="

--===============4188653410595049751==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/42] drm/i915: Fix wrong return value
URL   : https://patchwork.freedesktop.org/series/80179/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8832 -> Patchwork_18295
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8832 and Patchwork_18295:

### New IGT tests (1) ###

  * igt@i915_selftest@live@scheduler:
    - Statuses : 33 pass(s)
    - Exec time: [0.47, 2.95] s

  

Known issues
------------

  Here are the changes found in Patchwork_18295 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-bxt-dsi:         [DMESG-WARN][3] ([i915#1635] / [i915#1982]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-bxt-dsi/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-bxt-dsi/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][5] ([i915#1982]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@active:
    - {fi-ehl-1}:         [DMESG-FAIL][7] ([i915#541]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-ehl-1/igt@i915_selftest@live@active.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-ehl-1/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-u2:          [INCOMPLETE][9] ([i915#2045]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([i915#62] / [i915#92]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-kbl-x1275/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-kbl-x1275/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][15] ([fdo#109271]) -> [DMESG-FAIL][16] ([i915#2203])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [INCOMPLETE][17] -> [INCOMPLETE][18] ([i915#1684])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-icl-y/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92]) -> [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) +7 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1684]: https://gitlab.freedesktop.org/drm/intel/issues/1684
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2045]: https://gitlab.freedesktop.org/drm/intel/issues/2045
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (42 -> 35)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8832 -> Patchwork_18295

  CI-20190529: 20190529
  CI_DRM_8832: 00b9a4b2331e1dceef8994e3b144e2c5e8c55003 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5757: d78c7fd293cb228fe03ccff730202b033e25ff18 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18295: 87199b330ee5b1848413d0c52cd95897a747b0cf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

87199b330ee5 drm/i915/gt: Another tweak for flushing the tasklets
a445af000bcb drm/i915: Move saturated workload detection back to the context
a32ab75c19ba drm/i915: Replace the priority boosting for the display with a deadline
341457ff92bf drm/i915/gt: Specify a deadline for the heartbeat
713774df6186 drm/i915: Fair low-latency scheduling
d61ada4e881a drm/i915/gt: Remove timeslice suppression
521577d83d5b drm/i915: Improve DFS for priority inheritance
fba4ba812a76 drm/i915/selftests: Measure set-priority duration
cdad85c1538f drm/i915: Restructure priority inheritance
c472b142c7b9 drm/i915: Teach the i915_dependency to use a double-lock
acef80fd74c7 drm/i915/gt: Do not suspend bonded requests if one hangs
508fbfb2fa86 drm/i915: Replace engine->schedule() with a known request operation
8b5974e86d02 drm/i915: Prune empty priolists
51c3bc9b7f8f drm/i915/gt: Defer the kmem_cache_free() until after the HW submit
fc2d75819d99 drm/i915: Remove I915_USER_PRIORITY_SHIFT
b1e01ae8f345 drm/i915: Strip out internal priorities
9bdc1f8119ab drm/i915: Lift waiter/signaler iterators
323ff915d375 drm/i915/gt: Convert stats.active to plain unsigned int
a28b1bd35d4e drm/i915/gt: Extract busy-stats for ring-scheduler
6cb4a83d25f2 drm/i915/gt: Drop atomic for engine->fw_active tracking
3d5f28c98ebe drm/i915/gt: ce->inflight updates are now serialised
4f73843fd816 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
4adeb0f9dbfe drm/i915/gt: Resubmit the virtual engine on schedule-out
515575064cb7 drm/i915/gt: Defer schedule_out until after the next dequeue
122fabf291d6 drm/i915/gt: Decouple inflight virtual engines
769442507dcd drm/i915/gt: Use virtual_engine during execlists_dequeue
570c67a58ab7 drm/i915/gt: Replace direct submit with direct call to tasklet
61ede9a148ba drm/i915/gt: Refactor heartbeat request construction and submission
fa84ed47c393 drm/i915/gt: Check for a completed last request once
0fcdf7a5cdb8 drm/i915/gt: Decouple completed requests on unwind
84b6ff2b8884 drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()
a5c7155455bf drm/i915/gem: Reduce ctx->engines_mutex for get_engines()
4cc1911d1e27 drm/i915/gem: Reduce ctx->engine_mutex for reading the clone source
5b3023be5688 drm/i915: Drop i915_request.lock requirement for intel_rps_boost()
d64649d5b06d drm/i915: Drop i915_request.lock serialisation around await_start
9dfbca235567 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
b7deae3dd990 drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
ed19011a3244 drm/i915/gt: Free stale request on destroying the virtual engine
f418a1a9323c drm/i915/gt: Protect context lifetime with RCU
1eace725c392 drm/i915/gem: Reduce context termination list iteration guard to RCU
641fe3760e7f drm/i915/gem: Don't drop the timeline lock during execbuf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/index.html

--===============4188653410595049751==
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
<tr><td><b>Series:</b></td><td>series starting with [01/42] drm/i915: Fix wrong return value</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80179/">https://patchwork.freedesktop.org/series/80179/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8832 -&gt; Patchwork_18295</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_8832 and Patchwork_18295:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@scheduler:<ul>
<li>Statuses : 33 pass(s)</li>
<li>Exec time: [0.47, 2.95] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18295 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-bxt-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-bxt-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-ehl-1/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-ehl-1/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2045">i915#2045</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-kbl-x1275/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-kbl-x1275/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1684">i915#1684</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18295/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +7 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 35)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8832 -&gt; Patchwork_18295</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8832: 00b9a4b2331e1dceef8994e3b144e2c5e8c55003 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5757: d78c7fd293cb228fe03ccff730202b033e25ff18 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18295: 87199b330ee5b1848413d0c52cd95897a747b0cf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>87199b330ee5 drm/i915/gt: Another tweak for flushing the tasklets<br />
a445af000bcb drm/i915: Move saturated workload detection back to the context<br />
a32ab75c19ba drm/i915: Replace the priority boosting for the display with a deadline<br />
341457ff92bf drm/i915/gt: Specify a deadline for the heartbeat<br />
713774df6186 drm/i915: Fair low-latency scheduling<br />
d61ada4e881a drm/i915/gt: Remove timeslice suppression<br />
521577d83d5b drm/i915: Improve DFS for priority inheritance<br />
fba4ba812a76 drm/i915/selftests: Measure set-priority duration<br />
cdad85c1538f drm/i915: Restructure priority inheritance<br />
c472b142c7b9 drm/i915: Teach the i915_dependency to use a double-lock<br />
acef80fd74c7 drm/i915/gt: Do not suspend bonded requests if one hangs<br />
508fbfb2fa86 drm/i915: Replace engine-&gt;schedule() with a known request operation<br />
8b5974e86d02 drm/i915: Prune empty priolists<br />
51c3bc9b7f8f drm/i915/gt: Defer the kmem_cache_free() until after the HW submit<br />
fc2d75819d99 drm/i915: Remove I915_USER_PRIORITY_SHIFT<br />
b1e01ae8f345 drm/i915: Strip out internal priorities<br />
9bdc1f8119ab drm/i915: Lift waiter/signaler iterators<br />
323ff915d375 drm/i915/gt: Convert stats.active to plain unsigned int<br />
a28b1bd35d4e drm/i915/gt: Extract busy-stats for ring-scheduler<br />
6cb4a83d25f2 drm/i915/gt: Drop atomic for engine-&gt;fw_active tracking<br />
3d5f28c98ebe drm/i915/gt: ce-&gt;inflight updates are now serialised<br />
4f73843fd816 drm/i915/gt: Simplify virtual engine handling for execlists_hold()<br />
4adeb0f9dbfe drm/i915/gt: Resubmit the virtual engine on schedule-out<br />
515575064cb7 drm/i915/gt: Defer schedule_out until after the next dequeue<br />
122fabf291d6 drm/i915/gt: Decouple inflight virtual engines<br />
769442507dcd drm/i915/gt: Use virtual_engine during execlists_dequeue<br />
570c67a58ab7 drm/i915/gt: Replace direct submit with direct call to tasklet<br />
61ede9a148ba drm/i915/gt: Refactor heartbeat request construction and submission<br />
fa84ed47c393 drm/i915/gt: Check for a completed last request once<br />
0fcdf7a5cdb8 drm/i915/gt: Decouple completed requests on unwind<br />
84b6ff2b8884 drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()<br />
a5c7155455bf drm/i915/gem: Reduce ctx-&gt;engines_mutex for get_engines()<br />
4cc1911d1e27 drm/i915/gem: Reduce ctx-&gt;engine_mutex for reading the clone source<br />
5b3023be5688 drm/i915: Drop i915_request.lock requirement for intel_rps_boost()<br />
d64649d5b06d drm/i915: Drop i915_request.lock serialisation around await_start<br />
9dfbca235567 drm/i915/gt: Split the breadcrumb spinlock between global and contexts<br />
b7deae3dd990 drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock<br />
ed19011a3244 drm/i915/gt: Free stale request on destroying the virtual engine<br />
f418a1a9323c drm/i915/gt: Protect context lifetime with RCU<br />
1eace725c392 drm/i915/gem: Reduce context termination list iteration guard to RCU<br />
641fe3760e7f drm/i915/gem: Don't drop the timeline lock during execbuf</p>

</body>
</html>

--===============4188653410595049751==--

--===============1021627799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1021627799==--
