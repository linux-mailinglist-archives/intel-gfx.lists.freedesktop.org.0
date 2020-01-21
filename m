Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB301434B3
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 01:15:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C81D6E0EE;
	Tue, 21 Jan 2020 00:15:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 576C66E0EE;
 Tue, 21 Jan 2020 00:15:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4DC39A0093;
 Tue, 21 Jan 2020 00:15:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexey Budankov" <alexey.budankov@linux.intel.com>
Date: Tue, 21 Jan 2020 00:15:36 -0000
Message-ID: <157956573629.11481.7449588890541133927@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
In-Reply-To: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_CAP=5FPERFMON_to_secure_system_performance_monitoring_an?=
 =?utf-8?q?d_observability?=
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

Series: Introduce CAP_PERFMON to secure system performance monitoring and observability
URL   : https://patchwork.freedesktop.org/series/72273/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7781 -> Patchwork_16173
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16173/index.html

Known issues
------------

  Here are the changes found in Patchwork_16173 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-FAIL][2] ([i915#725])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16173/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_addfb_basic@too-high:
    - fi-icl-dsi:         [PASS][3] -> [DMESG-WARN][4] ([i915#109])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/fi-icl-dsi/igt@kms_addfb_basic@too-high.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16173/fi-icl-dsi/igt@kms_addfb_basic@too-high.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][5] ([i915#553] / [i915#725]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16173/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][7] ([i915#725]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16173/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][9] ([fdo#111407]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16173/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][11] ([fdo#112271]) -> [INCOMPLETE][12] ([i915#45])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16173/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (50 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7781 -> Patchwork_16173

  CI-20190529: 20190529
  CI_DRM_7781: 3f2b341ae1fde67f823aeb715c6f489affdef8b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5374: 83c32e859202e43ff6a8cca162c76fcd90ad6e3b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16173: c7304fe7a4108ae62e23c1b6786a813e0cfb66db @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c7304fe7a410 drivers/oprofile: open access for CAP_PERFMON privileged process
0515549093ae drivers/perf: open access for CAP_PERFMON privileged process
035c1d9fc22b parisc/perf: open access for CAP_PERFMON privileged process
d3168511835d powerpc/perf: open access for CAP_PERFMON privileged process
dc5f0cb73803 trace/bpf_trace: open access for CAP_PERFMON privileged process
0df0e7d3bc27 drm/i915/perf: open access for CAP_PERFMON privileged process
eca88405d138 perf tool: extend Perf tool with CAP_PERFMON capability support
c74fee681ffe perf/core: open access to anon probes for CAP_PERFMON privileged process
b04501d7d623 perf/core: open access to the core for CAP_PERFMON privileged process
08ee25620fef capabilities: introduce CAP_PERFMON to kernel and user space

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16173/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
