Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F1D2B6E8F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 20:24:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45AA76E060;
	Tue, 17 Nov 2020 19:24:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D28688C07;
 Tue, 17 Nov 2020 19:24:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 757ABA8169;
 Tue, 17 Nov 2020 19:24:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Nov 2020 19:24:02 -0000
Message-ID: <160564104244.25709.1568983592633128188@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201117113103.21480-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201117113103.21480-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/28=5D_drm/i915/selftests=3A_Improve_gra?=
 =?utf-8?q?nularity_for_mocs_reset_checks?=
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
Content-Type: multipart/mixed; boundary="===============0459680559=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0459680559==
Content-Type: multipart/alternative;
 boundary="===============0395297454473304101=="

--===============0395297454473304101==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/28] drm/i915/selftests: Improve granularity for mocs reset checks
URL   : https://patchwork.freedesktop.org/series/83951/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9348 -> Patchwork_18920
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9348 and Patchwork_18920:

### New CI tests (1) ###

  * boot:
    - Statuses : 41 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18920 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [PASS][1] -> [DMESG-WARN][2] ([i915#1982] / [k.org#205379])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-tgl-u2/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-icl-u2:          [DMESG-WARN][7] ([i915#1982]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-byt-j1900/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - {fi-kbl-7560u}:     [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-kbl-7560u/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-kbl-7560u/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-apl-guc:         [DMESG-WARN][15] ([i915#1635] / [i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2524]: https://gitlab.freedesktop.org/drm/intel/issues/2524
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (42 -> 41)
------------------------------

  Additional (3): fi-kbl-soraka fi-blb-e6850 fi-tgl-y 
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9348 -> Patchwork_18920

  CI-20190529: 20190529
  CI_DRM_9348: 8dc6152ada31b8d128be55f1dacc13c2b5b61666 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5855: d9b3c7058efe41e5224dd1e43fac05dc6d049380 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18920: 239e47e2f68899ae2922c4321ddf8e9983452d96 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

239e47e2f688 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
5440ca67d640 drm/i915/gt: Resubmit the virtual engine on schedule-out
063c2759bd5c drm/i915/gt: Shrink the critical section for irq signaling
3ed0a652501e drm/i915/gt: Remove virtual breadcrumb before transfer
56b37beddaa4 drm/i915/gt: Defer schedule_out until after the next dequeue
3af258c2b1e2 drm/i915/gt: Decouple inflight virtual engines
14776ee687ac drm/i915/gt: Use virtual_engine during execlists_dequeue
414c9d2c58db drm/i915/gt: ce->inflight updates are now serialised
c43eabedf48d drm/i915/gt: Replace direct submit with direct call to tasklet
80ee04c69c11 drm/i915/gt: Check for a completed last request once
299dfa2c30b7 drm/i915/gt: Decouple completed requests on unwind
a9d88246410b drm/i915/gt: Move the breadcrumb to the signaler if completed upon cancel
7ef7a16bb08c drm/i915/gt: Split the breadcrumb spinlock between global and contexts
25ee818fe9c7 drm/i915/gt: Protect context lifetime with RCU
edd68892ac79 drm/i915/gt: Free stale request on destroying the virtual engine
b9ab5ba2ea2d drm/i915/gt: Don't cancel the interrupt shadow too early
49b7cb3fb2de drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
5ed9a448fb02 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
45a01d0bdc89 drm/i915: Show timeline dependencies for debug
471c4d05edc2 drm/i915: Lift waiter/signaler iterators
38470cc9596c drm/i915/gt: Show all active timelines for debugging
8e85dabc534e drm/i915: Lift i915_request_show()
40da0fecec81 drm/i915/gt: Include semaphore status in print_request()
f6559ba4c7c5 drm/i915/gt: Track the overall busy time
3d97fa02b2bd drm/i915/gt: Ignore dt==0 for reporting underflows
b441a9d6dec3 drm/i915/gem: Drop free_work for GEM contexts
d305f0a2eb8d drm/i915/selftests: Small tweak to put the termination conditions together
ae32abe5ed3c drm/i915/selftests: Improve granularity for mocs reset checks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/index.html

--===============0395297454473304101==
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
<tr><td><b>Series:</b></td><td>series starting with [01/28] drm/i915/selftests: Improve granularity for mocs reset checks</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83951/">https://patchwork.freedesktop.org/series/83951/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9348 -&gt; Patchwork_18920</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9348 and Patchwork_18920:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 41 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18920 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-kbl-7560u/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-kbl-7560u/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9348/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18920/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 41)</h2>
<p>Additional (3): fi-kbl-soraka fi-blb-e6850 fi-tgl-y <br />
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9348 -&gt; Patchwork_18920</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9348: 8dc6152ada31b8d128be55f1dacc13c2b5b61666 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5855: d9b3c7058efe41e5224dd1e43fac05dc6d049380 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18920: 239e47e2f68899ae2922c4321ddf8e9983452d96 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>239e47e2f688 drm/i915/gt: Simplify virtual engine handling for execlists_hold()<br />
5440ca67d640 drm/i915/gt: Resubmit the virtual engine on schedule-out<br />
063c2759bd5c drm/i915/gt: Shrink the critical section for irq signaling<br />
3ed0a652501e drm/i915/gt: Remove virtual breadcrumb before transfer<br />
56b37beddaa4 drm/i915/gt: Defer schedule_out until after the next dequeue<br />
3af258c2b1e2 drm/i915/gt: Decouple inflight virtual engines<br />
14776ee687ac drm/i915/gt: Use virtual_engine during execlists_dequeue<br />
414c9d2c58db drm/i915/gt: ce-&gt;inflight updates are now serialised<br />
c43eabedf48d drm/i915/gt: Replace direct submit with direct call to tasklet<br />
80ee04c69c11 drm/i915/gt: Check for a completed last request once<br />
299dfa2c30b7 drm/i915/gt: Decouple completed requests on unwind<br />
a9d88246410b drm/i915/gt: Move the breadcrumb to the signaler if completed upon cancel<br />
7ef7a16bb08c drm/i915/gt: Split the breadcrumb spinlock between global and contexts<br />
25ee818fe9c7 drm/i915/gt: Protect context lifetime with RCU<br />
edd68892ac79 drm/i915/gt: Free stale request on destroying the virtual engine<br />
b9ab5ba2ea2d drm/i915/gt: Don't cancel the interrupt shadow too early<br />
49b7cb3fb2de drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock<br />
5ed9a448fb02 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission<br />
45a01d0bdc89 drm/i915: Show timeline dependencies for debug<br />
471c4d05edc2 drm/i915: Lift waiter/signaler iterators<br />
38470cc9596c drm/i915/gt: Show all active timelines for debugging<br />
8e85dabc534e drm/i915: Lift i915_request_show()<br />
40da0fecec81 drm/i915/gt: Include semaphore status in print_request()<br />
f6559ba4c7c5 drm/i915/gt: Track the overall busy time<br />
3d97fa02b2bd drm/i915/gt: Ignore dt==0 for reporting underflows<br />
b441a9d6dec3 drm/i915/gem: Drop free_work for GEM contexts<br />
d305f0a2eb8d drm/i915/selftests: Small tweak to put the termination conditions together<br />
ae32abe5ed3c drm/i915/selftests: Improve granularity for mocs reset checks</p>

</body>
</html>

--===============0395297454473304101==--

--===============0459680559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0459680559==--
