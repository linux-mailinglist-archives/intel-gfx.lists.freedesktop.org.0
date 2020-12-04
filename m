Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B920C2CF1CD
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 17:23:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AC906E1A8;
	Fri,  4 Dec 2020 16:23:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 049966E1A7;
 Fri,  4 Dec 2020 16:23:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3B40A8835;
 Fri,  4 Dec 2020 16:23:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 04 Dec 2020 16:23:29 -0000
Message-ID: <160709900999.27540.9486824846050097718@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201204140315.24341-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201204140315.24341-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/24=5D_drm/i915=3A_Disable_outputs_durin?=
 =?utf-8?q?g_unregister?=
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
Content-Type: multipart/mixed; boundary="===============0810727708=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0810727708==
Content-Type: multipart/alternative;
 boundary="===============9113100511878446460=="

--===============9113100511878446460==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/24] drm/i915: Disable outputs during unregister
URL   : https://patchwork.freedesktop.org/series/84579/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9442 -> Patchwork_19058
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19058 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19058, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19058:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_timelines:
    - fi-skl-6600u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html
    - fi-bdw-5557u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-bdw-5557u/igt@i915_selftest@live@gt_timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-bdw-5557u/igt@i915_selftest@live@gt_timelines.html
    - fi-cfl-8109u:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-cfl-8109u/igt@i915_selftest@live@gt_timelines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-cfl-8109u/igt@i915_selftest@live@gt_timelines.html
    - fi-glk-dsi:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-glk-dsi/igt@i915_selftest@live@gt_timelines.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-glk-dsi/igt@i915_selftest@live@gt_timelines.html
    - fi-bsw-nick:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-bsw-nick/igt@i915_selftest@live@gt_timelines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-bsw-nick/igt@i915_selftest@live@gt_timelines.html
    - fi-tgl-y:           [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-tgl-y/igt@i915_selftest@live@gt_timelines.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-tgl-y/igt@i915_selftest@live@gt_timelines.html
    - fi-bsw-kefka:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-bsw-kefka/igt@i915_selftest@live@gt_timelines.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-bsw-kefka/igt@i915_selftest@live@gt_timelines.html
    - fi-cml-s:           [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-cml-s/igt@i915_selftest@live@gt_timelines.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-cml-s/igt@i915_selftest@live@gt_timelines.html
    - fi-kbl-soraka:      [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-kbl-soraka/igt@i915_selftest@live@gt_timelines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-kbl-soraka/igt@i915_selftest@live@gt_timelines.html
    - fi-bxt-dsi:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-bxt-dsi/igt@i915_selftest@live@gt_timelines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-bxt-dsi/igt@i915_selftest@live@gt_timelines.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9442 and Patchwork_19058:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 38 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19058 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_timelines:
    - fi-apl-guc:         [PASS][21] -> [INCOMPLETE][22] ([i915#2750])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [PASS][23] -> [DMESG-WARN][24] ([i915#165]) +27 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@vgem_basic@create:
    - fi-tgl-y:           [PASS][25] -> [DMESG-WARN][26] ([i915#402]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-tgl-y/igt@vgem_basic@create.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-tgl-y/igt@vgem_basic@create.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-blb-e6850:       [INCOMPLETE][27] ([i915#2540]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_create@basic:
    - fi-tgl-y:           [DMESG-WARN][29] ([i915#402]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-tgl-y/igt@gem_exec_create@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-tgl-y/igt@gem_exec_create@basic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][31] ([fdo#109271]) -> [FAIL][32] ([i915#579])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#2540]: https://gitlab.freedesktop.org/drm/intel/issues/2540
  [i915#2750]: https://gitlab.freedesktop.org/drm/intel/issues/2750
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9442 -> Patchwork_19058

  CI-20190529: 20190529
  CI_DRM_9442: 02c9a02a342173bd38a6c5210f1b047741a1b294 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5881: 10d4e2e9177eb747b9f2ab9122e3ab60e91654fb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19058: 9b4381eeec210dbc34edce5219547442d5a337e9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9b4381eeec21 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
17d6ab1a040c drm/i915/selftests: Exercise relative timeline modes
612cd1428563 drm/i915/gt: Use indices for writing into relative timelines
6d370b2a6ce1 drm/i915/gt: Add timeline "mode"
a4ec0db74fea drm/i915/gt: Track timeline GGTT offset separately from subpage offset
476117c64cb4 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
81943438c451 drm/i915/gt: Track all timelines created using the HWSP
a38be5734e47 drm/i915: Encode fence specific waitqueue behaviour into the wait.flags
794eff00db39 drm/i915/gt: Track the overall awake/busy time
68b8f9056a58 drm/i915/gem: Drop free_work for GEM contexts
7693cd2d83df drm/i915/gt: ce->inflight updates are now serialised
66f9cbe3938f drm/i915/gt: Simplify virtual engine handling for execlists_hold()
2553339dfe7a drm/i915/gt: Resubmit the virtual engine on schedule-out
44173d41aef0 drm/i915/gt: Shrink the critical section for irq signaling
bfc60ea87a1f drm/i915/gt: Remove virtual breadcrumb before transfer
22ca745b6b71 drm/i915/gt: Defer schedule_out until after the next dequeue
49b88baf972d drm/i915/gt: Decouple inflight virtual engines
ea79baee80ce drm/i915/gt: Use virtual_engine during execlists_dequeue
44f085d92e2c drm/i915/gt: Replace direct submit with direct call to tasklet
dbc53514f4b6 drm/i915/gt: Clear the execlists timers upon reset
4aec48d111f4 drm/i915/gt: Include reset failures in the trace
5f68e7fe001d drm/i915/gt: Cancel the preemption timeout on responding to it
363bb75548d1 drm/i915/gt: Ignore repeated attempts to suspend request flow across reset
2bae8f3c30a7 drm/i915: Disable outputs during unregister

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/index.html

--===============9113100511878446460==
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
<tr><td><b>Series:</b></td><td>series starting with [01/24] drm/i915: Disable outputs during unregister</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84579/">https://patchwork.freedesktop.org/series/84579/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9442 -&gt; Patchwork_19058</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19058 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19058, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19058:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-bdw-5557u/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-bdw-5557u/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-cfl-8109u/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-cfl-8109u/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-glk-dsi/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-glk-dsi/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-bsw-nick/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-bsw-nick/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-tgl-y/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-tgl-y/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-bsw-kefka/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-bsw-kefka/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-cml-s/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-cml-s/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-kbl-soraka/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-kbl-soraka/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-bxt-dsi/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-bxt-dsi/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9442 and Patchwork_19058:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 38 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19058 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2750">i915#2750</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-tgl-y/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-tgl-y/igt@vgem_basic@create.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2540">i915#2540</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-tgl-y/igt@gem_exec_create@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-tgl-y/igt@gem_exec_create@basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9442/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19058/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9442 -&gt; Patchwork_19058</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9442: 02c9a02a342173bd38a6c5210f1b047741a1b294 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5881: 10d4e2e9177eb747b9f2ab9122e3ab60e91654fb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19058: 9b4381eeec210dbc34edce5219547442d5a337e9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9b4381eeec21 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines<br />
17d6ab1a040c drm/i915/selftests: Exercise relative timeline modes<br />
612cd1428563 drm/i915/gt: Use indices for writing into relative timelines<br />
6d370b2a6ce1 drm/i915/gt: Add timeline "mode"<br />
a4ec0db74fea drm/i915/gt: Track timeline GGTT offset separately from subpage offset<br />
476117c64cb4 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb<br />
81943438c451 drm/i915/gt: Track all timelines created using the HWSP<br />
a38be5734e47 drm/i915: Encode fence specific waitqueue behaviour into the wait.flags<br />
794eff00db39 drm/i915/gt: Track the overall awake/busy time<br />
68b8f9056a58 drm/i915/gem: Drop free_work for GEM contexts<br />
7693cd2d83df drm/i915/gt: ce-&gt;inflight updates are now serialised<br />
66f9cbe3938f drm/i915/gt: Simplify virtual engine handling for execlists_hold()<br />
2553339dfe7a drm/i915/gt: Resubmit the virtual engine on schedule-out<br />
44173d41aef0 drm/i915/gt: Shrink the critical section for irq signaling<br />
bfc60ea87a1f drm/i915/gt: Remove virtual breadcrumb before transfer<br />
22ca745b6b71 drm/i915/gt: Defer schedule_out until after the next dequeue<br />
49b88baf972d drm/i915/gt: Decouple inflight virtual engines<br />
ea79baee80ce drm/i915/gt: Use virtual_engine during execlists_dequeue<br />
44f085d92e2c drm/i915/gt: Replace direct submit with direct call to tasklet<br />
dbc53514f4b6 drm/i915/gt: Clear the execlists timers upon reset<br />
4aec48d111f4 drm/i915/gt: Include reset failures in the trace<br />
5f68e7fe001d drm/i915/gt: Cancel the preemption timeout on responding to it<br />
363bb75548d1 drm/i915/gt: Ignore repeated attempts to suspend request flow across reset<br />
2bae8f3c30a7 drm/i915: Disable outputs during unregister</p>

</body>
</html>

--===============9113100511878446460==--

--===============0810727708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0810727708==--
