Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D737814B07B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 08:35:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E63EF6ECD0;
	Tue, 28 Jan 2020 07:35:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02FA06ECCF;
 Tue, 28 Jan 2020 07:35:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E5009A0118;
 Tue, 28 Jan 2020 07:35:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexey Budankov" <alexey.budankov@linux.intel.com>
Date: Tue, 28 Jan 2020 07:35:48 -0000
Message-ID: <158019694890.20537.10668848137085473289@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <74d524ab-ac11-a7b8-1052-eba10f117e09@linux.intel.com>
In-Reply-To: <74d524ab-ac11-a7b8-1052-eba10f117e09@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_CAP=5FPERFMON_to_secure_system_performance_monitoring_an?=
 =?utf-8?q?d_observability_=28rev2=29?=
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

Series: Introduce CAP_PERFMON to secure system performance monitoring and observability (rev2)
URL   : https://patchwork.freedesktop.org/series/72273/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7827 -> Patchwork_16289
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16289/index.html

Known issues
------------

  Here are the changes found in Patchwork_16289 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-FAIL][2] ([i915#541])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-bsw-kefka/igt@i915_selftest@live_gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16289/fi-bsw-kefka/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_addfb_basic@bad-pitch-256:
    - fi-icl-dsi:         [PASS][3] -> [DMESG-WARN][4] ([i915#109])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-icl-dsi/igt@kms_addfb_basic@bad-pitch-256.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16289/fi-icl-dsi/igt@kms_addfb_basic@bad-pitch-256.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][5] ([i915#553] / [i915#725]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16289/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-u3:          [INCOMPLETE][7] ([fdo#108569] / [i915#140]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-icl-u3/igt@i915_selftest@live_hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16289/fi-icl-u3/igt@i915_selftest@live_hangcheck.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (46 -> 42)
------------------------------

  Additional (5): fi-bsw-n3050 fi-gdg-551 fi-cfl-8109u fi-ivb-3770 fi-skl-6600u 
  Missing    (9): fi-ilk-m540 fi-kbl-7560u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-blb-e6850 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7827 -> Patchwork_16289

  CI-20190529: 20190529
  CI_DRM_7827: c8969aeacfff681c83a800e82b0f18a6ab3e77ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5389: 966c58649dee31bb5bf2fad92f75ffd365968b81 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16289: e309daf4690565507b1fe7244ed41217b057ab0f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e309daf46905 drivers/oprofile: open access for CAP_PERFMON privileged process
d4bca6e41e7d drivers/perf: open access for CAP_PERFMON privileged process
80510aa6fcc1 parisc/perf: open access for CAP_PERFMON privileged process
346f1feb325c powerpc/perf: open access for CAP_PERFMON privileged process
1ec452341389 trace/bpf_trace: open access for CAP_PERFMON privileged process
0ded358c0c9a drm/i915/perf: open access for CAP_PERFMON privileged process
e16c0ae49641 perf tool: extend Perf tool with CAP_PERFMON capability support
67949e980fe0 perf/core: open access to probes for CAP_PERFMON privileged process
2b6eefdcee3f perf/core: open access to the core for CAP_PERFMON privileged process
00180af79ca9 capabilities: introduce CAP_PERFMON to kernel and user space

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16289/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
