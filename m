Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E593172259
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 16:37:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 825986E14F;
	Thu, 27 Feb 2020 15:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8B3846E045;
 Thu, 27 Feb 2020 15:37:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 845B2A0019;
 Thu, 27 Feb 2020 15:37:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 27 Feb 2020 15:37:40 -0000
Message-ID: <158281786051.29658.4316853220451621629@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/20=5D_drm/i915=3A_Skip_barriers_inside_?=
 =?utf-8?q?waits_=28rev4=29?=
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

Series: series starting with [01/20] drm/i915: Skip barriers inside waits (rev4)
URL   : https://patchwork.freedesktop.org/series/73999/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8018 -> Patchwork_16731
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16731:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {fi-tgl-dsi}:       [DMESG-FAIL][1] ([i915#1233]) -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html
    - {fi-tgl-u}:         [DMESG-FAIL][3] ([i915#1233]) -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/fi-tgl-u/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/fi-tgl-u/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16731 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6] ([i915#424])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][7] ([fdo#111096] / [i915#323]) -> [FAIL][8] ([fdo#111407])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424


Participating hosts (49 -> 43)
------------------------------

  Additional (1): fi-byt-n2820 
  Missing    (7): fi-ilk-m540 fi-byt-squawks fi-glk-dsi fi-bsw-cyan fi-ctg-p8600 fi-tgl-y fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8018 -> Patchwork_16731

  CI-20190529: 20190529
  CI_DRM_8018: d2d7fd43fafd159b7d9d957340e4ed9775ab20b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16731: 720aff89c6c8efa0deb0c662afc100e8a713db0a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

720aff89c6c8 drm/i915/execlists: Reduce preempt-to-busy roundtrip delay
8744e278c5f7 drm/i915/execlists: Check the sentinel is alone in the ELSP
9f8c2239da44 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
ad7bfc55d410 drm/i915/gt: Declare when we enabled timeslicing
cceba24157d6 drm/i915/selftests: Add request throughput measurement to perf
f6ebc42863d7 drm/i915/selftests: Be a little more lenient for reset workers
097feb8cc312 drm/i915/selftests: Wait for the kernel context switch
dac7e7aa2e04 drm/i915/selftests: Check recovery from corrupted LRC
0258eb86abee drm/i915/selftests: Verify LRC isolation
d144797bcc6e drm/i915: Protect i915_request_await_start from early waits
19d8a9ec5a90 drm/i915/gt: Pull marking vm as closed underneath the vm->mutex
03901330ffff drm/i915/gt: Reset queue_priority_hint after wedging
695b915be561 drm/i915/selftests: Disable heartbeat around manual pulse tests
68e1c6076e91 drm/i915/gem: Check that the context wasn't closed during setup
94b9a31f328b drm/i915/gt: Prevent allocation on a banned context
47888c782e0c drm/i915/gem: Consolidate ctx->engines[] release
98bae29ebe79 drm/i915/perf: Wait for lrc_reconfigure on disable
f20fed23b607 drm/i915/perf: Manually acquire engine-wakeref around use of kernel_context
b03376b455cc drm/i915/perf: Mark up the racy use of perf->exclusive_stream
ea6f01e92c61 drm/i915: Skip barriers inside waits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16731/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
