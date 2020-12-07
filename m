Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD642D1A79
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 21:27:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266F8892D8;
	Mon,  7 Dec 2020 20:27:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB40D892C1;
 Mon,  7 Dec 2020 20:27:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2D15A7DFE;
 Mon,  7 Dec 2020 20:27:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 07 Dec 2020 20:27:13 -0000
Message-ID: <160737283377.8717.14131475099238263684@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201207193824.18114-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201207193824.18114-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/20=5D_drm/i915/gem=3A_Drop_false_!i915?=
 =?utf-8?q?=5Fvma=5Fis=5Fclosed_assertion?=
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
Content-Type: multipart/mixed; boundary="===============1304802517=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1304802517==
Content-Type: multipart/alternative;
 boundary="===============3184193370849421768=="

--===============3184193370849421768==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/20] drm/i915/gem: Drop false !i915_vma_is_closed assertion
URL   : https://patchwork.freedesktop.org/series/84649/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9456 -> Patchwork_19076
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19076/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9456 and Patchwork_19076:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 39 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19076 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9456/fi-tgl-y/igt@gem_flink_basic@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19076/fi-tgl-y/igt@gem_flink_basic@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-x1275:       [PASS][3] -> [INCOMPLETE][4] ([i915#1037] / [i915#794])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9456/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19076/fi-kbl-x1275/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9456/fi-tgl-y/igt@fbdev@read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19076/fi-tgl-y/igt@fbdev@read.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      [DMESG-FAIL][7] ([i915#2291]) -> [DMESG-FAIL][8] ([i915#1886] / [i915#2291])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9456/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19076/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9456 -> Patchwork_19076

  CI-20190529: 20190529
  CI_DRM_9456: 4c841475fa2fe28db44c090a65ec58c632f705dd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5884: b1015a3267bbccb985b2fa7e3accb778c7bff0ed @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19076: 4a7c2eb47d5fb3dc22fa0814478d9d8151507514 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4a7c2eb47d5f drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
5897a5163031 drm/i915/selftests: Exercise relative timeline modes
ed1ab4ac5b1b drm/i915/gt: Use indices for writing into relative timelines
11ea0d8331ac drm/i915/gt: Add timeline "mode"
107fec199b3b drm/i915/gt: Track timeline GGTT offset separately from subpage offset
9bca7d930567 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
ed15b9c1dc0c drm/i915/gt: Track all timelines created using the HWSP
0a1b1851185e drm/i915: Encode fence specific waitqueue behaviour into the wait.flags
5262f5568eb4 drm/i915/gt: Track the overall awake/busy time
6361b87d60ab drm/i915/gem: Drop free_work for GEM contexts
9aee4973a7d2 drm/i915/gt: ce->inflight updates are now serialised
f37050f84f95 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
a054dd6d033c drm/i915/gt: Resubmit the virtual engine on schedule-out
6734d7f31f44 drm/i915/gt: Shrink the critical section for irq signaling
e3ad36a573bd drm/i915/gt: Remove virtual breadcrumb before transfer
5e2950689fd2 drm/i915/gt: Defer schedule_out until after the next dequeue
42287d3e2d7b drm/i915/gt: Decouple inflight virtual engines
b8b733c1455e drm/i915/gt: Use virtual_engine during execlists_dequeue
8bdefb152916 drm/i915/gt: Replace direct submit with direct call to tasklet
dab6937f810f drm/i915/gem: Drop false !i915_vma_is_closed assertion

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19076/index.html

--===============3184193370849421768==
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
<tr><td><b>Series:</b></td><td>series starting with [01/20] drm/i915/gem: Drop false !i915_vma_is_closed assertion</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84649/">https://patchwork.freedesktop.org/series/84649/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19076/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19076/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9456 -&gt; Patchwork_19076</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19076/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9456 and Patchwork_19076:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 39 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19076 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9456/fi-tgl-y/igt@gem_flink_basic@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19076/fi-tgl-y/igt@gem_flink_basic@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9456/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19076/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@fbdev@read:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9456/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19076/fi-tgl-y/igt@fbdev@read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9456/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19076/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9456 -&gt; Patchwork_19076</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9456: 4c841475fa2fe28db44c090a65ec58c632f705dd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5884: b1015a3267bbccb985b2fa7e3accb778c7bff0ed @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19076: 4a7c2eb47d5fb3dc22fa0814478d9d8151507514 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4a7c2eb47d5f drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines<br />
5897a5163031 drm/i915/selftests: Exercise relative timeline modes<br />
ed1ab4ac5b1b drm/i915/gt: Use indices for writing into relative timelines<br />
11ea0d8331ac drm/i915/gt: Add timeline "mode"<br />
107fec199b3b drm/i915/gt: Track timeline GGTT offset separately from subpage offset<br />
9bca7d930567 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb<br />
ed15b9c1dc0c drm/i915/gt: Track all timelines created using the HWSP<br />
0a1b1851185e drm/i915: Encode fence specific waitqueue behaviour into the wait.flags<br />
5262f5568eb4 drm/i915/gt: Track the overall awake/busy time<br />
6361b87d60ab drm/i915/gem: Drop free_work for GEM contexts<br />
9aee4973a7d2 drm/i915/gt: ce-&gt;inflight updates are now serialised<br />
f37050f84f95 drm/i915/gt: Simplify virtual engine handling for execlists_hold()<br />
a054dd6d033c drm/i915/gt: Resubmit the virtual engine on schedule-out<br />
6734d7f31f44 drm/i915/gt: Shrink the critical section for irq signaling<br />
e3ad36a573bd drm/i915/gt: Remove virtual breadcrumb before transfer<br />
5e2950689fd2 drm/i915/gt: Defer schedule_out until after the next dequeue<br />
42287d3e2d7b drm/i915/gt: Decouple inflight virtual engines<br />
b8b733c1455e drm/i915/gt: Use virtual_engine during execlists_dequeue<br />
8bdefb152916 drm/i915/gt: Replace direct submit with direct call to tasklet<br />
dab6937f810f drm/i915/gem: Drop false !i915_vma_is_closed assertion</p>

</body>
</html>

--===============3184193370849421768==--

--===============1304802517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1304802517==--
