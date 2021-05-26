Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E59391137
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 09:11:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 304866E823;
	Wed, 26 May 2021 07:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D9626E0EE;
 Wed, 26 May 2021 07:11:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85C47A00C9;
 Wed, 26 May 2021 07:11:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Wed, 26 May 2021 07:11:31 -0000
Message-ID: <162201309154.13407.4053096974710973479@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210526064237.77853-1-matthew.brost@intel.com>
In-Reply-To: <20210526064237.77853-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTm9u?=
 =?utf-8?q?-interface_changing_GuC_CTBs_updates_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0990699458=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0990699458==
Content-Type: multipart/alternative;
 boundary="===============5998043089969704927=="

--===============5998043089969704927==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Non-interface changing GuC CTBs updates (rev2)
URL   : https://patchwork.freedesktop.org/series/90552/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10133 -> Patchwork_20196
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/index.html

Known issues
------------

  Here are the changes found in Patchwork_20196 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][1] ([i915#2283])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@execlists:
    - fi-bdw-5557u:       NOTRUN -> [DMESG-FAIL][2] ([i915#3462])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-bdw-5557u/igt@i915_selftest@live@execlists.html

  * igt@kms_psr@cursor_plane_move:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-icl-u2:          [FAIL][4] ([i915#49]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       [FAIL][6] ([i915#1602] / [i915#2029]) -> [FAIL][7] ([i915#2426] / [i915#3462])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/fi-bdw-5557u/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][8] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][9] ([i915#1436] / [i915#3363])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/fi-kbl-soraka/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][10] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][11] ([i915#1436] / [i915#3363])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/fi-kbl-guc/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][12] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462]) -> [FAIL][13] ([i915#3363] / [i915#3462])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/fi-cml-u2/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-cml-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3276]: https://gitlab.freedesktop.org/drm/intel/issues/3276
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (45 -> 41)
------------------------------

  Additional (1): fi-rkl-11500t 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10133 -> Patchwork_20196

  CI-20190529: 20190529
  CI_DRM_10133: 79cace2bbe3bb9cbff1aa14428adea42072b56b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6092: d87087c321da07035d4f96d98c34e451b3ccb809 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20196: 41650b9fd9e5fc9371ddb127eb32fe7ffbb3894e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

41650b9fd9e5 drm/i915/guc: Always copy CT message to new allocation
a44bbeef3e75 drm/i915/guc: Don't receive all G2H messages in irq handler
6feab437948e drm/i915/guc: Stop using mutex while sending CTB messages
f32e4faa422e drm/i915/guc: Ensure H2G buffer updates visible before tail update
11573d2c3987 drm/i915/guc: Start protecting access to CTB descriptors
7a0e05be601b drm/i915/guc: Relax CTB response timeout
9f1ec21626ae drm/i915/guc: Update sizes of CTB buffers
b065023c038e drm/i915/guc: Replace CTB array with explicit members
aaa8781a008e drm/i915/guc: Don't repeat CTB layout calculations
e3a6d58106c2 drm/i915/guc: Only rely on own CTB size
15a068ac5b1e drm/i915: Promote ptrdiff() to i915_utils.h
190975af8c9f drm/i915/guc: Stop using fence/status from CTB descriptor
28e9b20a7873 drm/i915/guc: Drop guc->interrupts.enabled
cb62a7f50e3b drm/i915/guc: Keep strict GuC ABI definitions
eafc57f85f6f drm/i915/guc: Remove sample_forcewake h2g action
866285dad8d0 drm/i915/guc: enable only the user interrupt when using GuC submission
3f9bbaddbf9d drm/i915/guc: use probe_error log for CT enablement failure
6b6bffd59ced drm/i915/guc: skip disabling CTBs before sanitizing the GuC

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/index.html

--===============5998043089969704927==
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
<tr><td><b>Series:</b></td><td>Non-interface changing GuC CTBs updates (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90552/">https://patchwork.freedesktop.org/series/90552/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10133 -&gt; Patchwork_20196</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20196 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-bdw-5557u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10133/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20196/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Additional (1): fi-rkl-11500t <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10133 -&gt; Patchwork_20196</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10133: 79cace2bbe3bb9cbff1aa14428adea42072b56b0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6092: d87087c321da07035d4f96d98c34e451b3ccb809 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20196: 41650b9fd9e5fc9371ddb127eb32fe7ffbb3894e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>41650b9fd9e5 drm/i915/guc: Always copy CT message to new allocation<br />
a44bbeef3e75 drm/i915/guc: Don't receive all G2H messages in irq handler<br />
6feab437948e drm/i915/guc: Stop using mutex while sending CTB messages<br />
f32e4faa422e drm/i915/guc: Ensure H2G buffer updates visible before tail update<br />
11573d2c3987 drm/i915/guc: Start protecting access to CTB descriptors<br />
7a0e05be601b drm/i915/guc: Relax CTB response timeout<br />
9f1ec21626ae drm/i915/guc: Update sizes of CTB buffers<br />
b065023c038e drm/i915/guc: Replace CTB array with explicit members<br />
aaa8781a008e drm/i915/guc: Don't repeat CTB layout calculations<br />
e3a6d58106c2 drm/i915/guc: Only rely on own CTB size<br />
15a068ac5b1e drm/i915: Promote ptrdiff() to i915_utils.h<br />
190975af8c9f drm/i915/guc: Stop using fence/status from CTB descriptor<br />
28e9b20a7873 drm/i915/guc: Drop guc-&gt;interrupts.enabled<br />
cb62a7f50e3b drm/i915/guc: Keep strict GuC ABI definitions<br />
eafc57f85f6f drm/i915/guc: Remove sample_forcewake h2g action<br />
866285dad8d0 drm/i915/guc: enable only the user interrupt when using GuC submission<br />
3f9bbaddbf9d drm/i915/guc: use probe_error log for CT enablement failure<br />
6b6bffd59ced drm/i915/guc: skip disabling CTBs before sanitizing the GuC</p>

</body>
</html>

--===============5998043089969704927==--

--===============0990699458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0990699458==--
