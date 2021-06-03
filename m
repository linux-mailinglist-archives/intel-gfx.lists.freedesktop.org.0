Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8525399A20
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 07:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D00AD6E09F;
	Thu,  3 Jun 2021 05:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DEA6C6E039;
 Thu,  3 Jun 2021 05:41:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D06F8AA01E;
 Thu,  3 Jun 2021 05:41:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Thu, 03 Jun 2021 05:41:15 -0000
Message-ID: <162269887581.8032.2928496916826565650@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210603051630.2635-1-matthew.brost@intel.com>
In-Reply-To: <20210603051630.2635-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgR3VD?=
 =?utf-8?q?_CTBs_changes_+_a_few_misc_patches?=
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
Content-Type: multipart/mixed; boundary="===============0237512740=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0237512740==
Content-Type: multipart/alternative;
 boundary="===============8493576765854873716=="

--===============8493576765854873716==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GuC CTBs changes + a few misc patches
URL   : https://patchwork.freedesktop.org/series/90923/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10161 -> Patchwork_20268
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/index.html

Known issues
------------

  Here are the changes found in Patchwork_20268 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cml-s:           [PASS][1] -> [DMESG-FAIL][2] ([i915#2291] / [i915#541])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][3] -> [INCOMPLETE][4] ([i915#2782])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-u2:          [PASS][5] -> [FAIL][6] ([i915#2416])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - fi-kbl-soraka:      [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-kbl-soraka/igt@core_auth@basic-auth.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-kbl-soraka/igt@core_auth@basic-auth.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][9] ([i915#2782] / [i915#2940] / [i915#3462]) -> [DMESG-FAIL][10] ([i915#3462])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [DMESG-FAIL][11] ([i915#3462]) -> [INCOMPLETE][12] ([i915#2782] / [i915#3462])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [INCOMPLETE][13] ([i915#3462]) -> [DMESG-FAIL][14] ([i915#3462])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-icl-u2:          [FAIL][15] ([i915#2426] / [i915#2782] / [i915#3363]) -> [FAIL][16] ([i915#2782] / [i915#3363])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-icl-u2/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-icl-u2/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][17] ([i915#3363] / [i915#3462]) -> [FAIL][18] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-cml-u2/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         [FAIL][19] ([i915#3363]) -> [FAIL][20] ([i915#2426] / [i915#3363])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-bxt-dsi/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][21] ([i915#2426] / [i915#3363]) -> [FAIL][22] ([i915#3363])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-cfl-guc/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][23] ([i915#1436] / [i915#3363]) -> [FAIL][24] ([i915#1436] / [i915#2426] / [i915#3363])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-skl-6700k2/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#3537]: https://gitlab.freedesktop.org/drm/intel/issues/3537
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (46 -> 42)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10161 -> Patchwork_20268

  CI-20190529: 20190529
  CI_DRM_10161: 6ce32fba8fd6caa0cd3ea578b35f76d188ebb155 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6098: 1fbc1e7d602f96a7f4e2b95057eef994656b8e74 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20268: 0a6789a09f83c8f920772497512db7a471d16ce0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0a6789a09f83 drm/i915/guc: Use guc_class instead of engine_class in fw interface
da53d759233e drm/i915/guc: Early initialization of GuC send registers
294ee7f74a50 drm/i915/guc: Always copy CT message to new allocation
348ce9572410 drm/i915/guc: Don't receive all G2H messages in irq handler
bd544d24227f drm/i915/guc: Stop using mutex while sending CTB messages
ce3277877e1b drm/i915/guc: Ensure H2G buffer updates visible before tail update
2807c0d82a1f drm/i915/guc: Start protecting access to CTB descriptors
9397ecf1bd5d drm/i915/guc: Relax CTB response timeout
29418a3ae1ca drm/i915/guc: Update sizes of CTB buffers
1ef8d35c354a drm/i915/guc: Replace CTB array with explicit members
5fd584084741 drm/i915/guc: Don't repeat CTB layout calculations
b8b55afb041b drm/i915/guc: Only rely on own CTB size
3fdb982139de drm/i915: Promote ptrdiff() to i915_utils.h
b4d1bfbad95a drm/i915/guc: Stop using fence/status from CTB descriptor
92abfd675d17 drm/i915/guc: Drop guc->interrupts.enabled
cd4bc4bbb7db drm/i915/guc: Keep strict GuC ABI definitions
ff1239608127 drm/i915/guc: Remove sample_forcewake h2g action
64633e8a2c5c drm/i915/guc: enable only the user interrupt when using GuC submission
615b2e145353 drm/i915/guc: use probe_error log for CT enablement failure
b995ee93341d drm/i915/guc: skip disabling CTBs before sanitizing the GuC

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/index.html

--===============8493576765854873716==
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
<tr><td><b>Series:</b></td><td>GuC CTBs changes + a few misc patches</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90923/">https://patchwork.freedesktop.org/series/90923/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10161 -&gt; Patchwork_20268</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20268 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2416">i915#2416</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_auth@basic-auth:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-kbl-soraka/igt@core_auth@basic-auth.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-kbl-soraka/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-bsw-nick/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-icl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-tgl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20268/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 42)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10161 -&gt; Patchwork_20268</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10161: 6ce32fba8fd6caa0cd3ea578b35f76d188ebb155 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6098: 1fbc1e7d602f96a7f4e2b95057eef994656b8e74 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20268: 0a6789a09f83c8f920772497512db7a471d16ce0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0a6789a09f83 drm/i915/guc: Use guc_class instead of engine_class in fw interface<br />
da53d759233e drm/i915/guc: Early initialization of GuC send registers<br />
294ee7f74a50 drm/i915/guc: Always copy CT message to new allocation<br />
348ce9572410 drm/i915/guc: Don't receive all G2H messages in irq handler<br />
bd544d24227f drm/i915/guc: Stop using mutex while sending CTB messages<br />
ce3277877e1b drm/i915/guc: Ensure H2G buffer updates visible before tail update<br />
2807c0d82a1f drm/i915/guc: Start protecting access to CTB descriptors<br />
9397ecf1bd5d drm/i915/guc: Relax CTB response timeout<br />
29418a3ae1ca drm/i915/guc: Update sizes of CTB buffers<br />
1ef8d35c354a drm/i915/guc: Replace CTB array with explicit members<br />
5fd584084741 drm/i915/guc: Don't repeat CTB layout calculations<br />
b8b55afb041b drm/i915/guc: Only rely on own CTB size<br />
3fdb982139de drm/i915: Promote ptrdiff() to i915_utils.h<br />
b4d1bfbad95a drm/i915/guc: Stop using fence/status from CTB descriptor<br />
92abfd675d17 drm/i915/guc: Drop guc-&gt;interrupts.enabled<br />
cd4bc4bbb7db drm/i915/guc: Keep strict GuC ABI definitions<br />
ff1239608127 drm/i915/guc: Remove sample_forcewake h2g action<br />
64633e8a2c5c drm/i915/guc: enable only the user interrupt when using GuC submission<br />
615b2e145353 drm/i915/guc: use probe_error log for CT enablement failure<br />
b995ee93341d drm/i915/guc: skip disabling CTBs before sanitizing the GuC</p>

</body>
</html>

--===============8493576765854873716==--

--===============0237512740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0237512740==--
