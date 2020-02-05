Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5404E153A6E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 22:47:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81F526E25A;
	Wed,  5 Feb 2020 21:47:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BBC66E24E;
 Wed,  5 Feb 2020 21:47:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 242FCA0134;
 Wed,  5 Feb 2020 21:47:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexey Budankov" <alexey.budankov@linux.intel.com>
Date: Wed, 05 Feb 2020 21:47:00 -0000
Message-ID: <158093922014.17321.15220564848759224269@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
In-Reply-To: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_CAP=5FPERFMON_to_secure_system_performance_monitoring_an?=
 =?utf-8?q?d_observability_=28rev3=29?=
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

Series: Introduce CAP_PERFMON to secure system performance monitoring and observability (rev3)
URL   : https://patchwork.freedesktop.org/series/72273/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7871 -> Patchwork_16439
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/index.html

Known issues
------------

  Here are the changes found in Patchwork_16439 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2] ([i915#392])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/fi-bsw-nick/igt@i915_selftest@live_blt.html
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][7] -> [FAIL][8] ([i915#217] / [i915#976])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@vgem_basic@debugfs:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([CI#94] / [i915#402])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@vgem_basic@debugfs.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/fi-tgl-y/igt@vgem_basic@debugfs.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][11] ([CI#94]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-guc:         [TIMEOUT][13] ([fdo#112271]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-guc/igt@i915_selftest@live_gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/fi-icl-guc/igt@i915_selftest@live_gtt.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-tgl-y:           [DMESG-WARN][15] ([CI#94] / [i915#402]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-128.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-128.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (45 -> 47)
------------------------------

  Additional (7): fi-bdw-5557u fi-hsw-peppy fi-bwr-2160 fi-ilk-650 fi-kbl-7500u fi-gdg-551 fi-kbl-7560u 
  Missing    (5): fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7871 -> Patchwork_16439

  CI-20190529: 20190529
  CI_DRM_7871: c9b0237ee7ffb1bbb62f864f0b2d7b290ee1313d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16439: 8b8a811f8a617ad2a567f9502178826467119a9e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8b8a811f8a61 drivers/oprofile: open access for CAP_PERFMON privileged process
2206ed8dc834 drivers/perf: open access for CAP_PERFMON privileged process
cbc0778c54e6 parisc/perf: open access for CAP_PERFMON privileged process
2040d2804af8 powerpc/perf: open access for CAP_PERFMON privileged process
1c9f2c014756 trace/bpf_trace: open access for CAP_PERFMON privileged process
633358b87a0b drm/i915/perf: open access for CAP_PERFMON privileged process
ded14abe26f6 perf tool: extend Perf tool with CAP_PERFMON capability support
7aa9d11056aa perf/core: open access to probes for CAP_PERFMON privileged process
c97b60885c20 perf/core: open access to the core for CAP_PERFMON privileged process
afa7aa8e74c6 capabilities: introduce CAP_PERFMON to kernel and user space

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16439/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
