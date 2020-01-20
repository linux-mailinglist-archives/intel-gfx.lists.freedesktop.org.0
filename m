Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A40B143040
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 17:50:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BAF16EA10;
	Mon, 20 Jan 2020 16:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B4C056EA10;
 Mon, 20 Jan 2020 16:50:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AAF69A0118;
 Mon, 20 Jan 2020 16:50:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexey Budankov" <alexey.budankov@linux.intel.com>
Date: Mon, 20 Jan 2020 16:50:31 -0000
Message-ID: <157953903167.681.4729828491081489938@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
In-Reply-To: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_CAP=5FPERFMON_to_secure_system_performance_monito?=
 =?utf-8?q?ring_and_observability?=
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
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
08ee25620fef capabilities: introduce CAP_PERFMON to kernel and user space
-:33: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#33: 
[2] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html

total: 0 errors, 1 warnings, 0 checks, 44 lines checked
b04501d7d623 perf/core: open access to the core for CAP_PERFMON privileged process
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
Open access to monitoring of kernel code, system, tracepoints and namespaces

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
c74fee681ffe perf/core: open access to anon probes for CAP_PERFMON privileged process
eca88405d138 perf tool: extend Perf tool with CAP_PERFMON capability support
0df0e7d3bc27 drm/i915/perf: open access for CAP_PERFMON privileged process
dc5f0cb73803 trace/bpf_trace: open access for CAP_PERFMON privileged process
d3168511835d powerpc/perf: open access for CAP_PERFMON privileged process
035c1d9fc22b parisc/perf: open access for CAP_PERFMON privileged process
0515549093ae drivers/perf: open access for CAP_PERFMON privileged process
c7304fe7a410 drivers/oprofile: open access for CAP_PERFMON privileged process

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
