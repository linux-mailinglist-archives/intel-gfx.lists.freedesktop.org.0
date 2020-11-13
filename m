Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8D82B1993
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 12:06:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFD906E486;
	Fri, 13 Nov 2020 11:06:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8244A6E456;
 Fri, 13 Nov 2020 11:06:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79BC3A0078;
 Fri, 13 Nov 2020 11:06:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 13 Nov 2020 11:06:38 -0000
Message-ID: <160526559846.20638.16912935102125819462@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201113094128.8740-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201113094128.8740-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/33=5D_drm/i915/gt=3A_Include_semaphore_?=
 =?utf-8?q?status_in_print=5Frequest=28=29?=
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
Content-Type: multipart/mixed; boundary="===============1594965619=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1594965619==
Content-Type: multipart/alternative;
 boundary="===============3290927459934176379=="

--===============3290927459934176379==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/33] drm/i915/gt: Include semaphore status in print_request()
URL   : https://patchwork.freedesktop.org/series/83798/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9322 -> Patchwork_18897
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18897 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18897, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18897:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_timelines:
    - fi-skl-6700k2:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9322 and Patchwork_18897:

### New CI tests (1) ###

  * boot:
    - Statuses : 41 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18897 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-byt-j1900/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [PASS][7] -> [DMESG-FAIL][8] ([i915#2601])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_busy@basic@modeset:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-y/igt@kms_busy@basic@modeset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-y/igt@kms_busy@basic@modeset.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [PASS][13] -> [DMESG-WARN][14] ([i915#165]) +15 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@prime_self_import@basic-with_one_bo:
    - fi-tgl-y:           [PASS][15] -> [DMESG-WARN][16] ([i915#402]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - fi-tgl-y:           [DMESG-WARN][17] ([i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-y/igt@gem_exec_create@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-y/igt@gem_exec_create@basic.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][19] ([i915#1982]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [DMESG-WARN][21] ([i915#1982]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-y:           [DMESG-WARN][23] ([i915#1982]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-y/igt@kms_busy@basic@flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-y/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-kbl-soraka:      [DMESG-WARN][25] ([i915#1982]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-apl-guc:         [DMESG-WARN][27] ([i915#1635] / [i915#1982]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][29] ([i915#1982]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@a-dsi1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@a-dsi1.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-tgl-y:           [DMESG-WARN][31] ([i915#1982] / [i915#2411]) -> [DMESG-WARN][32] ([i915#2411])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (45 -> 41)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9322 -> Patchwork_18897

  CI-20190529: 20190529
  CI_DRM_9322: 9e8f0d817f61254084a325460e636ecc43fac95b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5848: 1e2525da258aab5e0e3a7705ea8e89b521d5bf88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18897: c01688ef71a86e6ec53af9dabae1f4675ca0a998 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c01688ef71a8 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
55decb66868a drm/i915/selftests: Exercise relative timeline modes
5d40c8bbf6ed drm/i915/gt: Use indices for writing into relative timelines
b6a7563d1d5b drm/i915/gt: Add timeline "mode"
04a3982f218a drm/i915/gt: Track timeline GGTT offset separately from subpage offset
ff708538d1d5 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
33cd30c83bdf drm/i915: Encode fence specific waitqueue behaviour into the wait.flags
74b27da24c42 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
5114ec487460 drm/i915/gt: Resubmit the virtual engine on schedule-out
4e831009ea6c drm/i915/gt: Shrink the critical section for irq signaling
8a00348b40f9 drm/i915/gt: Remove virtual breadcrumb before transfer
bc3bbc7de921 drm/i915/gt: Defer schedule_out until after the next dequeue
10332a1cbb40 drm/i915/gt: Decouple inflight virtual engines
96127a9ff6b2 drm/i915/gt: Use virtual_engine during execlists_dequeue
96dd257c8712 drm/i915/gt: ce->inflight updates are now serialised
5797a9ebf834 drm/i915/gt: Replace direct submit with direct call to tasklet
265871d2f47e drm/i915/gt: Check for a completed last request once
01d5bd73869d drm/i915/gt: Decouple completed requests on unwind
f59ade260b81 drm/i915/gt: Move the breadcrumb to the signaler if completed upon cancel
81a0b4e55358 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
e3bf2ef1f3db drm/i915/gt: Protect context lifetime with RCU
a0ba8eeec730 drm/i915/gt: Free stale request on destroying the virtual engine
c6edee80f08f drm/i915/gt: Don't cancel the interrupt shadow too early
e1a92ad74f9a drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
1a8ae22b6012 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
8ec97fb01c0c drm/i915/gt: Ignore dt==0 for reporting underflows
91619d9bcdfd drm/i915/gem: Drop free_work for GEM contexts
0d825e6f9170 drm/i915/selftests: Improve granularity for mocs reset checks
8ec25a51fc38 drm/i915: Show timeline dependencies for debug
4b16df5d9acf drm/i915: Lift waiter/signaler iterators
757c2d9e5864 drm/i915/gt: Show all active timelines for debugging
e37578d3a4d2 drm/i915: Lift i915_request_show()
36ccd48abff7 drm/i915/gt: Include semaphore status in print_request()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/index.html

--===============3290927459934176379==
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
<tr><td><b>Series:</b></td><td>series starting with [01/33] drm/i915/gt: Include semaphore status in print_request()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83798/">https://patchwork.freedesktop.org/series/83798/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9322 -&gt; Patchwork_18897</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18897 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18897, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18897:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_timelines:<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9322 and Patchwork_18897:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 41 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18897 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-y/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-y/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_create@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-y/igt@gem_exec_create@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-y/igt@gem_exec_create@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-y/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-y/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dsi1:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@a-dsi1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@a-dsi1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-pci-d3-state:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9322/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18897/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9322 -&gt; Patchwork_18897</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9322: 9e8f0d817f61254084a325460e636ecc43fac95b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5848: 1e2525da258aab5e0e3a7705ea8e89b521d5bf88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18897: c01688ef71a86e6ec53af9dabae1f4675ca0a998 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c01688ef71a8 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines<br />
55decb66868a drm/i915/selftests: Exercise relative timeline modes<br />
5d40c8bbf6ed drm/i915/gt: Use indices for writing into relative timelines<br />
b6a7563d1d5b drm/i915/gt: Add timeline "mode"<br />
04a3982f218a drm/i915/gt: Track timeline GGTT offset separately from subpage offset<br />
ff708538d1d5 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb<br />
33cd30c83bdf drm/i915: Encode fence specific waitqueue behaviour into the wait.flags<br />
74b27da24c42 drm/i915/gt: Simplify virtual engine handling for execlists_hold()<br />
5114ec487460 drm/i915/gt: Resubmit the virtual engine on schedule-out<br />
4e831009ea6c drm/i915/gt: Shrink the critical section for irq signaling<br />
8a00348b40f9 drm/i915/gt: Remove virtual breadcrumb before transfer<br />
bc3bbc7de921 drm/i915/gt: Defer schedule_out until after the next dequeue<br />
10332a1cbb40 drm/i915/gt: Decouple inflight virtual engines<br />
96127a9ff6b2 drm/i915/gt: Use virtual_engine during execlists_dequeue<br />
96dd257c8712 drm/i915/gt: ce-&gt;inflight updates are now serialised<br />
5797a9ebf834 drm/i915/gt: Replace direct submit with direct call to tasklet<br />
265871d2f47e drm/i915/gt: Check for a completed last request once<br />
01d5bd73869d drm/i915/gt: Decouple completed requests on unwind<br />
f59ade260b81 drm/i915/gt: Move the breadcrumb to the signaler if completed upon cancel<br />
81a0b4e55358 drm/i915/gt: Split the breadcrumb spinlock between global and contexts<br />
e3bf2ef1f3db drm/i915/gt: Protect context lifetime with RCU<br />
a0ba8eeec730 drm/i915/gt: Free stale request on destroying the virtual engine<br />
c6edee80f08f drm/i915/gt: Don't cancel the interrupt shadow too early<br />
e1a92ad74f9a drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock<br />
1a8ae22b6012 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission<br />
8ec97fb01c0c drm/i915/gt: Ignore dt==0 for reporting underflows<br />
91619d9bcdfd drm/i915/gem: Drop free_work for GEM contexts<br />
0d825e6f9170 drm/i915/selftests: Improve granularity for mocs reset checks<br />
8ec25a51fc38 drm/i915: Show timeline dependencies for debug<br />
4b16df5d9acf drm/i915: Lift waiter/signaler iterators<br />
757c2d9e5864 drm/i915/gt: Show all active timelines for debugging<br />
e37578d3a4d2 drm/i915: Lift i915_request_show()<br />
36ccd48abff7 drm/i915/gt: Include semaphore status in print_request()</p>

</body>
</html>

--===============3290927459934176379==--

--===============1594965619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1594965619==--
