Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88ADF3C6552
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 23:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5CB189E5F;
	Mon, 12 Jul 2021 21:13:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9852E89E63;
 Mon, 12 Jul 2021 21:13:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91199AA916;
 Mon, 12 Jul 2021 21:13:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 12 Jul 2021 21:13:27 -0000
Message-ID: <162612440756.23769.1207463585291420103@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/sched_dependency_tracking_and_dma-resv_fixes_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1605197262=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1605197262==
Content-Type: multipart/alternative;
 boundary="===============3482112758783245784=="

--===============3482112758783245784==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/sched dependency tracking and dma-resv fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/92333/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10335 -> Patchwork_20579
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20579/index.html


Changes
-------

  No changes found


Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10335 -> Patchwork_20579

  CI-20190529: 20190529
  CI_DRM_10335: 6420d4c905cfd9a9098c7ab339992eafa628de4d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6134: cd63c83e23789eb194d38b8d272247a88122f2f6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20579: d021158c3459d5aac4284f2c2d1ba6d2a3224523 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d021158c3459 dma-resv: Give the docs a do-over
e51083333682 drm/i915: Don't break exclusive fence ordering
d071ad427447 drm/i915: delete exclude argument from i915_sw_fence_await_reservation
62518f586849 drm/etnaviv: Don't break exclusive fence ordering
cacd99895adb drm/msm: Don't break exclusive fence ordering
bf91d1bed9e0 drm/sched: Check locking in drm_sched_job_await_implicit
a29b9a4e9a6f drm/sched: Don't store self-dependencies
10bbe7e47ff2 drm/gem: Delete gem array fencing helpers
f2e5d8c0db05 drm/etnaviv: Use scheduler dependency handling
ec9e93816f9b drm/v3d: Use scheduler dependency handling
b021a09fdfd1 drm/v3d: Move drm_sched_job_init to v3d_job_init
c7f6cb0870bb drm/lima: use scheduler dependency tracking
029320ff7db6 drm/panfrost: use scheduler dependency tracking
a1900803cd8b drm/sched: improve docs around drm_sched_entity
8a6181903dc0 drm/sched: drop entity parameter from drm_sched_push_job
1117822b2255 drm/sched: Add dependency tracking
cd01cdfb93e7 drm/sched: Barriers are needed for entity->last_scheduled
fa00bbda8116 drm/sched: Split drm_sched_job_init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20579/index.html

--===============3482112758783245784==
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
<tr><td><b>Series:</b></td><td>drm/sched dependency tracking and dma-resv fixes (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92333/">https://patchwork.freedesktop.org/series/92333/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20579/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20579/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10335 -&gt; Patchwork_20579</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20579/index.html</p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10335 -&gt; Patchwork_20579</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10335: 6420d4c905cfd9a9098c7ab339992eafa628de4d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6134: cd63c83e23789eb194d38b8d272247a88122f2f6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20579: d021158c3459d5aac4284f2c2d1ba6d2a3224523 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d021158c3459 dma-resv: Give the docs a do-over<br />
e51083333682 drm/i915: Don't break exclusive fence ordering<br />
d071ad427447 drm/i915: delete exclude argument from i915_sw_fence_await_reservation<br />
62518f586849 drm/etnaviv: Don't break exclusive fence ordering<br />
cacd99895adb drm/msm: Don't break exclusive fence ordering<br />
bf91d1bed9e0 drm/sched: Check locking in drm_sched_job_await_implicit<br />
a29b9a4e9a6f drm/sched: Don't store self-dependencies<br />
10bbe7e47ff2 drm/gem: Delete gem array fencing helpers<br />
f2e5d8c0db05 drm/etnaviv: Use scheduler dependency handling<br />
ec9e93816f9b drm/v3d: Use scheduler dependency handling<br />
b021a09fdfd1 drm/v3d: Move drm_sched_job_init to v3d_job_init<br />
c7f6cb0870bb drm/lima: use scheduler dependency tracking<br />
029320ff7db6 drm/panfrost: use scheduler dependency tracking<br />
a1900803cd8b drm/sched: improve docs around drm_sched_entity<br />
8a6181903dc0 drm/sched: drop entity parameter from drm_sched_push_job<br />
1117822b2255 drm/sched: Add dependency tracking<br />
cd01cdfb93e7 drm/sched: Barriers are needed for entity-&gt;last_scheduled<br />
fa00bbda8116 drm/sched: Split drm_sched_job_init</p>

</body>
</html>

--===============3482112758783245784==--

--===============1605197262==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1605197262==--
