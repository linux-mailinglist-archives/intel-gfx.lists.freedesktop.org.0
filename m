Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6BA2D9645
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:25:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 919CB6E151;
	Mon, 14 Dec 2020 10:25:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7BEC56E151;
 Mon, 14 Dec 2020 10:25:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7547CA41FB;
 Mon, 14 Dec 2020 10:25:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Mon, 14 Dec 2020 10:25:44 -0000
Message-ID: <160794154445.28166.10723064884854455011@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201214094349.3563876-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20201214094349.3563876-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/pmu=3A_Don=27t_grab_w?=
 =?utf-8?q?akeref_when_enabling_events?=
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
Content-Type: multipart/mixed; boundary="===============1809259195=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1809259195==
Content-Type: multipart/alternative;
 boundary="===============5805690308894650334=="

--===============5805690308894650334==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/3] drm/i915/pmu: Don't grab wakeref when enabling events
URL   : https://patchwork.freedesktop.org/series/84898/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9478 -> Patchwork_19132
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19132/index.html

Known issues
------------

  Here are the changes found in Patchwork_19132 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#2411] / [i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19132/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19132/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][5] ([i915#2029] / [i915#2722])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19132/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - fi-tgl-y:           [DMESG-WARN][6] ([i915#402]) -> [PASS][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/fi-tgl-y/igt@fbdev@read.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19132/fi-tgl-y/igt@fbdev@read.html

  
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (42 -> 38)
------------------------------

  Missing    (4): fi-blb-e6850 fi-hsw-4200u fi-bdw-samus fi-bsw-n3050 


Build changes
-------------

  * Linux: CI_DRM_9478 -> Patchwork_19132

  CI-20190529: 20190529
  CI_DRM_9478: 94cf3a4cc350324f21728c70954c46e535405c87 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5890: 0e209dc3cd7561a57ec45be74b8b299eaf391950 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19132: d781b1a46f9cd54e6dd1c7ee0c47beafd4918dda @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d781b1a46f9c drm/i915/pmu: Remove !CONFIG_PM code
e28201228e02 drm/i915/pmu: Use raw clock for rc6 estimation
5f62030b7d49 drm/i915/pmu: Don't grab wakeref when enabling events

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19132/index.html

--===============5805690308894650334==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/3] drm/i915/pmu: Don&#39;t grab wakeref when enabling events</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84898/">https://patchwork.freedesktop.org/series/84898/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19132/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19132/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9478 -&gt; Patchwork_19132</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19132/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19132 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19132/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19132/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19132/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@fbdev@read:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19132/fi-tgl-y/igt@fbdev@read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Missing    (4): fi-blb-e6850 fi-hsw-4200u fi-bdw-samus fi-bsw-n3050 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9478 -&gt; Patchwork_19132</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9478: 94cf3a4cc350324f21728c70954c46e535405c87 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5890: 0e209dc3cd7561a57ec45be74b8b299eaf391950 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19132: d781b1a46f9cd54e6dd1c7ee0c47beafd4918dda @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d781b1a46f9c drm/i915/pmu: Remove !CONFIG_PM code<br />
e28201228e02 drm/i915/pmu: Use raw clock for rc6 estimation<br />
5f62030b7d49 drm/i915/pmu: Don't grab wakeref when enabling events</p>

</body>
</html>

--===============5805690308894650334==--

--===============1809259195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1809259195==--
