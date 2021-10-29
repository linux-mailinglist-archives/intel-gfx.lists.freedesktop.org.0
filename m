Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF0843F3EA
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 02:30:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82C3D6E96B;
	Fri, 29 Oct 2021 00:30:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D7DB76E959;
 Fri, 29 Oct 2021 00:30:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D464EA363C;
 Fri, 29 Oct 2021 00:30:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8829080540895520921=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Oct 2021 00:30:51 -0000
Message-ID: <163546745186.1909.10175645606806274250@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211028224224.32693-1-matthew.brost@intel.com>
In-Reply-To: <20211028224224.32693-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/resets=3A_Don=27t_set_/_test_for_per-engine_reset_bits_wi?=
 =?utf-8?q?th_GuC_submission?=
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

--===============8829080540895520921==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/resets: Don't set / test for per-engine reset bits with GuC submission
URL   : https://patchwork.freedesktop.org/series/96406/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10809 -> Patchwork_21483
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21483/index.html

Participating hosts (36 -> 33)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (4): fi-icl-u2 bat-adlp-4 bat-dg1-6 bat-dg1-5 

Known issues
------------

  Here are the changes found in Patchwork_21483 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-8809g:       [PASS][1] -> [INCOMPLETE][2] ([i915#4221])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10809/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21483/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271]) +53 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21483/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][4] ([i915#1888]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10809/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21483/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][6] ([i915#4269]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10809/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21483/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#4221]: https://gitlab.freedesktop.org/drm/intel/issues/4221
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269


Build changes
-------------

  * Linux: CI_DRM_10809 -> Patchwork_21483

  CI-20190529: 20190529
  CI_DRM_10809: 9959c5de92d04f2336d749a5a331799aa41cfb1f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6264: 3458490c14afe3cb8aa873fa9e520e1c815ea068 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21483: 6fcf82dce6043d2695dbd1492971c5b76c1f6ea4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6fcf82dce604 drm/i915/resets: Don't set / test for per-engine reset bits with GuC submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21483/index.html

--===============8829080540895520921==
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
<tr><td><b>Series:</b></td><td>drm/i915/resets: Don&#39;t set / test for per-engine reset bits with GuC submission</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96406/">https://patchwork.freedesktop.org/series/96406/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21483/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21483/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10809 -&gt; Patchwork_21483</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21483/index.html</p>
<h2>Participating hosts (36 -&gt; 33)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (4): fi-icl-u2 bat-adlp-4 bat-dg1-6 bat-dg1-5 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21483 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10809/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21483/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4221">i915#4221</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21483/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10809/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21483/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10809/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21483/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10809 -&gt; Patchwork_21483</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10809: 9959c5de92d04f2336d749a5a331799aa41cfb1f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6264: 3458490c14afe3cb8aa873fa9e520e1c815ea068 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21483: 6fcf82dce6043d2695dbd1492971c5b76c1f6ea4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6fcf82dce604 drm/i915/resets: Don't set / test for per-engine reset bits with GuC submission</p>

</body>
</html>

--===============8829080540895520921==--
