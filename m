Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2193A34C04B
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 02:01:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1232D6E3F7;
	Mon, 29 Mar 2021 00:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 11AFC6E3F7;
 Mon, 29 Mar 2021 00:01:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09A07A0118;
 Mon, 29 Mar 2021 00:01:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Mon, 29 Mar 2021 00:01:44 -0000
Message-ID: <161697610401.26034.10381302866056019488@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1066868095=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1066868095==
Content-Type: multipart/alternative;
 boundary="===============2400980958010459490=="

--===============2400980958010459490==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP (rev3)
URL   : https://patchwork.freedesktop.org/series/86798/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9909 -> Patchwork_19874
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/index.html

Known issues
------------

  Here are the changes found in Patchwork_19874 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@gem_basic@create-close:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-y/igt@gem_basic@create-close.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/fi-tgl-y/igt@gem_basic@create-close.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][4] -> [SKIP][5] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@gem_render_tiled_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][6] ([i915#402]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-y/igt@gem_render_tiled_blits@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/fi-tgl-y/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][8] ([i915#2782] / [i915#2940]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][10] ([i915#3303]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 40)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-skl-guc fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9909 -> Patchwork_19874

  CI-20190529: 20190529
  CI_DRM_9909: 3a920a8e00db74289e0bb268c587b11852c1f0b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6047: 3887134e739f480cefe1dc7f13eb54f7bf3ca27f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19874: d3fff13e5990114e6131f5f88458a43c17efaeda @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d3fff13e5990 drm/i915/pxp: enable PXP for integrated Gen12
5078af49bd4f drm/i915/pxp: black pixels on pxp disabled
4a1dd05541f5 drm/i915/pxp: Add plane decryption support
335d8f6de7b8 drm/i915/pxp: User interface for Protected buffer
37ca85466387 drm/i915/uapi: introduce drm_i915_gem_create_ext
3e8ecf822ffa drm/i915/pxp: interface for marking contexts as using protected content
22699a366358 drm/i915/pxp: Enable PXP power management
79b9cb67b7e9 drm/i915/pxp: Implement PXP irq handler
16a8074ae79e drm/i915/pxp: Implement arb session teardown
0eb8fb9b5f41 drm/i915/pxp: Create the arbitrary session after boot
f1f5c9b44578 drm/i915/pxp: set KCR reg init
4243fb716dc6 drm/i915/pxp: Implement funcs to create the TEE channel
88337c97ac74 drm/i915/pxp: allocate a vcs context for pxp usage
c036327c9e13 drm/i915/pxp: define PXP device flag and kconfig
02633f66149b mei: pxp: export pavp client to me client bus
2fffdc9bd6ba drm/i915/pxp: Define PXP component interface

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/index.html

--===============2400980958010459490==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86798/">https://patchwork.freedesktop.org/series/86798/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9909 -&gt; Patchwork_19874</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19874 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-close:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-y/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/fi-tgl-y/igt@gem_basic@create-close.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19874/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 40)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-skl-guc fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9909 -&gt; Patchwork_19874</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9909: 3a920a8e00db74289e0bb268c587b11852c1f0b2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6047: 3887134e739f480cefe1dc7f13eb54f7bf3ca27f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19874: d3fff13e5990114e6131f5f88458a43c17efaeda @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d3fff13e5990 drm/i915/pxp: enable PXP for integrated Gen12<br />
5078af49bd4f drm/i915/pxp: black pixels on pxp disabled<br />
4a1dd05541f5 drm/i915/pxp: Add plane decryption support<br />
335d8f6de7b8 drm/i915/pxp: User interface for Protected buffer<br />
37ca85466387 drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
3e8ecf822ffa drm/i915/pxp: interface for marking contexts as using protected content<br />
22699a366358 drm/i915/pxp: Enable PXP power management<br />
79b9cb67b7e9 drm/i915/pxp: Implement PXP irq handler<br />
16a8074ae79e drm/i915/pxp: Implement arb session teardown<br />
0eb8fb9b5f41 drm/i915/pxp: Create the arbitrary session after boot<br />
f1f5c9b44578 drm/i915/pxp: set KCR reg init<br />
4243fb716dc6 drm/i915/pxp: Implement funcs to create the TEE channel<br />
88337c97ac74 drm/i915/pxp: allocate a vcs context for pxp usage<br />
c036327c9e13 drm/i915/pxp: define PXP device flag and kconfig<br />
02633f66149b mei: pxp: export pavp client to me client bus<br />
2fffdc9bd6ba drm/i915/pxp: Define PXP component interface</p>

</body>
</html>

--===============2400980958010459490==--

--===============1066868095==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1066868095==--
