Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CC13C1CB9
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 02:29:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04B8C6E528;
	Fri,  9 Jul 2021 00:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82B026E528;
 Fri,  9 Jul 2021 00:29:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74D27A47E2;
 Fri,  9 Jul 2021 00:29:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 09 Jul 2021 00:29:34 -0000
Message-ID: <162579057445.9812.3207674675421415434@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/sched_dependency_tracking_and_dma-resv_fixes_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============2037021335=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2037021335==
Content-Type: multipart/alternative;
 boundary="===============5600841543635888764=="

--===============5600841543635888764==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/sched dependency tracking and dma-resv fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/92333/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10320 -> Patchwork_20559
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20559/index.html


Changes
-------

  No changes found


Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_10320 -> Patchwork_20559

  CI-20190529: 20190529
  CI_DRM_10320: 7d61ab4a59bcbb206324b6a430748b4c15dd8adb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6132: 61fb9cdf2a9132e3618c8b08b9d20fec0c347831 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20559: ca32cb2b56ef01204baff47cde1058e14ddf23ca @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ca32cb2b56ef dma-resv: Give the docs a do-over
10b231f895fe drm/i915: Don't break exclusive fence ordering
56fc78cd5073 drm/i915: delete exclude argument from i915_sw_fence_await_reservation
d022184c169b drm/etnaviv: Don't break exclusive fence ordering
9e395399b983 drm/msm: always wait for the exclusive fence
b149f2ca5c3f drm/msm: Don't break exclusive fence ordering
6219e79695d6 drm/sched: Check locking in drm_sched_job_await_implicit
588331541d89 drm/sched: Don't store self-dependencies
28feb868173e drm/gem: Delete gem array fencing helpers
5e34a7c752a3 drm/etnaviv: Use scheduler dependency handling
d4fa82c9c97f drm/v3d: Use scheduler dependency handling
34e837ac1d7b drm/v3d: Move drm_sched_job_init to v3d_job_init
a51bbbac956b drm/lima: use scheduler dependency tracking
dca5c513ac3d drm/panfrost: use scheduler dependency tracking
f46108672694 drm/sched: improve docs around drm_sched_entity
6f8a6dac8300 drm/sched: drop entity parameter from drm_sched_push_job
2554ae9762d1 drm/sched: Add dependency tracking
998b636c6f3c drm/sched: Barriers are needed for entity->last_scheduled
3afe40cffa3e drm/sched: Split drm_sched_job_init
aa63f4780928 drm/sched: entity->rq selection cannot fail

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20559/index.html

--===============5600841543635888764==
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
<tr><td><b>Series:</b></td><td>drm/sched dependency tracking and dma-resv fixes (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92333/">https://patchwork.freedesktop.org/series/92333/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20559/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20559/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10320 -&gt; Patchwork_20559</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20559/index.html</p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10320 -&gt; Patchwork_20559</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10320: 7d61ab4a59bcbb206324b6a430748b4c15dd8adb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6132: 61fb9cdf2a9132e3618c8b08b9d20fec0c347831 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20559: ca32cb2b56ef01204baff47cde1058e14ddf23ca @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ca32cb2b56ef dma-resv: Give the docs a do-over<br />
10b231f895fe drm/i915: Don't break exclusive fence ordering<br />
56fc78cd5073 drm/i915: delete exclude argument from i915_sw_fence_await_reservation<br />
d022184c169b drm/etnaviv: Don't break exclusive fence ordering<br />
9e395399b983 drm/msm: always wait for the exclusive fence<br />
b149f2ca5c3f drm/msm: Don't break exclusive fence ordering<br />
6219e79695d6 drm/sched: Check locking in drm_sched_job_await_implicit<br />
588331541d89 drm/sched: Don't store self-dependencies<br />
28feb868173e drm/gem: Delete gem array fencing helpers<br />
5e34a7c752a3 drm/etnaviv: Use scheduler dependency handling<br />
d4fa82c9c97f drm/v3d: Use scheduler dependency handling<br />
34e837ac1d7b drm/v3d: Move drm_sched_job_init to v3d_job_init<br />
a51bbbac956b drm/lima: use scheduler dependency tracking<br />
dca5c513ac3d drm/panfrost: use scheduler dependency tracking<br />
f46108672694 drm/sched: improve docs around drm_sched_entity<br />
6f8a6dac8300 drm/sched: drop entity parameter from drm_sched_push_job<br />
2554ae9762d1 drm/sched: Add dependency tracking<br />
998b636c6f3c drm/sched: Barriers are needed for entity-&gt;last_scheduled<br />
3afe40cffa3e drm/sched: Split drm_sched_job_init<br />
aa63f4780928 drm/sched: entity-&gt;rq selection cannot fail</p>

</body>
</html>

--===============5600841543635888764==--

--===============2037021335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2037021335==--
