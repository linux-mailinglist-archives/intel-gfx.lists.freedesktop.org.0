Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EC51B4D8E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 21:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5263289FF9;
	Wed, 22 Apr 2020 19:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 64C9989F99;
 Wed, 22 Apr 2020 19:43:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5DD80A008A;
 Wed, 22 Apr 2020 19:43:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "tip-bot2 for Alexey Budankov" <tip-bot2@linutronix.de>
Date: Wed, 22 Apr 2020 19:43:07 -0000
Message-ID: <158758458738.5177.2938091256053973896@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
In-Reply-To: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_CAP=5FPERFMON_to_secure_system_performance_monitoring_an?=
 =?utf-8?q?d_observability_=28rev18=29?=
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

Series: Introduce CAP_PERFMON to secure system performance monitoring and observability (rev18)
URL   : https://patchwork.freedesktop.org/series/72273/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8350 -> Patchwork_17428
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17428 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17428, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17428/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17428:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_engines:
    - fi-byt-j1900:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-byt-j1900/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17428/fi-byt-j1900/igt@i915_selftest@live@gt_engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_17428 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@coherency:
    - fi-ivb-3770:        [PASS][3] -> [FAIL][4] ([i915#1763])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-ivb-3770/igt@i915_selftest@live@coherency.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17428/fi-ivb-3770/igt@i915_selftest@live@coherency.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][5] ([i915#62]) -> [SKIP][6] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17428/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (48 -> 42)
------------------------------

  Additional (1): fi-icl-dsi 
  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8350 -> Patchwork_17428

  CI-20190529: 20190529
  CI_DRM_8350: 018bab6d1c4ac37bff9306384383fab59750e140 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5606: 678afb3954bec6227c8762756a0ad6d9946d49b2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17428: d13256e76cf361a2b4e954ce8790725c3021cc62 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d13256e76cf3 doc/admin-guide: update kernel.rst with CAP_PERFMON information
b3c0c8dc3225 doc/admin-guide: Update perf-security.rst with CAP_PERFMON information
33c94226c35f drivers/oprofile: Open access for CAP_PERFMON privileged process
10e972d65247 drivers/perf: Open access for CAP_PERFMON privileged process
2b530591caa3 parisc/perf: open access for CAP_PERFMON privileged process
092f35fb8dec powerpc/perf: open access for CAP_PERFMON privileged process
14afa15c555f trace/bpf_trace: Open access for CAP_PERFMON privileged process
d2eaa8483797 drm/i915/perf: Open access for CAP_PERFMON privileged process
9ded613d59ba perf tools: Support CAP_PERFMON capability
0bb591638827 perf/core: open access to probes for CAP_PERFMON privileged process
64cddb3c59c7 perf/core: Open access to the core for CAP_PERFMON privileged process
f036c99151ab capabilities: Introduce CAP_PERFMON to kernel and user space

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17428/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
