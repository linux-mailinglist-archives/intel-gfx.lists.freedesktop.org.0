Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C606C3393DD
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 17:48:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 123B06E17F;
	Fri, 12 Mar 2021 16:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 336076E040;
 Fri, 12 Mar 2021 16:48:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2BD8BA00FD;
 Fri, 12 Mar 2021 16:48:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 12 Mar 2021 16:48:22 -0000
Message-ID: <161556770214.8356.15982227150305125500@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210312154622.1767865-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210312154622.1767865-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRGVm?=
 =?utf-8?q?ault_request/fence_expiry_+_watchdog?=
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
Content-Type: multipart/mixed; boundary="===============0862919869=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0862919869==
Content-Type: multipart/alternative;
 boundary="===============3096666064555452379=="

--===============3096666064555452379==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Default request/fence expiry + watchdog
URL   : https://patchwork.freedesktop.org/series/87930/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9854 -> Patchwork_19789
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/index.html

Known issues
------------

  Here are the changes found in Patchwork_19789 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [PASS][1] -> [TIMEOUT][2] ([i915#3145])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][3] ([i915#1602] / [i915#2029] / [i915#2369])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][4] ([i915#1888]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][6] ([i915#2502] / [i915#3145]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145


Participating hosts (46 -> 41)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * IGT: IGT_6031 -> TrybotIGT_303
  * Linux: CI_DRM_9854 -> Patchwork_19789

  CI-20190529: 20190529
  CI_DRM_9854: 4483074e9d0683cba71600dec27241fffef7b2d6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6031: 6ab78f9da7621b62c162929013772b3c6ac87dbd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19789: 7f4fb6d644b5b89887d99fda13cc3a42fa38516a @ git://anongit.freedesktop.org/gfx-ci/linux
  TrybotIGT_303: https://intel-gfx-ci.01.org/tree/drm-tip/TrybotIGT_303/index.html


== Linux commits ==

7f4fb6d644b5 drm/i915: Allow configuring default request expiry via modparam
5d0b88dfca39 drm/i915: Fail too long user submissions by default
9e458012bb44 drm/i915: Allow userspace to configure the watchdog
c4f617682a6d drm/i915: Request watchdog infrastructure
5b101fa80277 drm/i915: Restrict sentinel requests further
865f5ed6eec8 drm/i915: Individual request cancellation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/index.html

--===============3096666064555452379==
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
<tr><td><b>Series:</b></td><td>Default request/fence expiry + watchdog</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87930/">https://patchwork.freedesktop.org/series/87930/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9854 -&gt; Patchwork_19789</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19789 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (46 -&gt; 41)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6031 -&gt; TrybotIGT_303</li>
<li>Linux: CI_DRM_9854 -&gt; Patchwork_19789</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9854: 4483074e9d0683cba71600dec27241fffef7b2d6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6031: 6ab78f9da7621b62c162929013772b3c6ac87dbd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19789: 7f4fb6d644b5b89887d99fda13cc3a42fa38516a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  TrybotIGT_303: https://intel-gfx-ci.01.org/tree/drm-tip/TrybotIGT_303/index.html</p>
<p>== Linux commits ==</p>
<p>7f4fb6d644b5 drm/i915: Allow configuring default request expiry via modparam<br />
5d0b88dfca39 drm/i915: Fail too long user submissions by default<br />
9e458012bb44 drm/i915: Allow userspace to configure the watchdog<br />
c4f617682a6d drm/i915: Request watchdog infrastructure<br />
5b101fa80277 drm/i915: Restrict sentinel requests further<br />
865f5ed6eec8 drm/i915: Individual request cancellation</p>

</body>
</html>

--===============3096666064555452379==--

--===============0862919869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0862919869==--
