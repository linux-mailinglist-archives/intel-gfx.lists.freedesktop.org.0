Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B78F2D2C7D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 15:01:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 164C56E954;
	Tue,  8 Dec 2020 14:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 727F96E834;
 Tue,  8 Dec 2020 14:01:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 69419A363D;
 Tue,  8 Dec 2020 14:01:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 08 Dec 2020 14:01:43 -0000
Message-ID: <160743610340.9601.9535627302280306173@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201207193824.18114-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201207193824.18114-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/20=5D_drm/i915/gem=3A_Drop_false_!i915?=
 =?utf-8?q?=5Fvma=5Fis=5Fclosed_assertion_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1564424092=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1564424092==
Content-Type: multipart/alternative;
 boundary="===============7592378549256809662=="

--===============7592378549256809662==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/20] drm/i915/gem: Drop false !i915_vma_is_closed assertion (rev2)
URL   : https://patchwork.freedesktop.org/series/84649/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9458 -> Patchwork_19080
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19080/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9458 and Patchwork_19080:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 39 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19080 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9458/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19080/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][3] ([i915#2029] / [i915#2722])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19080/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - fi-tgl-y:           [DMESG-WARN][4] ([i915#402]) -> [PASS][5] +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9458/fi-tgl-y/igt@fbdev@read.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19080/fi-tgl-y/igt@fbdev@read.html

  
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 40)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9458 -> Patchwork_19080

  CI-20190529: 20190529
  CI_DRM_9458: 7eeed064e42528645b01910bfd6249096ac0cf73 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5884: b1015a3267bbccb985b2fa7e3accb778c7bff0ed @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19080: 8eff78794fee3f26e13ef3743baada8e00389e3b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8eff78794fee drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
e4bfb1725818 drm/i915/selftests: Exercise relative timeline modes
a580acd5857b drm/i915/gt: Use indices for writing into relative timelines
8f5af5d72677 drm/i915/gt: Add timeline "mode"
36bc26420177 drm/i915/gt: Track timeline GGTT offset separately from subpage offset
5322983b29b4 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
04ca3180de4c drm/i915/gt: Track all timelines created using the HWSP
a0ec482380ee drm/i915: Encode fence specific waitqueue behaviour into the wait.flags
689bbdc7c0a2 drm/i915/gt: Track the overall awake/busy time
0733600ef2ba drm/i915/gem: Drop free_work for GEM contexts
d47bc3486d70 drm/i915/gt: ce->inflight updates are now serialised
fe944c644111 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
14d808c44abc drm/i915/gt: Resubmit the virtual engine on schedule-out
039e0170b63f drm/i915/gt: Shrink the critical section for irq signaling
d821d50f9bc4 drm/i915/gt: Remove virtual breadcrumb before transfer
a7ab33230f21 drm/i915/gt: Defer schedule_out until after the next dequeue
cc77634bfff1 drm/i915/gt: Decouple inflight virtual engines
926f02d2d05a drm/i915/gt: Use virtual_engine during execlists_dequeue
f352d8915717 drm/i915/gt: Replace direct submit with direct call to tasklet
396c828e19ea drm/i915/gem: Drop false !i915_vma_is_closed assertion

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19080/index.html

--===============7592378549256809662==
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
<tr><td><b>Series:</b></td><td>series starting with [01/20] drm/i915/gem: Drop false !i915_vma_is_closed assertion (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84649/">https://patchwork.freedesktop.org/series/84649/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19080/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19080/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9458 -&gt; Patchwork_19080</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19080/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9458 and Patchwork_19080:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 39 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19080 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9458/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19080/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19080/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@fbdev@read:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9458/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19080/fi-tgl-y/igt@fbdev@read.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9458 -&gt; Patchwork_19080</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9458: 7eeed064e42528645b01910bfd6249096ac0cf73 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5884: b1015a3267bbccb985b2fa7e3accb778c7bff0ed @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19080: 8eff78794fee3f26e13ef3743baada8e00389e3b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8eff78794fee drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines<br />
e4bfb1725818 drm/i915/selftests: Exercise relative timeline modes<br />
a580acd5857b drm/i915/gt: Use indices for writing into relative timelines<br />
8f5af5d72677 drm/i915/gt: Add timeline "mode"<br />
36bc26420177 drm/i915/gt: Track timeline GGTT offset separately from subpage offset<br />
5322983b29b4 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb<br />
04ca3180de4c drm/i915/gt: Track all timelines created using the HWSP<br />
a0ec482380ee drm/i915: Encode fence specific waitqueue behaviour into the wait.flags<br />
689bbdc7c0a2 drm/i915/gt: Track the overall awake/busy time<br />
0733600ef2ba drm/i915/gem: Drop free_work for GEM contexts<br />
d47bc3486d70 drm/i915/gt: ce-&gt;inflight updates are now serialised<br />
fe944c644111 drm/i915/gt: Simplify virtual engine handling for execlists_hold()<br />
14d808c44abc drm/i915/gt: Resubmit the virtual engine on schedule-out<br />
039e0170b63f drm/i915/gt: Shrink the critical section for irq signaling<br />
d821d50f9bc4 drm/i915/gt: Remove virtual breadcrumb before transfer<br />
a7ab33230f21 drm/i915/gt: Defer schedule_out until after the next dequeue<br />
cc77634bfff1 drm/i915/gt: Decouple inflight virtual engines<br />
926f02d2d05a drm/i915/gt: Use virtual_engine during execlists_dequeue<br />
f352d8915717 drm/i915/gt: Replace direct submit with direct call to tasklet<br />
396c828e19ea drm/i915/gem: Drop false !i915_vma_is_closed assertion</p>

</body>
</html>

--===============7592378549256809662==--

--===============1564424092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1564424092==--
