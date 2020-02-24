Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0438616A71F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 14:17:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E9B26E4C1;
	Mon, 24 Feb 2020 13:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B0436E4B7;
 Mon, 24 Feb 2020 13:17:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34A6BA0138;
 Mon, 24 Feb 2020 13:17:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 24 Feb 2020 13:17:30 -0000
Message-ID: <158255025021.28363.16036269467571791293@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224100007.4024184-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200224100007.4024184-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/14=5D_drm/i915/selftests=3A_Verify_LRC_?=
 =?utf-8?q?isolation?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/14] drm/i915/selftests: Verify LRC isolation
URL   : https://patchwork.freedesktop.org/series/73840/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7993 -> Patchwork_16682
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16682 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16682, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16682:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@fds:
    - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-cfl-8109u/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-cfl-8109u/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_execlists:
    - fi-glk-dsi:         NOTRUN -> [DMESG-FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-glk-dsi/igt@i915_selftest@live_execlists.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-byt-j1900:       [FAIL][4] ([i915#816]) -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-byt-j1900/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-byt-j1900/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gt_lrc:
    - {fi-tgl-u}:         [INCOMPLETE][6] ([i915#1233]) -> [DMESG-FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16682 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][8] -> [INCOMPLETE][9] ([i915#694] / [i915#816])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@gem_render_linear_blits@basic:
    - fi-tgl-y:           [PASS][10] -> [DMESG-WARN][11] ([CI#94] / [i915#402])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-tgl-y/igt@gem_render_linear_blits@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-tgl-y/igt@gem_render_linear_blits@basic.html

  * igt@i915_selftest@live_active:
    - fi-tgl-y:           [PASS][12] -> [DMESG-FAIL][13] ([CI#94])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-tgl-y/igt@i915_selftest@live_active.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-tgl-y/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][14] -> [DMESG-FAIL][15] ([i915#722])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][16] -> [FAIL][17] ([i915#217])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][18] ([i915#45]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][20] ([CI#94]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_addfb_basic@bad-pitch-999:
    - fi-tgl-y:           [DMESG-WARN][22] ([CI#94] / [i915#402]) -> [PASS][23] +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-999.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-999.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][24] ([fdo#111407]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][26] ([fdo#112271] / [i915#1084]) -> [FAIL][27] ([i915#694])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-tgl-y:           [DMESG-FAIL][28] ([CI#94] / [i915#1233]) -> [DMESG-FAIL][29] ([CI#94])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7993/fi-tgl-y/igt@i915_selftest@live_gt_lrc.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/fi-tgl-y/igt@i915_selftest@live_gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (45 -> 43)
------------------------------

  Additional (7): fi-ehl-1 fi-bdw-5557u fi-glk-dsi fi-ilk-650 fi-ivb-3770 fi-skl-lmem fi-skl-6600u 
  Missing    (9): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 fi-icl-u3 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7993 -> Patchwork_16682

  CI-20190529: 20190529
  CI_DRM_7993: db7cdbfad15a4b58edea31e516886081aeab188b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5459: ca5337002b52fe115cb871d5146543616fd1f207 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16682: d3bd4cdb8f900b823a36d2743ac404e166588e09 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d3bd4cdb8f90 drm/i915/execlists: Reduce preempt-to-busy roundtrip delay
b77c79afbfe7 drm/i915/execlists: Check the sentinel is alone in the ELSP
01288567a278 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
69ce6bbda208 drm/i915/gt: Declare when we enabled timeslicing
cc42d7921f1b drm/i915/gem: Check that the context wasn't closed during setup
7cb395eb4a69 drm/i915/gt: Prevent allocation on a banned context
0a2f475520dc drm/i915/gem: Consolidate ctx->engines[] release
78e115ce3f07 drm/i915: Protect i915_request_await_start from early waits
f8a4a1a69d1e drm/i915/selftests: Be a little more lenient for reset workers
78811038e2dc drm/i915/gem: Honour O_NONBLOCK before throttling execbuf submissions
9b9b9e729e66 drm/i915: Allow userspace to specify ringsize on construction
91df47ab4b46 drm/i915: Flush idle barriers when waiting
43180ee37d91 drm/i915/selftests: Check recovery from corrupted LRC
748167061786 drm/i915/selftests: Verify LRC isolation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16682/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
