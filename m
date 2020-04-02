Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F5F19BEBF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 11:37:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738A76EA2F;
	Thu,  2 Apr 2020 09:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 993186EA2F;
 Thu,  2 Apr 2020 09:37:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 92C15A011B;
 Thu,  2 Apr 2020 09:37:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexey Budankov" <alexey.budankov@linux.intel.com>
Date: Thu, 02 Apr 2020 09:37:13 -0000
Message-ID: <158582023357.24294.3968039612242462126@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
In-Reply-To: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_CAP=5FPERFMON_to_secure_system_performance_monito?=
 =?utf-8?q?ring_and_observability_=28rev5=29?=
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

Series: Introduce CAP_PERFMON to secure system performance monitoring and observability (rev5)
URL   : https://patchwork.freedesktop.org/series/72273/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c027b79d90c7 capabilities: introduce CAP_PERFMON to kernel and user space
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
is available to a CAP_SYS_ADMIN privileged process [2]. Providing the access

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
72d47d8219d3 perf/core: open access to the core for CAP_PERFMON privileged process
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
CAP_PERFMON capability singly, without the rest of CAP_SYS_ADMIN credentials,

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
330862f4c392 perf/core: open access to probes for CAP_PERFMON privileged process
-:18: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#18: 
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
d6069cbc260a perf tool: extend Perf tool with CAP_PERFMON capability support
faa4cad37f3f drm/i915/perf: open access for CAP_PERFMON privileged process
b18034c782e2 trace/bpf_trace: open access for CAP_PERFMON privileged process
27bbababcb71 powerpc/perf: open access for CAP_PERFMON privileged process
-:24: WARNING:BAD_SIGN_OFF: email address 'Anju T Sudhakar<anju@linux.vnet.ibm.com>' might be better as 'Anju T Sudhakar <anju@linux.vnet.ibm.com>'
#24: 
Acked-by: Anju T Sudhakar<anju@linux.vnet.ibm.com>

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
06a7ab2ee66f parisc/perf: open access for CAP_PERFMON privileged process
c6b6bc12a6fa drivers/perf: open access for CAP_PERFMON privileged process
f43a46c59baa drivers/oprofile: open access for CAP_PERFMON privileged process
00b49a09c154 doc/admin-guide: update perf-security.rst with CAP_PERFMON information
6f9e4a45e370 doc/admin-guide: update kernel.rst with CAP_PERFMON information

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
