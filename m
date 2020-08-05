Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2CF23CACB
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 15:00:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 245546E5CC;
	Wed,  5 Aug 2020 13:00:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B48586E5CA;
 Wed,  5 Aug 2020 13:00:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AC610A73C9;
 Wed,  5 Aug 2020 13:00:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 05 Aug 2020 13:00:29 -0000
Message-ID: <159663242967.4768.16354484656871799903@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmVw?=
 =?utf-8?q?lace_obj-=3Emm=2Elock_with_reservation=5Fww=5Fclass?=
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
Content-Type: multipart/mixed; boundary="===============1959479356=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1959479356==
Content-Type: multipart/alternative;
 boundary="===============7741277141140125794=="

--===============7741277141140125794==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Replace obj->mm.lock with reservation_ww_class
URL   : https://patchwork.freedesktop.org/series/80291/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8845 -> Patchwork_18310
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/index.html

Known issues
------------

  Here are the changes found in Patchwork_18310 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [DMESG-WARN][3] ([i915#1982]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-byt-j1900/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][5] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [DMESG-WARN][7] ([i915#2203]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][12] ([i915#1982] / [i915#62] / [i915#92])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([i915#62] / [i915#92]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92]) -> [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) +9 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 37)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8845 -> Patchwork_18310

  CI-20190529: 20190529
  CI_DRM_8845: a486392fed875e0b9154eaeb4bf6a4193484e0b3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5758: bb34603947667cb44ed9ff0db8dccbb9d3f42357 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18310: ed8fec45359a20d6d36aa007d51975e219e295d1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ed8fec45359a drm/i915/gem: Delay attach mmu-notifier until we acquire the pinned userptr
5fce5e4b3f18 drm/i915/display: Drop object lock from intel_unpin_fb_vma
6e88c2dcdd0b drm/i915: Remove unused i915_gem_evict_vm()
c516449eb6f5 drm/i915/gt: Push the wait for the context to bound to the request
49e3f29287fb drm/i915/gt: Acquire backing storage for the context
177315485c00 drm/i915: Specialise GGTT binding
d6c88f1cc938 drm/i915/gt: Refactor heartbeat request construction and submission
47862f436ee8 drm/i915: Hold wakeref for the duration of the vma GGTT binding
3f782c3a5e03 drm/i915/gem: Replace i915_gem_object.mm.mutex with reservation_ww_class
16aa360bdace drm/i915: Acquire the object lock around page directories
b313eb75c832 drm/i915/gtt: map the PD up front
6042caeec62a drm/i915/gem: Pull execbuf dma resv under a single critical section
aec7bc6e676a drm/i915: Add an implementation for common reservation_ww_class locking
245b73f9f203 drm/i915/gem: Reintroduce multiple passes for reloc processing
555b300812f8 drm/i915/gem: Manage GTT placement bias (starting offset) explicitly
c04ff4d7bd4f drm/i915/gem: Include secure batch in common execbuf pinning
08253ca5d7f8 drm/i915/gem: Include cmdparser in common execbuf pinning
6909712422ff drm/i915/gem: Bind the fence async for execbuf
418443e4f373 drm/i915/gem: Asynchronous GTT unbinding
b5426c3e8f1e drm/i915/gem: Separate the ww_mutex walker into its own list
1105264eb6df drm/i915/gem: Assign context id for async work
7ebf143a2b61 drm/i915: Always defer fenced work to the worker
aeec0677ca2f drm/i915: Add list_for_each_entry_safe_continue_reverse
225f65b93b67 drm/i915: Serialise i915_vma_pin_inplace() with i915_vma_unbind()
89bf55e09136 drm/i915/gem: Remove the call for no-evict i915_vma_pin
cbf2d6b56eea drm/i915/gem: Break apart the early i915_vma_pin from execbuf object lookup
f6729467a31c drm/i915/gem: Move the 'cached' info to i915_execbuffer
aae43a649127 drm/i915/gem: Rename the list of relocations to reloc_list
f0a442c8ea00 drm/i915/gem: Rename execbuf.bind_link to unbound_link
98e29e72ccd2 drm/i915/gem: Don't drop the timeline lock during execbuf
1ee396796726 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
042d0d931dcf drm/i915/gt: Don't cancel the interrupt shadow too early
4749f15dd1d3 drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
3bc9e76bcdd9 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
dd5a5156d3f0 drm/i915/gt: Free stale request on destroying the virtual engine
ce73eec0532c drm/i915/gt: Protect context lifetime with RCU
fa0ff87bd9b0 drm/i915/gem: Reduce context termination list iteration guard to RCU

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/index.html

--===============7741277141140125794==
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
<tr><td><b>Series:</b></td><td>Replace obj-&gt;mm.lock with reservation_ww_class</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80291/">https://patchwork.freedesktop.org/series/80291/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8845 -&gt; Patchwork_18310</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18310 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-kbl-x1275/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-kbl-x1275/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18310/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +9 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 37)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8845 -&gt; Patchwork_18310</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8845: a486392fed875e0b9154eaeb4bf6a4193484e0b3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5758: bb34603947667cb44ed9ff0db8dccbb9d3f42357 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18310: ed8fec45359a20d6d36aa007d51975e219e295d1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ed8fec45359a drm/i915/gem: Delay attach mmu-notifier until we acquire the pinned userptr<br />
5fce5e4b3f18 drm/i915/display: Drop object lock from intel_unpin_fb_vma<br />
6e88c2dcdd0b drm/i915: Remove unused i915_gem_evict_vm()<br />
c516449eb6f5 drm/i915/gt: Push the wait for the context to bound to the request<br />
49e3f29287fb drm/i915/gt: Acquire backing storage for the context<br />
177315485c00 drm/i915: Specialise GGTT binding<br />
d6c88f1cc938 drm/i915/gt: Refactor heartbeat request construction and submission<br />
47862f436ee8 drm/i915: Hold wakeref for the duration of the vma GGTT binding<br />
3f782c3a5e03 drm/i915/gem: Replace i915_gem_object.mm.mutex with reservation_ww_class<br />
16aa360bdace drm/i915: Acquire the object lock around page directories<br />
b313eb75c832 drm/i915/gtt: map the PD up front<br />
6042caeec62a drm/i915/gem: Pull execbuf dma resv under a single critical section<br />
aec7bc6e676a drm/i915: Add an implementation for common reservation_ww_class locking<br />
245b73f9f203 drm/i915/gem: Reintroduce multiple passes for reloc processing<br />
555b300812f8 drm/i915/gem: Manage GTT placement bias (starting offset) explicitly<br />
c04ff4d7bd4f drm/i915/gem: Include secure batch in common execbuf pinning<br />
08253ca5d7f8 drm/i915/gem: Include cmdparser in common execbuf pinning<br />
6909712422ff drm/i915/gem: Bind the fence async for execbuf<br />
418443e4f373 drm/i915/gem: Asynchronous GTT unbinding<br />
b5426c3e8f1e drm/i915/gem: Separate the ww_mutex walker into its own list<br />
1105264eb6df drm/i915/gem: Assign context id for async work<br />
7ebf143a2b61 drm/i915: Always defer fenced work to the worker<br />
aeec0677ca2f drm/i915: Add list_for_each_entry_safe_continue_reverse<br />
225f65b93b67 drm/i915: Serialise i915_vma_pin_inplace() with i915_vma_unbind()<br />
89bf55e09136 drm/i915/gem: Remove the call for no-evict i915_vma_pin<br />
cbf2d6b56eea drm/i915/gem: Break apart the early i915_vma_pin from execbuf object lookup<br />
f6729467a31c drm/i915/gem: Move the 'cached' info to i915_execbuffer<br />
aae43a649127 drm/i915/gem: Rename the list of relocations to reloc_list<br />
f0a442c8ea00 drm/i915/gem: Rename execbuf.bind_link to unbound_link<br />
98e29e72ccd2 drm/i915/gem: Don't drop the timeline lock during execbuf<br />
1ee396796726 drm/i915/gt: Split the breadcrumb spinlock between global and contexts<br />
042d0d931dcf drm/i915/gt: Don't cancel the interrupt shadow too early<br />
4749f15dd1d3 drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock<br />
3bc9e76bcdd9 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission<br />
dd5a5156d3f0 drm/i915/gt: Free stale request on destroying the virtual engine<br />
ce73eec0532c drm/i915/gt: Protect context lifetime with RCU<br />
fa0ff87bd9b0 drm/i915/gem: Reduce context termination list iteration guard to RCU</p>

</body>
</html>

--===============7741277141140125794==--

--===============1959479356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1959479356==--
