Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C1E4008C7
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Sep 2021 02:46:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DA4B6E8EC;
	Sat,  4 Sep 2021 00:46:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6743B6E8EC;
 Sat,  4 Sep 2021 00:46:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 504F0A8169;
 Sat,  4 Sep 2021 00:46:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3796142893634438125=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 04 Sep 2021 00:46:19 -0000
Message-ID: <163071637929.20409.6391533438371574442@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ2xl?=
 =?utf-8?q?an_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_DOC_=28?=
 =?utf-8?q?rev10=29?=
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

--===============3796142893634438125==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev10)
URL   : https://patchwork.freedesktop.org/series/93704/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10550 -> Patchwork_20959
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20959 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20959, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20959:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-rkl-11600:       NOTRUN -> [SKIP][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-rkl-11600:       [PASS][2] -> [SKIP][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10550 and Patchwork_20959:

### New IGT tests (1) ###

  * igt@i915_selftest@live@guc:
    - Statuses : 37 pass(s)
    - Exec time: [0.40, 5.01] s

  

Known issues
------------

  Here are the changes found in Patchwork_20959 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][4] ([fdo#109271]) +17 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@fbdev@write:
    - fi-rkl-11600:       [PASS][5] -> [SKIP][6] ([i915#2582]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@fbdev@write.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@fbdev@write.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-rkl-11600:       [PASS][7] -> [SKIP][8] ([fdo#109308]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [PASS][9] -> [DMESG-FAIL][10] ([i915#541])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-rkl-11600:       [PASS][11] -> [SKIP][12] ([fdo#111825]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-rkl-11600:       NOTRUN -> [SKIP][13] ([i915#3669]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-rkl-11600:       [PASS][14] -> [SKIP][15] ([i915#3180])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:
    - fi-rkl-11600:       [PASS][16] -> [SKIP][17] ([i915#3919]) +9 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-rkl-11600:       [PASS][18] -> [SKIP][19] ([i915#1845])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][20] ([i915#1993]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-icl-y/igt@i915_selftest@live@execlists.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][22] ([i915#3921]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-7500u:       [FAIL][24] ([i915#3449]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#1993]: https://gitlab.freedesktop.org/drm/intel/issues/1993
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3449]: https://gitlab.freedesktop.org/drm/intel/issues/3449
  [i915#3669]: https://gitlab.freedesktop.org/drm/intel/issues/3669
  [i915#3919]: https://gitlab.freedesktop.org/drm/intel/issues/3919
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): bat-adls-5 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10550 -> Patchwork_20959

  CI-20190529: 20190529
  CI_DRM_10550: 07f6ce3dba287a2aa8a62cdd3b7d46ea0676007f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20959: 58856727d06e7aa6d7ed8c28854fe8cee0d8c4b2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

58856727d06e drm/i915/guc: Add GuC kernel doc
6635fe9c9ffb drm/i915/guc: Drop guc_active move everything into guc_state
8e4a0506fc20 drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
52980a2d7174 drm/i915/guc: Move GuC priority fields in context under guc_active
f53a65c0952c drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
759636cf75ee drm/i915/guc: Proper xarray usage for contexts_lookup
4be2eae80738 drm/i915/guc: Rework and simplify locking
3c6373fb6529 drm/i915/guc: Move guc_blocked fence to struct guc_state
73970752f37c drm/i915/guc: Release submit fence from an irq_work
475206e6d350 drm/i915/guc: Flush G2H work queue during reset
f098b2e26fba drm/i915: Allocate error capture in nowait context
6c78bd32a97b drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
10a7e5916e04 drm/i915/guc: Don't touch guc_state.sched_state without a lock
2aa269f239b4 drm/i915/guc: Take context ref when cancelling request
1bc44c377df9 drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
c2d27d762bc5 drm/i915/guc: Copy whole golden context, set engine state size of subset
28f1e6d22bad drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
c1bd72699e71 drm/i915/guc: Kick tasklet after queuing a request
ae1b3d67cd6b Revert "drm/i915/gt: Propagate change in error status to children on unhold"
28d3a1c4f1ab drm/i915/guc: Workaround reset G2H is received after schedule done G2H
92ea1c87dd5d drm/i915/guc: Process all G2H message at once in work queue
2b55e7be2440 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
a09678f24d4a drm/i915/guc: Unwind context requests in reverse order
4cbb7ec8d2a5 drm/i915/guc: Fix outstanding G2H accounting
7a92435f3439 drm/i915/guc: Fix blocked context accounting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/index.html

--===============3796142893634438125==
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
<tr><td><b>Series:</b></td><td>Clean up GuC CI failures, simplify locking, and kernel DOC (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93704/">https://patchwork.freedesktop.org/series/93704/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10550 -&gt; Patchwork_20959</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20959 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20959, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20959:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10550 and Patchwork_20959:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@guc:<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [0.40, 5.01] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20959 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@kms_flip@basic-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3669">i915#3669</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3180">i915#3180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3919">i915#3919</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-icl-y/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1993">i915#1993</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3449">i915#3449</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20959/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): bat-adls-5 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10550 -&gt; Patchwork_20959</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10550: 07f6ce3dba287a2aa8a62cdd3b7d46ea0676007f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20959: 58856727d06e7aa6d7ed8c28854fe8cee0d8c4b2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>58856727d06e drm/i915/guc: Add GuC kernel doc<br />
6635fe9c9ffb drm/i915/guc: Drop guc_active move everything into guc_state<br />
8e4a0506fc20 drm/i915/guc: Move fields protected by guc-&gt;contexts_lock into sub structure<br />
52980a2d7174 drm/i915/guc: Move GuC priority fields in context under guc_active<br />
f53a65c0952c drm/i915/guc: Drop pin count check trick between sched_disable and re-pin<br />
759636cf75ee drm/i915/guc: Proper xarray usage for contexts_lookup<br />
4be2eae80738 drm/i915/guc: Rework and simplify locking<br />
3c6373fb6529 drm/i915/guc: Move guc_blocked fence to struct guc_state<br />
73970752f37c drm/i915/guc: Release submit fence from an irq_work<br />
475206e6d350 drm/i915/guc: Flush G2H work queue during reset<br />
f098b2e26fba drm/i915: Allocate error capture in nowait context<br />
6c78bd32a97b drm/i915/guc: Reset LRC descriptor if register returns -ENODEV<br />
10a7e5916e04 drm/i915/guc: Don't touch guc_state.sched_state without a lock<br />
2aa269f239b4 drm/i915/guc: Take context ref when cancelling request<br />
1bc44c377df9 drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H<br />
c2d27d762bc5 drm/i915/guc: Copy whole golden context, set engine state size of subset<br />
28f1e6d22bad drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered<br />
c1bd72699e71 drm/i915/guc: Kick tasklet after queuing a request<br />
ae1b3d67cd6b Revert "drm/i915/gt: Propagate change in error status to children on unhold"<br />
28d3a1c4f1ab drm/i915/guc: Workaround reset G2H is received after schedule done G2H<br />
92ea1c87dd5d drm/i915/guc: Process all G2H message at once in work queue<br />
2b55e7be2440 drm/i915/guc: Don't drop ce-&gt;guc_active.lock when unwinding context<br />
a09678f24d4a drm/i915/guc: Unwind context requests in reverse order<br />
4cbb7ec8d2a5 drm/i915/guc: Fix outstanding G2H accounting<br />
7a92435f3439 drm/i915/guc: Fix blocked context accounting</p>

</body>
</html>

--===============3796142893634438125==--
