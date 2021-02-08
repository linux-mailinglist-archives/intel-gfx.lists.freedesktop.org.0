Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2523138FD
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 17:13:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD026E941;
	Mon,  8 Feb 2021 16:13:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 469626E940;
 Mon,  8 Feb 2021 16:13:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40519A47E8;
 Mon,  8 Feb 2021 16:13:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 08 Feb 2021 16:13:11 -0000
Message-ID: <161280079123.27714.2619800074853147230@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/31=5D_drm/i915/gt=3A_Ratelimit_heartbea?=
 =?utf-8?q?t_completion_probing?=
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
Content-Type: multipart/mixed; boundary="===============2002944463=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2002944463==
Content-Type: multipart/alternative;
 boundary="===============0175355642663060188=="

--===============0175355642663060188==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/31] drm/i915/gt: Ratelimit heartbeat completion probing
URL   : https://patchwork.freedesktop.org/series/86841/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9747 -> Patchwork_19626
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19626 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19626, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19626:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_19626 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][3] ([fdo#109271]) +25 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271]) +23 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#2411] / [i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#2190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][9] ([i915#1886] / [i915#2291])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-7500u:       [PASS][11] -> [FAIL][12] ([i915#2128])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-cfl-8700k/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#533])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#533])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][16] -> [DMESG-WARN][17] ([i915#402]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [DMESG-WARN][18] ([i915#402]) -> [PASS][19] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2128]: https://gitlab.freedesktop.org/drm/intel/issues/2128
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (42 -> 38)
------------------------------

  Additional (2): fi-kbl-soraka fi-cfl-8700k 
  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9747 -> Patchwork_19626

  CI-20190529: 20190529
  CI_DRM_9747: 65d67e70f9f78c7f8c2796956fdbdb69cffc7c98 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5998: b0160aad9e547d2205341e0b6783e12aa143566e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19626: c652a65f34ac9ee26182b9924bb868d889a13f30 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c652a65f34ac drm/i915/gt: Limit C-states while waiting for requests
8412a0fc0ad0 drm/i915: Support secure dispatch on gen6/gen7
ce6065610e18 drm/i915/gt: Enable ring scheduling for gen5-7
282aad02df82 drm/i915/gt: Implement ring scheduler for gen4-7
d11da5d6110b drm/i915/gt: Infrastructure for ring scheduling
a1edb8d6fe76 drm/i915/gt: Use client timeline address for seqno writes
681705c8f00d drm/i915/gt: Support creation of 'internal' rings
1f38aec71c0a Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
3510121480a9 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
b755887ce2eb drm/i915/selftests: Exercise relative timeline modes
75d076c67057 drm/i915/gt: Use indices for writing into relative timelines
cbdded299ad1 drm/i915/gt: Add timeline "mode"
186491248d9b drm/i915/gt: Track timeline GGTT offset separately from subpage offset
b8c672225e3d drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
8b8ee05f1953 drm/i915/gt: Convert the legacy ring submission to use the scheduling interface
2091c45fb062 drm/i915/gt: Delay taking irqoff for execlists submission
4109a26f879f drm/i915: Bump default timeslicing quantum to 5ms
27f940af2d22 drm/i915: Move saturated workload detection back to the context
d8b43dca33f0 drm/i915/gt: Support virtual engine queues
022c4065c1a9 drm/i915: Extend the priority boosting for the display with a deadline
9a611ddd1f7a drm/i915/gt: Specify a deadline for the heartbeat
dbfb352bf7b0 drm/i915: Fair low-latency scheduling
029c20aa2d56 drm/i915: Replace priolist rbtree with a skiplist
b5a1080e1523 drm/i915: Fix the iterative dfs for defering requests
7a092999c7b2 drm/i915: Move preempt-reset flag to the scheduler
483235989602 drm/i915: Move busywaiting control to the scheduler
4ab52e53c2c0 drm/i915/gt: Declare when we enabled timeslicing
5b350d2836cf drm/i915: Move timeslicing flag to scheduler
3dbe5f872455 drm/i915: Introduce the scheduling mode
2494ed145240 drm/i915: Move context revocation to scheduler
206aa3c9677c drm/i915/gt: Ratelimit heartbeat completion probing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/index.html

--===============0175355642663060188==
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
<tr><td><b>Series:</b></td><td>series starting with [01/31] drm/i915/gt: Ratelimit heartbeat completion probing</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86841/">https://patchwork.freedesktop.org/series/86841/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9747 -&gt; Patchwork_19626</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19626 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19626, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19626:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19626 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2128">i915#2128</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-cfl-8700k/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_self_import@basic-with_two_bos:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19626/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Additional (2): fi-kbl-soraka fi-cfl-8700k <br />
  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9747 -&gt; Patchwork_19626</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9747: 65d67e70f9f78c7f8c2796956fdbdb69cffc7c98 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5998: b0160aad9e547d2205341e0b6783e12aa143566e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19626: c652a65f34ac9ee26182b9924bb868d889a13f30 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c652a65f34ac drm/i915/gt: Limit C-states while waiting for requests<br />
8412a0fc0ad0 drm/i915: Support secure dispatch on gen6/gen7<br />
ce6065610e18 drm/i915/gt: Enable ring scheduling for gen5-7<br />
282aad02df82 drm/i915/gt: Implement ring scheduler for gen4-7<br />
d11da5d6110b drm/i915/gt: Infrastructure for ring scheduling<br />
a1edb8d6fe76 drm/i915/gt: Use client timeline address for seqno writes<br />
681705c8f00d drm/i915/gt: Support creation of 'internal' rings<br />
1f38aec71c0a Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"<br />
3510121480a9 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines<br />
b755887ce2eb drm/i915/selftests: Exercise relative timeline modes<br />
75d076c67057 drm/i915/gt: Use indices for writing into relative timelines<br />
cbdded299ad1 drm/i915/gt: Add timeline "mode"<br />
186491248d9b drm/i915/gt: Track timeline GGTT offset separately from subpage offset<br />
b8c672225e3d drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb<br />
8b8ee05f1953 drm/i915/gt: Convert the legacy ring submission to use the scheduling interface<br />
2091c45fb062 drm/i915/gt: Delay taking irqoff for execlists submission<br />
4109a26f879f drm/i915: Bump default timeslicing quantum to 5ms<br />
27f940af2d22 drm/i915: Move saturated workload detection back to the context<br />
d8b43dca33f0 drm/i915/gt: Support virtual engine queues<br />
022c4065c1a9 drm/i915: Extend the priority boosting for the display with a deadline<br />
9a611ddd1f7a drm/i915/gt: Specify a deadline for the heartbeat<br />
dbfb352bf7b0 drm/i915: Fair low-latency scheduling<br />
029c20aa2d56 drm/i915: Replace priolist rbtree with a skiplist<br />
b5a1080e1523 drm/i915: Fix the iterative dfs for defering requests<br />
7a092999c7b2 drm/i915: Move preempt-reset flag to the scheduler<br />
483235989602 drm/i915: Move busywaiting control to the scheduler<br />
4ab52e53c2c0 drm/i915/gt: Declare when we enabled timeslicing<br />
5b350d2836cf drm/i915: Move timeslicing flag to scheduler<br />
3dbe5f872455 drm/i915: Introduce the scheduling mode<br />
2494ed145240 drm/i915: Move context revocation to scheduler<br />
206aa3c9677c drm/i915/gt: Ratelimit heartbeat completion probing</p>

</body>
</html>

--===============0175355642663060188==--

--===============2002944463==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2002944463==--
