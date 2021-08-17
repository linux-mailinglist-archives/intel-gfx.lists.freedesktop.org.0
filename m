Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDD53EF082
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 18:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA0776E1F9;
	Tue, 17 Aug 2021 16:57:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 648306E1F9;
 Tue, 17 Aug 2021 16:57:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A67BAA0EA;
 Tue, 17 Aug 2021 16:57:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6220944561156930583=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Aug 2021 16:57:08 -0000
Message-ID: <162921942827.22609.13862086073614948776@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/sched_dependency_handling_and_implicit_sync_fixes_=28rev4=29?=
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

--===============6220944561156930583==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/sched dependency handling and implicit sync fixes (rev4)
URL   : https://patchwork.freedesktop.org/series/93415/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10490 -> Patchwork_20836
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20836/index.html

Known issues
------------

  Here are the changes found in Patchwork_20836 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +27 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20836/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#3718])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20836/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20836/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718


Participating hosts (36 -> 34)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10490 -> Patchwork_20836

  CI-20190529: 20190529
  CI_DRM_10490: 3bd74b377986fcb89cf4563629f97c5b3199ca6f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6177: f474644e7226dd319195ca03b3cde82ad10ac54c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20836: 724ee6ec97135c8a4fd57f8b19d9802834ad62fc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

724ee6ec9713 dma-resv: Give the docs a do-over
8c4011c29394 drm/i915: Don't break exclusive fence ordering
ab0a3f52cac3 drm/i915: delete exclude argument from i915_sw_fence_await_reservation
2eb5ca447466 drm/etnaviv: Don't break exclusive fence ordering
a3c9153955a4 drm/msm: Don't break exclusive fence ordering
7650a6f74b18 drm/sched: Check locking in drm_sched_job_await_implicit
8f51a69d4e74 drm/sched: Don't store self-dependencies
e5b7840798ca drm/gem: Delete gem array fencing helpers
9f2a9ecfea9c drm/msm: Use scheduler dependency handling
e63e89cc8ac5 drm/etnaviv: Use scheduler dependency handling
2c445c2eb7fe drm/v3d: Use scheduler dependency handling
1663a9467a04 drm/v3d: Move drm_sched_job_init to v3d_job_init
ca1c5aec7cde drm/lima: use scheduler dependency tracking
6687763f729e drm/panfrost: use scheduler dependency tracking
f4b4e005b964 drm/sched: improve docs around drm_sched_entity
ebfbb6077485 drm/sched: drop entity parameter from drm_sched_push_job
255f53586a60 drm/sched: Add dependency tracking
5b5164ff17f2 drm/sched: Barriers are needed for entity->last_scheduled
27dbe1a630f0 drm/msm: Improve drm/sched point of no return rules
0d891258e40a drm/sched: Split drm_sched_job_init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20836/index.html

--===============6220944561156930583==
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
<tr><td><b>Series:</b></td><td>drm/sched dependency handling and implicit sync fixes (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93415/">https://patchwork.freedesktop.org/series/93415/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20836/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20836/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10490 -&gt; Patchwork_20836</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20836/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20836 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20836/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20836/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20836/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10490 -&gt; Patchwork_20836</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10490: 3bd74b377986fcb89cf4563629f97c5b3199ca6f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6177: f474644e7226dd319195ca03b3cde82ad10ac54c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20836: 724ee6ec97135c8a4fd57f8b19d9802834ad62fc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>724ee6ec9713 dma-resv: Give the docs a do-over<br />
8c4011c29394 drm/i915: Don't break exclusive fence ordering<br />
ab0a3f52cac3 drm/i915: delete exclude argument from i915_sw_fence_await_reservation<br />
2eb5ca447466 drm/etnaviv: Don't break exclusive fence ordering<br />
a3c9153955a4 drm/msm: Don't break exclusive fence ordering<br />
7650a6f74b18 drm/sched: Check locking in drm_sched_job_await_implicit<br />
8f51a69d4e74 drm/sched: Don't store self-dependencies<br />
e5b7840798ca drm/gem: Delete gem array fencing helpers<br />
9f2a9ecfea9c drm/msm: Use scheduler dependency handling<br />
e63e89cc8ac5 drm/etnaviv: Use scheduler dependency handling<br />
2c445c2eb7fe drm/v3d: Use scheduler dependency handling<br />
1663a9467a04 drm/v3d: Move drm_sched_job_init to v3d_job_init<br />
ca1c5aec7cde drm/lima: use scheduler dependency tracking<br />
6687763f729e drm/panfrost: use scheduler dependency tracking<br />
f4b4e005b964 drm/sched: improve docs around drm_sched_entity<br />
ebfbb6077485 drm/sched: drop entity parameter from drm_sched_push_job<br />
255f53586a60 drm/sched: Add dependency tracking<br />
5b5164ff17f2 drm/sched: Barriers are needed for entity-&gt;last_scheduled<br />
27dbe1a630f0 drm/msm: Improve drm/sched point of no return rules<br />
0d891258e40a drm/sched: Split drm_sched_job_init</p>

</body>
</html>

--===============6220944561156930583==--
