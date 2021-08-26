Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EA13F8958
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 15:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D2656E852;
	Thu, 26 Aug 2021 13:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 443906E852;
 Thu, 26 Aug 2021 13:48:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 402C1AA915;
 Thu, 26 Aug 2021 13:48:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4586219153876154645=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 13:48:19 -0000
Message-ID: <162998569925.15050.14983023035502133439@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/sched_dependency_handling_and_implicit_sync_fixes_=28rev5=29?=
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

--===============4586219153876154645==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/sched dependency handling and implicit sync fixes (rev5)
URL   : https://patchwork.freedesktop.org/series/93415/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10525 -> Patchwork_20901
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20901/index.html

Known issues
------------

  Here are the changes found in Patchwork_20901 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [PASS][1] -> [DMESG-FAIL][2] ([i915#2373])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20901/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [PASS][3] -> [DMESG-FAIL][4] ([i915#3928])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20901/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][5] ([i915#3928])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20901/fi-rkl-guc/igt@runner@aborted.html

  
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928


Participating hosts (40 -> 33)
------------------------------

  Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10525 -> Patchwork_20901

  CI-20190529: 20190529
  CI_DRM_10525: 059309d37ac2de5d93cf6d71fd7fe33c9c2c66ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20901: d83acd41677bc9968b313704bf42b3c12ea6d018 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d83acd41677b dma-resv: Give the docs a do-over
4f9da5ea4882 drm/i915: Don't break exclusive fence ordering
6f297c479190 drm/i915: delete exclude argument from i915_sw_fence_await_reservation
335ff7e05f44 drm/etnaviv: Don't break exclusive fence ordering
9578a0679e6b drm/msm: Don't break exclusive fence ordering
89463913c4ad drm/sched: Check locking in drm_sched_job_await_implicit
3d4cc3335c0e drm/sched: Don't store self-dependencies
9de878031434 drm/gem: Delete gem array fencing helpers
2e8edd04f89c drm/msm: Use scheduler dependency handling
164bbe5be15b drm/etnaviv: Use scheduler dependency handling
79d00ee75ee5 drm/v3d: Use scheduler dependency handling
563fd199edf5 drm/v3d: Move drm_sched_job_init to v3d_job_init
c8f3842d2afd drm/lima: use scheduler dependency tracking
e31bfc2e79ff drm/panfrost: use scheduler dependency tracking
ea09670e5838 drm/sched: improve docs around drm_sched_entity
fcd4fea4cae3 drm/sched: drop entity parameter from drm_sched_push_job
4bfa4c96b80c drm/sched: Add dependency tracking
b4bf87348863 drm/sched: Barriers are needed for entity->last_scheduled
b5c679582c27 drm/msm: Improve drm/sched point of no return rules
5cdf79bc4298 drm/sched: Split drm_sched_job_init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20901/index.html

--===============4586219153876154645==
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
<tr><td><b>Series:</b></td><td>drm/sched dependency handling and implicit sync fixes (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93415/">https://patchwork.freedesktop.org/series/93415/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20901/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20901/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10525 -&gt; Patchwork_20901</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20901/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20901 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20901/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20901/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20901/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 33)</h2>
<p>Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10525 -&gt; Patchwork_20901</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10525: 059309d37ac2de5d93cf6d71fd7fe33c9c2c66ea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20901: d83acd41677bc9968b313704bf42b3c12ea6d018 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d83acd41677b dma-resv: Give the docs a do-over<br />
4f9da5ea4882 drm/i915: Don't break exclusive fence ordering<br />
6f297c479190 drm/i915: delete exclude argument from i915_sw_fence_await_reservation<br />
335ff7e05f44 drm/etnaviv: Don't break exclusive fence ordering<br />
9578a0679e6b drm/msm: Don't break exclusive fence ordering<br />
89463913c4ad drm/sched: Check locking in drm_sched_job_await_implicit<br />
3d4cc3335c0e drm/sched: Don't store self-dependencies<br />
9de878031434 drm/gem: Delete gem array fencing helpers<br />
2e8edd04f89c drm/msm: Use scheduler dependency handling<br />
164bbe5be15b drm/etnaviv: Use scheduler dependency handling<br />
79d00ee75ee5 drm/v3d: Use scheduler dependency handling<br />
563fd199edf5 drm/v3d: Move drm_sched_job_init to v3d_job_init<br />
c8f3842d2afd drm/lima: use scheduler dependency tracking<br />
e31bfc2e79ff drm/panfrost: use scheduler dependency tracking<br />
ea09670e5838 drm/sched: improve docs around drm_sched_entity<br />
fcd4fea4cae3 drm/sched: drop entity parameter from drm_sched_push_job<br />
4bfa4c96b80c drm/sched: Add dependency tracking<br />
b4bf87348863 drm/sched: Barriers are needed for entity-&gt;last_scheduled<br />
b5c679582c27 drm/msm: Improve drm/sched point of no return rules<br />
5cdf79bc4298 drm/sched: Split drm_sched_job_init</p>

</body>
</html>

--===============4586219153876154645==--
