Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 663C043F34A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 01:02:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CBA76E83D;
	Thu, 28 Oct 2021 22:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB6446E83D;
 Thu, 28 Oct 2021 22:55:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5C97AA01E;
 Thu, 28 Oct 2021 22:55:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2558723294768278623=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Oct 2021 22:55:16 -0000
Message-ID: <163546171677.4342.448055366473807745@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211028120128.13490-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211028120128.13490-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUHJl?=
 =?utf-8?q?pare_error_capture_for_asynchronous_migration_=28rev4=29?=
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

--===============2558723294768278623==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Prepare error capture for asynchronous migration (rev4)
URL   : https://patchwork.freedesktop.org/series/96281/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10809 -> Patchwork_21481
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21481/index.html

Participating hosts (36 -> 32)
------------------------------

  Missing    (4): fi-icl-u2 bat-adlp-4 bat-dg1-6 bat-dg1-5 

Known issues
------------

  Here are the changes found in Patchwork_21481 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-apl-guc:         [PASS][1] -> [DMESG-WARN][2] ([i915#1610])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10809/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21481/fi-apl-guc/igt@debugfs_test@read_all_entries.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][3] ([i915#1888]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10809/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21481/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Build changes
-------------

  * Linux: CI_DRM_10809 -> Patchwork_21481

  CI-20190529: 20190529
  CI_DRM_10809: 9959c5de92d04f2336d749a5a331799aa41cfb1f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6264: 3458490c14afe3cb8aa873fa9e520e1c815ea068 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21481: 32300fce7d6b6388ea0fd0a10fcb690a73da84be @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

32300fce7d6b drm/i915: Initial introduction of vma resources
d3a3c169f330 drm/i915: Update error capture code to avoid using the current vma state
9ddf9655f463 drm/i915: Introduce refcounted sg-tables

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21481/index.html

--===============2558723294768278623==
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
<tr><td><b>Series:</b></td><td>Prepare error capture for asynchronous migration (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96281/">https://patchwork.freedesktop.org/series/96281/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21481/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21481/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10809 -&gt; Patchwork_21481</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21481/index.html</p>
<h2>Participating hosts (36 -&gt; 32)</h2>
<p>Missing    (4): fi-icl-u2 bat-adlp-4 bat-dg1-6 bat-dg1-5 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21481 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10809/fi-apl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21481/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10809/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21481/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10809 -&gt; Patchwork_21481</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10809: 9959c5de92d04f2336d749a5a331799aa41cfb1f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6264: 3458490c14afe3cb8aa873fa9e520e1c815ea068 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21481: 32300fce7d6b6388ea0fd0a10fcb690a73da84be @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>32300fce7d6b drm/i915: Initial introduction of vma resources<br />
d3a3c169f330 drm/i915: Update error capture code to avoid using the current vma state<br />
9ddf9655f463 drm/i915: Introduce refcounted sg-tables</p>

</body>
</html>

--===============2558723294768278623==--
