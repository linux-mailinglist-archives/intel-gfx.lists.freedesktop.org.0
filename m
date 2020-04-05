Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F261719EC79
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Apr 2020 18:00:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD6266E0DD;
	Sun,  5 Apr 2020 16:00:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5090A6E0DD;
 Sun,  5 Apr 2020 16:00:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4727AA00C7;
 Sun,  5 Apr 2020 16:00:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexey Budankov" <alexey.budankov@linux.intel.com>
Date: Sun, 05 Apr 2020 16:00:09 -0000
Message-ID: <158610240926.21320.15223535647115136280@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
In-Reply-To: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBJ?=
 =?utf-8?q?ntroduce_CAP=5FPERFMON_to_secure_system_performance_monitoring_?=
 =?utf-8?q?and_observability_=28rev6=29?=
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

Series: Introduce CAP_PERFMON to secure system performance monitoring and observability (rev6)
URL   : https://patchwork.freedesktop.org/series/72273/
State : failure

== Summary ==

Applying: capabilities: introduce CAP_PERFMON to kernel and user space
Applying: perf/core: open access to the core for CAP_PERFMON privileged process
Applying: perf/core: open access to probes for CAP_PERFMON privileged process
Applying: perf tool: extend Perf tool with CAP_PERFMON capability support
Applying: drm/i915/perf: open access for CAP_PERFMON privileged process
Applying: trace/bpf_trace: open access for CAP_PERFMON privileged process
Applying: powerpc/perf: open access for CAP_PERFMON privileged process
Applying: parisc/perf: open access for CAP_PERFMON privileged process
Applying: drivers/perf: open access for CAP_PERFMON privileged process
Applying: drivers/oprofile: open access for CAP_PERFMON privileged process
Applying: doc/admin-guide: update perf-security.rst with CAP_PERFMON information
Applying: doc/admin-guide: update kernel.rst with CAP_PERFMON information
error: corrupt patch at line 106
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0012 doc/admin-guide: update kernel.rst with CAP_PERFMON information
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
