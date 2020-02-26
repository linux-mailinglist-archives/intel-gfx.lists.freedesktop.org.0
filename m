Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D58C9170901
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 20:39:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE58E6E0C6;
	Wed, 26 Feb 2020 19:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5770B6E110;
 Wed, 26 Feb 2020 19:39:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50CEFA0099;
 Wed, 26 Feb 2020 19:39:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 26 Feb 2020 19:39:38 -0000
Message-ID: <158274597830.21009.5129838678606046679@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226094314.1500667-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200226094314.1500667-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/17=5D_drm/i915/gt=3A_Reset_queue=5Fprio?=
 =?utf-8?q?rity=5Fhint_after_wedging?=
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

Series: series starting with [01/17] drm/i915/gt: Reset queue_priority_hint after wedging
URL   : https://patchwork.freedesktop.org/series/73947/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8008 -> Patchwork_16714
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16714:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gt_lrc:
    - {fi-tgl-u}:         [DMESG-FAIL][1] ([i915#1233]) -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html
    - {fi-tgl-dsi}:       [DMESG-FAIL][3] ([i915#1233]) -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-dsi/igt@i915_selftest@live_gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/fi-tgl-dsi/igt@i915_selftest@live_gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16714 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@bad-flink:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@gem_flink_basic@bad-flink.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/fi-tgl-y/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live_requests:
    - fi-bxt-dsi:         [PASS][7] -> [INCOMPLETE][8] ([fdo#103927])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-bxt-dsi/igt@i915_selftest@live_requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/fi-bxt-dsi/igt@i915_selftest@live_requests.html

  
#### Possible fixes ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][9] ([fdo#111407]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [DMESG-WARN][11] ([CI#94] / [i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Warnings ####

  * igt@i915_selftest@live_gt_lrc:
    - fi-tgl-y:           [DMESG-FAIL][13] ([CI#94] / [i915#1233]) -> [DMESG-FAIL][14] ([CI#94])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@i915_selftest@live_gt_lrc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/fi-tgl-y/igt@i915_selftest@live_gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (52 -> 39)
------------------------------

  Missing    (13): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-ivb-3770 fi-icl-y fi-bdw-samus fi-bsw-kefka fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8008 -> Patchwork_16714

  CI-20190529: 20190529
  CI_DRM_8008: 13b6e2575f2c05722679bc1c9d0b97c13bde49a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5469: 4f875016eb1ebc211b8aadb280ae16c7e6cdc8ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16714: 2fa006f3999107dc4d8b152053d0ff4b621f07a4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2fa006f39991 drm/i915/execlists: Reduce preempt-to-busy roundtrip delay
420dfaf3f69f drm/i915/execlists: Check the sentinel is alone in the ELSP
3cb060d11b8b drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
849c205f51cd drm/i915/gt: Declare when we enabled timeslicing
5bf996f43d21 drm/i915/gem: Check that the context wasn't closed during setup
e3f8fe7b97da drm/i915/gt: Prevent allocation on a banned context
427424c22617 drm/i915/gem: Consolidate ctx->engines[] release
2fc8b161a281 drm/i915/selftests: Add request throughput measurement to perf
b89f481f3c16 drm/i915/selftests: Be a little more lenient for reset workers
8da3c4b72fce drm/i915/selftests: Wait for the kernel context switch
c99201ca8f26 drm/i915/selftests: Check recovery from corrupted LRC
c607016634a6 drm/i915/selftests: Verify LRC isolation
eb2b326b0dea drm/i915: Protect i915_request_await_start from early waits
4527d2916345 drm/i915/gt: Pull marking vm as closed underneath the vm->mutex
9e5ee39ddb1c drm/i915: Manually acquire engine-wakeref around use of kernel_context
484da80f25b3 drm/i915/perf: Mark up the racy use of perf->exclusive_stream
aa291c2295eb drm/i915/gt: Reset queue_priority_hint after wedging

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
