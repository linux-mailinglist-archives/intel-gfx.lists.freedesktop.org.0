Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9923D6B68
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 03:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF4A37339F;
	Tue, 27 Jul 2021 01:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E0AF73388;
 Tue, 27 Jul 2021 01:04:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16AB2A47E1;
 Tue, 27 Jul 2021 01:04:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 27 Jul 2021 01:04:16 -0000
Message-ID: <162734785606.18664.1574944032970361756@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210727002348.97202-1-matthew.brost@intel.com>
In-Reply-To: <20210727002348.97202-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmVt?=
 =?utf-8?q?aining_patches_for_basic_GuC_submission_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1127508320=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1127508320==
Content-Type: multipart/alternative;
 boundary="===============4834438681681516882=="

--===============4834438681681516882==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Remaining patches for basic GuC submission (rev2)
URL   : https://patchwork.freedesktop.org/series/92912/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10399 -> Patchwork_20708
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20708/index.html

Known issues
------------

  Here are the changes found in Patchwork_20708 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +48 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20708/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@userptr:
    - fi-pnv-d510:        [INCOMPLETE][2] ([i915#299]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20708/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][4] ([i915#1982]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20708/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299


Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10399 -> Patchwork_20708

  CI-20190529: 20190529
  CI_DRM_10399: 669037414c99bf454019d7e2497fe29995e31e61 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6151: c3170c2d3744521b8351a4b9c579792bc9a5f835 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20708: 58dceac32800dc66ca7ed0ffd6e134d62fd78bc5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

58dceac32800 drm/i915/guc: Unblock GuC submission on Gen11+
89bb4b174ae8 drm/i915/guc: Implement GuC priority management
6375845fa9bb drm/i915/selftest: Bump selftest timeouts for hangcheck
e481342871b4 drm/i915/selftest: Fix hangcheck self test for GuC submission
d7c6339f4730 drm/i915/selftest: Increase some timeouts in live_requests
94b67f9319f7 drm/i915/selftest: Fix MOCS selftest for GuC submission
bead9216b818 drm/i915/selftest: Fix workarounds selftest for GuC submission
091a73620c37 drm/i915/selftest: Better error reporting from hangcheck selftest
5ee97bf1a9b0 drm/i915/guc: Support request cancellation
fb573301cd48 drm/i915/guc: Implement banned contexts for GuC submission
a399f5609dd5 drm/i915/guc: Add golden context to GuC ADS
4931fc2c2985 drm/i915/guc: Include scheduling policies in the debugfs state dump
429ef8022df4 drm/i915/guc: Connect reset modparam updates to GuC policy flags
ab399a7b42aa drm/i915/guc: Hook GuC scheduling policies up
ab288a02fdde drm/i915/guc: Fix for error capture after full GPU reset with GuC
a424d1e77c48 drm/i915/guc: Capture error state on context reset
b3eee1de5c25 drm/i915/guc: Enable GuC engine reset
b8a7d8414a62 drm/i915/guc: Don't complain about reset races
097d8dffbea2 drm/i915/guc: Provide mmio list to be saved/restored on engine reset
a60a262a833a drm/i915/guc: Enable the timer expired interrupt for GuC
b1236debf959 drm/i915/guc: Handle engine reset failure notification
08b660a9380b drm/i915/guc: Handle context reset notification
fa315ef03efe drm/i915/guc: Suspend/resume implementation for new interface
1a63021400c4 drm/i915/guc: Add disable interrupts to guc sanitize
a1ca24637d57 drm/i915: Reset GPU immediately if submission is disabled
8c910728fa04 drm/i915/guc: Reset implementation for new GuC interface
3f313ad9f442 drm/i915: Move active request tracking to a vfunc
0d5374470d54 drm/i915: Add i915_sched_engine destroy vfunc
ac8ef76f077e drm/i915/guc: Direct all breadcrumbs for a class to single breadcrumbs
abfd1c8cfaa0 drm/i915/guc: Disable bonding extension with GuC submission
ed1445d8ce6f drm/i915: Hold reference to intel_context over life of i915_request
9b36b2e16d7c drm/i915/guc: Make hangcheck work with GuC virtual engines
ac863c9f348a drm/i915/guc: GuC virtual engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20708/index.html

--===============4834438681681516882==
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
<tr><td><b>Series:</b></td><td>Remaining patches for basic GuC submission (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92912/">https://patchwork.freedesktop.org/series/92912/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20708/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20708/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10399 -&gt; Patchwork_20708</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20708/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20708 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_vgem@basic-userptr:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20708/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20708/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dsi1:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20708/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10399 -&gt; Patchwork_20708</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10399: 669037414c99bf454019d7e2497fe29995e31e61 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6151: c3170c2d3744521b8351a4b9c579792bc9a5f835 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20708: 58dceac32800dc66ca7ed0ffd6e134d62fd78bc5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>58dceac32800 drm/i915/guc: Unblock GuC submission on Gen11+<br />
89bb4b174ae8 drm/i915/guc: Implement GuC priority management<br />
6375845fa9bb drm/i915/selftest: Bump selftest timeouts for hangcheck<br />
e481342871b4 drm/i915/selftest: Fix hangcheck self test for GuC submission<br />
d7c6339f4730 drm/i915/selftest: Increase some timeouts in live_requests<br />
94b67f9319f7 drm/i915/selftest: Fix MOCS selftest for GuC submission<br />
bead9216b818 drm/i915/selftest: Fix workarounds selftest for GuC submission<br />
091a73620c37 drm/i915/selftest: Better error reporting from hangcheck selftest<br />
5ee97bf1a9b0 drm/i915/guc: Support request cancellation<br />
fb573301cd48 drm/i915/guc: Implement banned contexts for GuC submission<br />
a399f5609dd5 drm/i915/guc: Add golden context to GuC ADS<br />
4931fc2c2985 drm/i915/guc: Include scheduling policies in the debugfs state dump<br />
429ef8022df4 drm/i915/guc: Connect reset modparam updates to GuC policy flags<br />
ab399a7b42aa drm/i915/guc: Hook GuC scheduling policies up<br />
ab288a02fdde drm/i915/guc: Fix for error capture after full GPU reset with GuC<br />
a424d1e77c48 drm/i915/guc: Capture error state on context reset<br />
b3eee1de5c25 drm/i915/guc: Enable GuC engine reset<br />
b8a7d8414a62 drm/i915/guc: Don't complain about reset races<br />
097d8dffbea2 drm/i915/guc: Provide mmio list to be saved/restored on engine reset<br />
a60a262a833a drm/i915/guc: Enable the timer expired interrupt for GuC<br />
b1236debf959 drm/i915/guc: Handle engine reset failure notification<br />
08b660a9380b drm/i915/guc: Handle context reset notification<br />
fa315ef03efe drm/i915/guc: Suspend/resume implementation for new interface<br />
1a63021400c4 drm/i915/guc: Add disable interrupts to guc sanitize<br />
a1ca24637d57 drm/i915: Reset GPU immediately if submission is disabled<br />
8c910728fa04 drm/i915/guc: Reset implementation for new GuC interface<br />
3f313ad9f442 drm/i915: Move active request tracking to a vfunc<br />
0d5374470d54 drm/i915: Add i915_sched_engine destroy vfunc<br />
ac8ef76f077e drm/i915/guc: Direct all breadcrumbs for a class to single breadcrumbs<br />
abfd1c8cfaa0 drm/i915/guc: Disable bonding extension with GuC submission<br />
ed1445d8ce6f drm/i915: Hold reference to intel_context over life of i915_request<br />
9b36b2e16d7c drm/i915/guc: Make hangcheck work with GuC virtual engines<br />
ac863c9f348a drm/i915/guc: GuC virtual engines</p>

</body>
</html>

--===============4834438681681516882==--

--===============1127508320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1127508320==--
