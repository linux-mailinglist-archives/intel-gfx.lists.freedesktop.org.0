Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD8A2D55F2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 09:59:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7A4F89CD7;
	Thu, 10 Dec 2020 08:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1655B89CBE;
 Thu, 10 Dec 2020 08:59:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10347A008A;
 Thu, 10 Dec 2020 08:59:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 10 Dec 2020 08:59:56 -0000
Message-ID: <160759079603.19120.14847358855865821248@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210080240.24529-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201210080240.24529-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/21=5D_drm/i915/gt=3A_Mark_legacy_ring_c?=
 =?utf-8?q?ontext_as_lost?=
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
Content-Type: multipart/mixed; boundary="===============1924830389=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1924830389==
Content-Type: multipart/alternative;
 boundary="===============8521017368755581872=="

--===============8521017368755581872==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/21] drm/i915/gt: Mark legacy ring context as lost
URL   : https://patchwork.freedesktop.org/series/84766/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9468 -> Patchwork_19107
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19107/index.html

Known issues
------------

  Here are the changes found in Patchwork_19107 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-WARN][2] ([i915#2605])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19107/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#2411] / [i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19107/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19107/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19107/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-bdw-gvtdvm fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9468 -> Patchwork_19107

  CI-20190529: 20190529
  CI_DRM_9468: b7b601789c54389ad15a5a3fd68e6988bb47631e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5887: 7d87d0f1a22544e6a78dc0920b3f54b64144a029 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19107: 23c6eae80d83026d0dbd904a4b6b1fcfb4ffaf06 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

23c6eae80d83 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
7f388763b57e drm/i915/selftests: Exercise relative timeline modes
0f7b7ca1901c drm/i915/gt: Use indices for writing into relative timelines
e9a52574e98c drm/i915/gt: Add timeline "mode"
68c8f982084a drm/i915/gt: Track timeline GGTT offset separately from subpage offset
4dfa0ed068f5 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
d246335f5c21 drm/i915/gt: Track all timelines created using the HWSP
aa7ba59c3814 drm/i915: Encode fence specific waitqueue behaviour into the wait.flags
57b61c362e5f drm/i915/gt: Track the overall awake/busy time
01de5ce3e0a9 drm/i915/gem: Drop free_work for GEM contexts
c9b01159b322 drm/i915/gt: ce->inflight updates are now serialised
c6a364ebc5a1 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
968bd98266ff drm/i915/gt: Resubmit the virtual engine on schedule-out
f32c95f760b7 drm/i915/gt: Shrink the critical section for irq signaling
3181e34dd98b drm/i915/gt: Remove virtual breadcrumb before transfer
327842c9688f drm/i915/gt: Defer schedule_out until after the next dequeue
d23c7763370b drm/i915/gt: Decouple inflight virtual engines
069752baaacf drm/i915/gt: Use virtual_engine during execlists_dequeue
75b288bb99a5 drm/i915/gt: Replace direct submit with direct call to tasklet
da5c590480af drm/i915/gt: Wean workaround selftests off GEM context
ba60f89ca0d5 drm/i915/gt: Mark legacy ring context as lost

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19107/index.html

--===============8521017368755581872==
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
<tr><td><b>Series:</b></td><td>series starting with [01/21] drm/i915/gt: Mark legacy ring context as lost</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84766/">https://patchwork.freedesktop.org/series/84766/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19107/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19107/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9468 -&gt; Patchwork_19107</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19107/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19107 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19107/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19107/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19107/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_vgem@basic-fence-flip:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19107/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-bdw-gvtdvm fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9468 -&gt; Patchwork_19107</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9468: b7b601789c54389ad15a5a3fd68e6988bb47631e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5887: 7d87d0f1a22544e6a78dc0920b3f54b64144a029 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19107: 23c6eae80d83026d0dbd904a4b6b1fcfb4ffaf06 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>23c6eae80d83 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines<br />
7f388763b57e drm/i915/selftests: Exercise relative timeline modes<br />
0f7b7ca1901c drm/i915/gt: Use indices for writing into relative timelines<br />
e9a52574e98c drm/i915/gt: Add timeline "mode"<br />
68c8f982084a drm/i915/gt: Track timeline GGTT offset separately from subpage offset<br />
4dfa0ed068f5 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb<br />
d246335f5c21 drm/i915/gt: Track all timelines created using the HWSP<br />
aa7ba59c3814 drm/i915: Encode fence specific waitqueue behaviour into the wait.flags<br />
57b61c362e5f drm/i915/gt: Track the overall awake/busy time<br />
01de5ce3e0a9 drm/i915/gem: Drop free_work for GEM contexts<br />
c9b01159b322 drm/i915/gt: ce-&gt;inflight updates are now serialised<br />
c6a364ebc5a1 drm/i915/gt: Simplify virtual engine handling for execlists_hold()<br />
968bd98266ff drm/i915/gt: Resubmit the virtual engine on schedule-out<br />
f32c95f760b7 drm/i915/gt: Shrink the critical section for irq signaling<br />
3181e34dd98b drm/i915/gt: Remove virtual breadcrumb before transfer<br />
327842c9688f drm/i915/gt: Defer schedule_out until after the next dequeue<br />
d23c7763370b drm/i915/gt: Decouple inflight virtual engines<br />
069752baaacf drm/i915/gt: Use virtual_engine during execlists_dequeue<br />
75b288bb99a5 drm/i915/gt: Replace direct submit with direct call to tasklet<br />
da5c590480af drm/i915/gt: Wean workaround selftests off GEM context<br />
ba60f89ca0d5 drm/i915/gt: Mark legacy ring context as lost</p>

</body>
</html>

--===============8521017368755581872==--

--===============1924830389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1924830389==--
