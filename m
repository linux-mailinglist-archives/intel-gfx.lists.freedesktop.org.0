Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 511732E27E1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 16:10:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8452E89C2A;
	Thu, 24 Dec 2020 15:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBEC189C29;
 Thu, 24 Dec 2020 15:10:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4E33AA916;
 Thu, 24 Dec 2020 15:10:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 24 Dec 2020 15:10:29 -0000
Message-ID: <160882262965.23494.151134855732505521@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201224135544.1713-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201224135544.1713-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/9=5D_drm/i915/gt=3A_Replace_direct_?=
 =?utf-8?q?submit_with_direct_call_to_tasklet?=
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
Content-Type: multipart/mixed; boundary="===============0099698759=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0099698759==
Content-Type: multipart/alternative;
 boundary="===============2961307182225655829=="

--===============2961307182225655829==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/9] drm/i915/gt: Replace direct submit with direct call to tasklet
URL   : https://patchwork.freedesktop.org/series/85203/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9520 -> Patchwork_19210
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/index.html

Known issues
------------

  Here are the changes found in Patchwork_19210 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][2] ([fdo#109271]) +22 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][3] ([i915#2283])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#2411] / [i915#402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_render_linear_blits@basic:
    - fi-tgl-y:           [PASS][6] -> [DMESG-WARN][7] ([i915#402]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-tgl-y/igt@gem_render_linear_blits@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-tgl-y/igt@gem_render_linear_blits@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@coherency:
    - fi-gdg-551:         [DMESG-FAIL][8] ([i915#1748]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-gdg-551/igt@i915_selftest@live@coherency.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-gdg-551/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@evict:
    - fi-kbl-soraka:      [INCOMPLETE][10] -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-soraka/igt@i915_selftest@live@evict.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-kbl-soraka/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem:
    - fi-kbl-soraka:      [DMESG-WARN][12] -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-soraka/igt@i915_selftest@live@gem.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-kbl-soraka/igt@i915_selftest@live@gem.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-7500u:       [DMESG-FAIL][14] ([i915#165]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][16] ([i915#402]) -> [PASS][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1748]: https://gitlab.freedesktop.org/drm/intel/issues/1748
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9520 -> Patchwork_19210

  CI-20190529: 20190529
  CI_DRM_9520: 05faf2ea2c198f592c56bd3bedd1e5a241a2c75d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5920: 05dbccbbc2e57403730134580c4110bde85576f4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19210: ec452cb3c404f11f7dd4fbdc50fd741b69ff9d63 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ec452cb3c404 drm/i915/gt: ce->inflight updates are now serialised
b67972672a95 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
61cd5855c9c2 drm/i915/gt: Resubmit the virtual engine on schedule-out
91ca180ebfc4 drm/i915/gt: Shrink the critical section for irq signaling
a9cb30e009e2 drm/i915/gt: Remove virtual breadcrumb before transfer
85dfcf33c1ac drm/i915/gt: Defer schedule_out until after the next dequeue
33ec979d5a67 drm/i915/gt: Decouple inflight virtual engines
a1cc547997b2 drm/i915/gt: Use virtual_engine during execlists_dequeue
757a0707b3e5 drm/i915/gt: Replace direct submit with direct call to tasklet

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/index.html

--===============2961307182225655829==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/9] drm/i915/gt: Replace direct submit with direct call to tasklet</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85203/">https://patchwork.freedesktop.org/series/85203/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9520 -&gt; Patchwork_19210</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19210 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-tgl-y/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-tgl-y/igt@gem_render_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-gdg-551/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1748">i915#1748</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-gdg-551/igt@i915_selftest@live@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-soraka/igt@i915_selftest@live@evict.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-kbl-soraka/igt@i915_selftest@live@evict.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-soraka/igt@i915_selftest@live@gem.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-kbl-soraka/igt@i915_selftest@live@gem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19210/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9520 -&gt; Patchwork_19210</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9520: 05faf2ea2c198f592c56bd3bedd1e5a241a2c75d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5920: 05dbccbbc2e57403730134580c4110bde85576f4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19210: ec452cb3c404f11f7dd4fbdc50fd741b69ff9d63 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ec452cb3c404 drm/i915/gt: ce-&gt;inflight updates are now serialised<br />
b67972672a95 drm/i915/gt: Simplify virtual engine handling for execlists_hold()<br />
61cd5855c9c2 drm/i915/gt: Resubmit the virtual engine on schedule-out<br />
91ca180ebfc4 drm/i915/gt: Shrink the critical section for irq signaling<br />
a9cb30e009e2 drm/i915/gt: Remove virtual breadcrumb before transfer<br />
85dfcf33c1ac drm/i915/gt: Defer schedule_out until after the next dequeue<br />
33ec979d5a67 drm/i915/gt: Decouple inflight virtual engines<br />
a1cc547997b2 drm/i915/gt: Use virtual_engine during execlists_dequeue<br />
757a0707b3e5 drm/i915/gt: Replace direct submit with direct call to tasklet</p>

</body>
</html>

--===============2961307182225655829==--

--===============0099698759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0099698759==--
