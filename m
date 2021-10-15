Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E849042EFDD
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 13:42:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1CC96E2B6;
	Fri, 15 Oct 2021 11:42:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B22D86E2B6;
 Fri, 15 Oct 2021 11:42:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA804A01BB;
 Fri, 15 Oct 2021 11:42:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8801830845062392901=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 11:42:34 -0000
Message-ID: <163429815465.29320.9638792444005683455@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211015091650.87270-1-rodrigo.vivi@intel.com>
In-Reply-To: <20211015091650.87270-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Don=27t_propagate_the_gen_split_confusion_further?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8801830845062392901==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Don't propagate the gen split confusion further
URL   : https://patchwork.freedesktop.org/series/95872/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10743 -> Patchwork_21350
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/index.html

Known issues
------------

  Here are the changes found in Patchwork_21350 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +27 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][2] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271]) +48 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@userptr:
    - fi-pnv-d510:        [INCOMPLETE][4] ([i915#299]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - fi-cfl-8109u:       [FAIL][6] ([i915#4165]) -> [PASS][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][8] ([i915#295]) -> [PASS][9] +18 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#4165]: https://gitlab.freedesktop.org/drm/intel/issues/4165


Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-bsw-cyan fi-hsw-4200u bat-dg1-6 fi-elk-e7500 


Build changes
-------------

  * Linux: CI_DRM_10743 -> Patchwork_21350

  CI-20190529: 20190529
  CI_DRM_10743: 12c88a23f431212268d7d4d16d313f1d8661c7e5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6250: 3c2ac88757f0d0ac9450487d314fcaceebc8bc26 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21350: a57d4e77af36b2e24c29664e954061ed81214afb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a57d4e77af36 drm/i915: Don't propagate the gen split confusion further

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/index.html

--===============8801830845062392901==
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
<tr><td><b>Series:</b></td><td>drm/i915: Don&#39;t propagate the gen split confusion further</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95872/">https://patchwork.freedesktop.org/series/95872/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10743 -&gt; Patchwork_21350</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21350 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21350/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> +18 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): fi-bsw-cyan fi-hsw-4200u bat-dg1-6 fi-elk-e7500 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10743 -&gt; Patchwork_21350</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10743: 12c88a23f431212268d7d4d16d313f1d8661c7e5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6250: 3c2ac88757f0d0ac9450487d314fcaceebc8bc26 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21350: a57d4e77af36b2e24c29664e954061ed81214afb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a57d4e77af36 drm/i915: Don't propagate the gen split confusion further</p>

</body>
</html>

--===============8801830845062392901==--
