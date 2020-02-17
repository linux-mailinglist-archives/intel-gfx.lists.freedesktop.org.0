Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D17161590
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 16:08:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE086E97A;
	Mon, 17 Feb 2020 15:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E6FF66E97A;
 Mon, 17 Feb 2020 15:08:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DFA49A47E1;
 Mon, 17 Feb 2020 15:08:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexey Budankov" <alexey.budankov@linux.intel.com>
Date: Mon, 17 Feb 2020 15:08:01 -0000
Message-ID: <158195208191.16569.15630790535555287661@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
In-Reply-To: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_CAP=5FPERFMON_to_secure_system_performance_monitoring_an?=
 =?utf-8?q?d_observability_=28rev4=29?=
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

Series: Introduce CAP_PERFMON to secure system performance monitoring and observability (rev4)
URL   : https://patchwork.freedesktop.org/series/72273/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7954 -> Patchwork_16592
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16592/index.html

Known issues
------------

  Here are the changes found in Patchwork_16592 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [TIMEOUT][1] ([fdo#112271] / [i915#1084]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7954/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16592/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [INCOMPLETE][3] ([i915#45]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7954/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16592/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45


Participating hosts (50 -> 46)
------------------------------

  Additional (1): fi-ehl-1 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7954 -> Patchwork_16592

  CI-20190529: 20190529
  CI_DRM_7954: d7c1791394faaa869d3442705413dac8c0ecd677 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5444: c46bae259d427f53fcfcd5f05de0181a9e82d6fe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16592: 1accf5c7199df9a722b0754bc9f5abd58f926c5f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1accf5c7199d doc/admin-guide: update kernel.rst with CAP_PERFMON information
f4e5dbd23f6c doc/admin-guide: update perf-security.rst with CAP_PERFMON information
4efe076e5291 drivers/oprofile: open access for CAP_PERFMON privileged process
ec85f7b8d940 drivers/perf: open access for CAP_PERFMON privileged process
00477c2280be parisc/perf: open access for CAP_PERFMON privileged process
d54a2312705b powerpc/perf: open access for CAP_PERFMON privileged process
5949431a2c37 trace/bpf_trace: open access for CAP_PERFMON privileged process
d1ef8a64f911 drm/i915/perf: open access for CAP_PERFMON privileged process
86671f318860 perf tool: extend Perf tool with CAP_PERFMON capability support
aa3ff32423c0 perf/core: open access to probes for CAP_PERFMON privileged process
6d4fdebe6edc perf/core: open access to the core for CAP_PERFMON privileged process
393a5cfde640 capabilities: introduce CAP_PERFMON to kernel and user space

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16592/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
