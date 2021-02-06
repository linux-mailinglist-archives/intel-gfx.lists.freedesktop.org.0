Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED59311982
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 04:10:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 972836E3D8;
	Sat,  6 Feb 2021 03:10:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A4BB06E3D6;
 Sat,  6 Feb 2021 03:10:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 988C9A47DB;
 Sat,  6 Feb 2021 03:10:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 06 Feb 2021 03:10:36 -0000
Message-ID: <161258103658.3572.8189596797102489990@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210206012019.27451-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210206012019.27451-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/5=5D_drm/i915=3A_Wrap_access_to_int?=
 =?utf-8?q?el=5Fengine=2Eactive?=
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
Content-Type: multipart/mixed; boundary="===============1717110357=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1717110357==
Content-Type: multipart/alternative;
 boundary="===============1706347048377777847=="

--===============1706347048377777847==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/5] drm/i915: Wrap access to intel_engine.active
URL   : https://patchwork.freedesktop.org/series/86797/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9741 -> Patchwork_19616
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19616/index.html

Known issues
------------

  Here are the changes found in Patchwork_19616 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@bad-flink:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-y/igt@gem_flink_basic@bad-flink.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19616/fi-tgl-y/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#2940])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19616/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19616/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [FAIL][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-u2/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19616/fi-tgl-u2/igt@i915_module_load@reload.html

  
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9741 -> Patchwork_19616

  CI-20190529: 20190529
  CI_DRM_9741: 439ad4a70b3d6663de543ee56478d64b16cca1cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5994: 53268fc5e5dde45a16e7185023a42296e3599e6e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19616: fe5dd19adf5026f38936cca144d34133e1a84daa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fe5dd19adf50 drm/i915/gt: Only kick the scheduler on timeslice/preemption change
f993a982c9ad drm/i915: Move tasklet from execlists to sched
c4249043eb53 drm/i915: Move scheduler queue
69d8dcdc66c1 drm/i915: Move common active lists from engine to i915_scheduler
ced9b3f47b92 drm/i915: Wrap access to intel_engine.active

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19616/index.html

--===============1706347048377777847==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/5] drm/i915: Wrap access to intel_engine.active</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86797/">https://patchwork.freedesktop.org/series/86797/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19616/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19616/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9741 -&gt; Patchwork_19616</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19616/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19616 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19616/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19616/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19616/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-u2/igt@i915_module_load@reload.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19616/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9741 -&gt; Patchwork_19616</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9741: 439ad4a70b3d6663de543ee56478d64b16cca1cf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5994: 53268fc5e5dde45a16e7185023a42296e3599e6e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19616: fe5dd19adf5026f38936cca144d34133e1a84daa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fe5dd19adf50 drm/i915/gt: Only kick the scheduler on timeslice/preemption change<br />
f993a982c9ad drm/i915: Move tasklet from execlists to sched<br />
c4249043eb53 drm/i915: Move scheduler queue<br />
69d8dcdc66c1 drm/i915: Move common active lists from engine to i915_scheduler<br />
ced9b3f47b92 drm/i915: Wrap access to intel_engine.active</p>

</body>
</html>

--===============1706347048377777847==--

--===============1717110357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1717110357==--
