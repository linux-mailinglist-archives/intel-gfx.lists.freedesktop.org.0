Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 163A62530F6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 16:12:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BA446E151;
	Wed, 26 Aug 2020 14:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2260C6E14C;
 Wed, 26 Aug 2020 14:11:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B793A00CC;
 Wed, 26 Aug 2020 14:11:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 26 Aug 2020 14:11:57 -0000
Message-ID: <159845111707.21253.6495619463091581073@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200826132811.17577-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/39=5D_drm/i915/gem=3A_Avoid_implicit_vm?=
 =?utf-8?q?ap_for_highmem_on_x86-32?=
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
Content-Type: multipart/mixed; boundary="===============1124513015=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1124513015==
Content-Type: multipart/alternative;
 boundary="===============6966937204758459668=="

--===============6966937204758459668==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/39] drm/i915/gem: Avoid implicit vmap for highmem on x86-32
URL   : https://patchwork.freedesktop.org/series/81064/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8928 -> Patchwork_18408
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18408 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18408, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18408:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-byt-j1900:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html

  
Known issues
------------

  Here are the changes found in Patchwork_18408 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [PASS][3] -> [TIMEOUT][4] ([i915#1418])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-tgl-u2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-u2:          [PASS][5] -> [SKIP][6] ([i915#579])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html
    - fi-bsw-n3050:       [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@basic:
    - fi-bxt-dsi:         [INCOMPLETE][11] ([i915#1635]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-bxt-dsi/igt@gem_exec_parallel@engines@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-bxt-dsi/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_parallel@engines@fds:
    - fi-cml-s:           [INCOMPLETE][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-cml-s/igt@gem_exec_parallel@engines@fds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-cml-s/igt@gem_exec_parallel@engines@fds.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [INCOMPLETE][15] ([i915#2271] / [i915#2276]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-icl-y/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-u2:          [INCOMPLETE][17] ([i915#2045]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [DMESG-WARN][19] ([i915#1982]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [DMESG-WARN][21] ([i915#1982]) -> [PASS][22] +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][23] ([i915#62]) -> [DMESG-FAIL][24] ([i915#62] / [i915#95])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][26] ([i915#62] / [i915#92]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([i915#62] / [i915#92]) -> [DMESG-WARN][28] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1418]: https://gitlab.freedesktop.org/drm/intel/issues/1418
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2045]: https://gitlab.freedesktop.org/drm/intel/issues/2045
  [i915#2100]: https://gitlab.freedesktop.org/drm/intel/issues/2100
  [i915#2271]: https://gitlab.freedesktop.org/drm/intel/issues/2271
  [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-byt-clapper fi-byt-squawks fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_8928 -> Patchwork_18408

  CI-20190529: 20190529
  CI_DRM_8928: 58f2939dbc6d2e11838ad8ef87250fcd1e3408ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5771: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18408: 66fe3636cbddd1342068687b179139d6b92022f1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

66fe3636cbdd drm/i915: Reduce GPU error capture mutex hold time
cd003a3c264f drm/i915: Break up error capture compression loops with cond_resched()
a27ed62350ef drm/i915/gt: Consolidate the CS timestamp clocks
b351630e2023 drm/i915/selftests: Confirm RING_TIMESTAMP / CTX_TIMESTAMP share a clock
c21667ad9925 drm/i915: Encode fence specific waitqueue behaviour into the wait.flags
248b37a17e0a drm/i915/gt: Simplify virtual engine handling for execlists_hold()
fd06edcbfd09 drm/i915/gt: Resubmit the virtual engine on schedule-out
78a4eb721642 drm/i915/gt: Shrink the critical section for irq signaling
a9e4e457612d drm/i915/gt: Remove virtual breadcrumb before transfer
29827c6800f0 drm/i915/gt: Defer schedule_out until after the next dequeue
8c9c5e79fefc drm/i915/gt: Decouple inflight virtual engines
1c34cf8eff85 drm/i915/gt: Use virtual_engine during execlists_dequeue
27e3ad18e225 drm/i915/gt: ce->inflight updates are now serialised
d8c09ebb8832 drm/i915/gt: Replace direct submit with direct call to tasklet
d2a5b17f11f8 drm/i915/gt: Check for a completed last request once
b622fb3a7ea1 drm/i915/gt: Decouple completed requests on unwind
2402fe2e390e drm/i915/gt: Move the breadcrumb to the signaler if completed upon cancel
1b5b69bce739 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
4677dfe83ecf drm/i915/gt: Protect context lifetime with RCU
95b18580a943 drm/i915/gt: Free stale request on destroying the virtual engine
5cf5de2a0510 drm/i915/gt: Don't cancel the interrupt shadow too early
a91f4c9f1716 drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
13c4f6affac1 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
b549527fccdb drm/i915/gt: Remove defunct intel_virtual_engine_get_sibling()
1d3e743a294e drm/i915/gt: Retire cancelled requests on unload
0da106fcbd2a drm/i915/selftests: Finish pending mock requests on cancellation.
1bbff171d997 drm/i915/gt: Signal cancelled requests
0afa1a535c74 drm/i915/gem: Always test execution status on closing the context
c44aed4680a7 drm/i915/gt: Always send a pulse down the engine after disabling heartbeat
75b9fbba0fbb drm/i915: Cancel outstanding work after disabling heartbeats on an engine
a37d770b0cfe drm/i915/gem: Hold request reference for canceling an active context
19df6f774f8f drm/i915/gt: Show engine properties in the pretty printer
82f82623922e drm/i915/gt: Apply the CSB w/a for all
536206d193db drm/i915/gt: Wait for CSB entries on Tigerlake
57381cfc1d88 drm/i915/gt: Widen CSB pointer to u64 for the parsers
0dfcb8899225 drm/i915/gt: Clear the buffer pool age before use
30590df29a8d drm/i915/gem: Prevent using pgprot_writecombine() if PAT is not supported
2da2b39afc76 drm/i915/gem: Use set_pte_at() for assigning the vmapped PTE
4d11ca4aabc3 drm/i915/gem: Avoid implicit vmap for highmem on x86-32

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/index.html

--===============6966937204758459668==
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
<tr><td><b>Series:</b></td><td>series starting with [01/39] drm/i915/gem: Avoid implicit vmap for highmem on x86-32</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81064/">https://patchwork.freedesktop.org/series/81064/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8928 -&gt; Patchwork_18408</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18408 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18408, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18408:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18408 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-tgl-u2/igt@i915_module_load@reload.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1418">i915#1418</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-bxt-dsi/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-bxt-dsi/igt@gem_exec_parallel@engines@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-cml-s/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-cml-s/igt@gem_exec_parallel@engines@fds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2271">i915#2271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2045">i915#2045</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8928/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18408/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +5 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-byt-clapper fi-byt-squawks fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8928 -&gt; Patchwork_18408</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8928: 58f2939dbc6d2e11838ad8ef87250fcd1e3408ee @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5771: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18408: 66fe3636cbddd1342068687b179139d6b92022f1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>66fe3636cbdd drm/i915: Reduce GPU error capture mutex hold time<br />
cd003a3c264f drm/i915: Break up error capture compression loops with cond_resched()<br />
a27ed62350ef drm/i915/gt: Consolidate the CS timestamp clocks<br />
b351630e2023 drm/i915/selftests: Confirm RING_TIMESTAMP / CTX_TIMESTAMP share a clock<br />
c21667ad9925 drm/i915: Encode fence specific waitqueue behaviour into the wait.flags<br />
248b37a17e0a drm/i915/gt: Simplify virtual engine handling for execlists_hold()<br />
fd06edcbfd09 drm/i915/gt: Resubmit the virtual engine on schedule-out<br />
78a4eb721642 drm/i915/gt: Shrink the critical section for irq signaling<br />
a9e4e457612d drm/i915/gt: Remove virtual breadcrumb before transfer<br />
29827c6800f0 drm/i915/gt: Defer schedule_out until after the next dequeue<br />
8c9c5e79fefc drm/i915/gt: Decouple inflight virtual engines<br />
1c34cf8eff85 drm/i915/gt: Use virtual_engine during execlists_dequeue<br />
27e3ad18e225 drm/i915/gt: ce-&gt;inflight updates are now serialised<br />
d8c09ebb8832 drm/i915/gt: Replace direct submit with direct call to tasklet<br />
d2a5b17f11f8 drm/i915/gt: Check for a completed last request once<br />
b622fb3a7ea1 drm/i915/gt: Decouple completed requests on unwind<br />
2402fe2e390e drm/i915/gt: Move the breadcrumb to the signaler if completed upon cancel<br />
1b5b69bce739 drm/i915/gt: Split the breadcrumb spinlock between global and contexts<br />
4677dfe83ecf drm/i915/gt: Protect context lifetime with RCU<br />
95b18580a943 drm/i915/gt: Free stale request on destroying the virtual engine<br />
5cf5de2a0510 drm/i915/gt: Don't cancel the interrupt shadow too early<br />
a91f4c9f1716 drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock<br />
13c4f6affac1 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission<br />
b549527fccdb drm/i915/gt: Remove defunct intel_virtual_engine_get_sibling()<br />
1d3e743a294e drm/i915/gt: Retire cancelled requests on unload<br />
0da106fcbd2a drm/i915/selftests: Finish pending mock requests on cancellation.<br />
1bbff171d997 drm/i915/gt: Signal cancelled requests<br />
0afa1a535c74 drm/i915/gem: Always test execution status on closing the context<br />
c44aed4680a7 drm/i915/gt: Always send a pulse down the engine after disabling heartbeat<br />
75b9fbba0fbb drm/i915: Cancel outstanding work after disabling heartbeats on an engine<br />
a37d770b0cfe drm/i915/gem: Hold request reference for canceling an active context<br />
19df6f774f8f drm/i915/gt: Show engine properties in the pretty printer<br />
82f82623922e drm/i915/gt: Apply the CSB w/a for all<br />
536206d193db drm/i915/gt: Wait for CSB entries on Tigerlake<br />
57381cfc1d88 drm/i915/gt: Widen CSB pointer to u64 for the parsers<br />
0dfcb8899225 drm/i915/gt: Clear the buffer pool age before use<br />
30590df29a8d drm/i915/gem: Prevent using pgprot_writecombine() if PAT is not supported<br />
2da2b39afc76 drm/i915/gem: Use set_pte_at() for assigning the vmapped PTE<br />
4d11ca4aabc3 drm/i915/gem: Avoid implicit vmap for highmem on x86-32</p>

</body>
</html>

--===============6966937204758459668==--

--===============1124513015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1124513015==--
