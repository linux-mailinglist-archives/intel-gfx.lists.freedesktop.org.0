Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 701463E16F1
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 16:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DCF46EA7E;
	Thu,  5 Aug 2021 14:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C0966EA7E;
 Thu,  5 Aug 2021 14:29:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 73135A8830;
 Thu,  5 Aug 2021 14:29:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3593414121805746479=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 05 Aug 2021 14:29:01 -0000
Message-ID: <162817374144.30836.12714515379161102316@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/sched_dependency_handling_and_implicit_sync_fixes?=
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

--===============3593414121805746479==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/sched dependency handling and implicit sync fixes
URL   : https://patchwork.freedesktop.org/series/93415/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10450 -> Patchwork_20773
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20773 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20773, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20773/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20773:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10450/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20773/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_20773 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20773/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][4] ([i915#3462])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20773/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][5] ([i915#2940]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10450/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20773/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462


Participating hosts (40 -> 34)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10450 -> Patchwork_20773

  CI-20190529: 20190529
  CI_DRM_10450: 51d9c8293e8446e921b74d996982ade862fcfa5c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6160: 4287344dd6a39d9036c5fb9a047a7d8f10bee981 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20773: 2836aa5b3f16292d5043778e200038dc658fa8b1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2836aa5b3f16 dma-resv: Give the docs a do-over
c023ae95f5f1 drm/i915: Don't break exclusive fence ordering
9a678298fbf9 drm/i915: delete exclude argument from i915_sw_fence_await_reservation
8d1e08eee56b drm/etnaviv: Don't break exclusive fence ordering
0691454484ff drm/msm: Don't break exclusive fence ordering
7768c5a01737 drm/sched: Check locking in drm_sched_job_await_implicit
a0a15e60e8a4 drm/sched: Don't store self-dependencies
c4596cb48171 drm/gem: Delete gem array fencing helpers
914d59644238 drm/msm: Use scheduler dependency handling
94e8ea6bdac4 drm/etnaviv: Use scheduler dependency handling
43177403c5b4 drm/v3d: Use scheduler dependency handling
e94f03075601 drm/v3d: Move drm_sched_job_init to v3d_job_init
1074a5fc4e39 drm/lima: use scheduler dependency tracking
42d75ea77670 drm/panfrost: use scheduler dependency tracking
3ed6103f784e drm/sched: improve docs around drm_sched_entity
4578cd7fba03 drm/sched: drop entity parameter from drm_sched_push_job
bcde98968570 drm/sched: Add dependency tracking
590f3db49271 drm/sched: Barriers are needed for entity->last_scheduled
e8aa4762329c drm/msm: Fix drm/sched point of no return rules
fbee9b54db37 drm/sched: Split drm_sched_job_init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20773/index.html

--===============3593414121805746479==
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
<tr><td><b>Series:</b></td><td>drm/sched dependency handling and implicit sync fixes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93415/">https://patchwork.freedesktop.org/series/93415/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20773/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20773/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10450 -&gt; Patchwork_20773</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20773 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20773, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20773/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20773:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10450/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20773/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20773 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20773/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20773/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10450/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20773/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 34)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10450 -&gt; Patchwork_20773</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10450: 51d9c8293e8446e921b74d996982ade862fcfa5c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6160: 4287344dd6a39d9036c5fb9a047a7d8f10bee981 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20773: 2836aa5b3f16292d5043778e200038dc658fa8b1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2836aa5b3f16 dma-resv: Give the docs a do-over<br />
c023ae95f5f1 drm/i915: Don't break exclusive fence ordering<br />
9a678298fbf9 drm/i915: delete exclude argument from i915_sw_fence_await_reservation<br />
8d1e08eee56b drm/etnaviv: Don't break exclusive fence ordering<br />
0691454484ff drm/msm: Don't break exclusive fence ordering<br />
7768c5a01737 drm/sched: Check locking in drm_sched_job_await_implicit<br />
a0a15e60e8a4 drm/sched: Don't store self-dependencies<br />
c4596cb48171 drm/gem: Delete gem array fencing helpers<br />
914d59644238 drm/msm: Use scheduler dependency handling<br />
94e8ea6bdac4 drm/etnaviv: Use scheduler dependency handling<br />
43177403c5b4 drm/v3d: Use scheduler dependency handling<br />
e94f03075601 drm/v3d: Move drm_sched_job_init to v3d_job_init<br />
1074a5fc4e39 drm/lima: use scheduler dependency tracking<br />
42d75ea77670 drm/panfrost: use scheduler dependency tracking<br />
3ed6103f784e drm/sched: improve docs around drm_sched_entity<br />
4578cd7fba03 drm/sched: drop entity parameter from drm_sched_push_job<br />
bcde98968570 drm/sched: Add dependency tracking<br />
590f3db49271 drm/sched: Barriers are needed for entity-&gt;last_scheduled<br />
e8aa4762329c drm/msm: Fix drm/sched point of no return rules<br />
fbee9b54db37 drm/sched: Split drm_sched_job_init</p>

</body>
</html>

--===============3593414121805746479==--
