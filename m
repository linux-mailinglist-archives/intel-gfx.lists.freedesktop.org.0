Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 194552F8641
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 21:07:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30A206E47E;
	Fri, 15 Jan 2021 20:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0009F6E15C;
 Fri, 15 Jan 2021 20:07:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E70B8A0BCB;
 Fri, 15 Jan 2021 20:07:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 15 Jan 2021 20:07:40 -0000
Message-ID: <161074126091.28530.838172079831676542@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210115142331.24458-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210115142331.24458-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/5=5D_drm/i915/gt=3A_Drop_atomic_for?=
 =?utf-8?q?_engine-=3Efw=5Factive_tracking?=
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
Content-Type: multipart/mixed; boundary="===============0696429679=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0696429679==
Content-Type: multipart/alternative;
 boundary="===============5190368981114843206=="

--===============5190368981114843206==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/5] drm/i915/gt: Drop atomic for engine->fw_active tracking
URL   : https://patchwork.freedesktop.org/series/85918/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9624 -> Patchwork_19374
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/index.html

Known issues
------------

  Here are the changes found in Patchwork_19374 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9624/fi-tgl-y/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/fi-tgl-y/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [PASS][3] -> [DMESG-FAIL][4] ([i915#2601])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9624/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [PASS][5] -> [DMESG-FAIL][6] ([i915#165])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9624/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@gem_render_tiled_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9624/fi-tgl-y/igt@gem_render_tiled_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/fi-tgl-y/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live@blt:
    - fi-snb-2600:        [DMESG-FAIL][9] ([i915#1409]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9624/fi-snb-2600/igt@i915_selftest@live@blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/fi-snb-2600/igt@i915_selftest@live@blt.html

  
  [i915#1409]: https://gitlab.freedesktop.org/drm/intel/issues/1409
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9624 -> Patchwork_19374

  CI-20190529: 20190529
  CI_DRM_9624: c94178b94789eadad87ec0e784572da0f288db55 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19374: 28424141f3988a8754ffb70d518da940af543ffb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

28424141f398 drm/i915/gt: Reduce GT runtime stats from seqlock to a latch
56c9de4a1a02 drm/i915/gt: Reduce engine runtime stats from seqlock to a latch
7526f846d1e4 drm/i915/gt: Convert stats.active to plain unsigned int
b295d2132106 drm/i915/gt: Extract busy-stats for ring-scheduler
1b415ca0d734 drm/i915/gt: Drop atomic for engine->fw_active tracking

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/index.html

--===============5190368981114843206==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/5] drm/i915/gt: Drop atomic for engine-&gt;fw_active tracking</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85918/">https://patchwork.freedesktop.org/series/85918/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9624 -&gt; Patchwork_19374</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19374 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9624/fi-tgl-y/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/fi-tgl-y/igt@gem_close_race@basic-threads.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9624/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9624/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9624/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@blt:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9624/fi-snb-2600/igt@i915_selftest@live@blt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1409">i915#1409</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19374/fi-snb-2600/igt@i915_selftest@live@blt.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9624 -&gt; Patchwork_19374</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9624: c94178b94789eadad87ec0e784572da0f288db55 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19374: 28424141f3988a8754ffb70d518da940af543ffb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>28424141f398 drm/i915/gt: Reduce GT runtime stats from seqlock to a latch<br />
56c9de4a1a02 drm/i915/gt: Reduce engine runtime stats from seqlock to a latch<br />
7526f846d1e4 drm/i915/gt: Convert stats.active to plain unsigned int<br />
b295d2132106 drm/i915/gt: Extract busy-stats for ring-scheduler<br />
1b415ca0d734 drm/i915/gt: Drop atomic for engine-&gt;fw_active tracking</p>

</body>
</html>

--===============5190368981114843206==--

--===============0696429679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0696429679==--
