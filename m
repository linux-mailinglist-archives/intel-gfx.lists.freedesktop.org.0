Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4444E17335D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 09:55:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A0EC6EE8E;
	Fri, 28 Feb 2020 08:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE8446EE81;
 Fri, 28 Feb 2020 08:55:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7EDBA3ECB;
 Fri, 28 Feb 2020 08:55:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 28 Feb 2020 08:55:49 -0000
Message-ID: <158288014979.7477.2542312450424502235@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200228082330.2411941-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200228082330.2411941-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/24=5D_drm/i915/gt=3A_Check_engine-is-aw?=
 =?utf-8?q?ake_on_reset_later?=
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

Series: series starting with [01/24] drm/i915/gt: Check engine-is-awake on reset later
URL   : https://patchwork.freedesktop.org/series/74064/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8024 -> Patchwork_16759
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16759 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16759, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16759/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16759:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16759/fi-kbl-8809g/igt@i915_selftest@live@execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {fi-tgl-u}:         [DMESG-FAIL][2] ([i915#1233]) -> [DMESG-FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-tgl-u/igt@i915_selftest@live@gt_lrc.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16759/fi-tgl-u/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16759 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][4] -> [DMESG-FAIL][5] ([i915#877])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16759/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][6] -> [FAIL][7] ([fdo#111096] / [i915#323])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16759/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [FAIL][8] ([i915#262]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16759/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][10] ([i915#192] / [i915#193] / [i915#194]) -> [FAIL][11] ([i915#1209])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-kbl-8809g/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16759/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (41 -> 42)
------------------------------

  Additional (6): fi-bsw-n3050 fi-hsw-peppy fi-glk-dsi fi-bwr-2160 fi-snb-2520m fi-gdg-551 
  Missing    (5): fi-kbl-soraka fi-tgl-dsi fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8024 -> Patchwork_16759

  CI-20190529: 20190529
  CI_DRM_8024: 3290680f9735978238a1d3df1efa83326a843327 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5474: 1be610f852de155cd915e7cda65cb2737adf04d4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16759: 750fb757725bda76454e0db0c58cbc36adc510bc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

750fb757725b drm/i915/execlists: Reduce preempt-to-busy roundtrip delay
79f714f11f81 drm/i915/execlists: Check the sentinel is alone in the ELSP
6dfe74ecc377 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
9d4f288874ad drm/i915/gt: Declare when we enabled timeslicing
03d66544ebb8 drm/i915/selftests: Add request throughput measurement to perf
8082262f522d drm/i915/selftests: Be a little more lenient for reset workers
4dfb2ecef5a8 drm/i915/selftests: Wait for the kernel context switch
1df5e762e382 drm/i915/selftests: Check recovery from corrupted LRC
76c4b1fb4c01 drm/i915/selftests: Verify LRC isolation
82df6afb9ed9 drm/i915: Protect i915_request_await_start from early waits
d6a1ba655f2a drm/i915/gt: Pull marking vm as closed underneath the vm->mutex
10c7bfb49474 drm/i915/gt: Reset queue_priority_hint after wedging
54c591ceb43f drm/i915/selftests: Disable heartbeat around manual pulse tests
2ad577382daf drm/i915/gem: Check that the context wasn't closed during setup
79cc4030dfde drm/i915/gt: Prevent allocation on a banned context
ae1f01773370 drm/i915/gem: Consolidate ctx->engines[] release
effe03fbfc33 drm/i915/perf: Schedule oa_config after modifying the contexts
3866ade4b94e drm/i915: Extend i915_request_await_active to use all timelines
7f853a24cf81 drm/i915: Wrap i915_active in a simple kreffed struct
970d94f49328 drm/i915/perf: Reintroduce wait on OA configuration completion
2595bf7a20cf drm/i915/perf: Manually acquire engine-wakeref around use of kernel_context
eee7935e8b02 drm/i915/perf: Mark up the racy use of perf->exclusive_stream
2d9cb5454fb9 drm/i915: Skip barriers inside waits
cf35476aba26 drm/i915/gt: Check engine-is-awake on reset later

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16759/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
