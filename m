Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A83DC1539CA
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 21:57:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1367489BAC;
	Wed,  5 Feb 2020 20:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5BA0789BAC;
 Wed,  5 Feb 2020 20:57:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 57BB9A0003;
 Wed,  5 Feb 2020 20:57:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexey Budankov" <alexey.budankov@linux.intel.com>
Date: Wed, 05 Feb 2020 20:57:00 -0000
Message-ID: <158093622035.17320.14809158438759388559@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
In-Reply-To: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_CAP=5FPERFMON_to_secure_system_performance_monito?=
 =?utf-8?q?ring_and_observability_=28rev3=29?=
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
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
afa7aa8e74c6 capabilities: introduce CAP_PERFMON to kernel and user space
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
is available to a CAP_SYS_ADMIN privileged process [2]. Providing the access

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
c97b60885c20 perf/core: open access to the core for CAP_PERFMON privileged process
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
CAP_PERFMON capability singly, without the rest of CAP_SYS_ADMIN credentials,

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
7aa9d11056aa perf/core: open access to probes for CAP_PERFMON privileged process
-:18: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#18: 
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
ded14abe26f6 perf tool: extend Perf tool with CAP_PERFMON capability support
633358b87a0b drm/i915/perf: open access for CAP_PERFMON privileged process
1c9f2c014756 trace/bpf_trace: open access for CAP_PERFMON privileged process
2040d2804af8 powerpc/perf: open access for CAP_PERFMON privileged process
cbc0778c54e6 parisc/perf: open access for CAP_PERFMON privileged process
2206ed8dc834 drivers/perf: open access for CAP_PERFMON privileged process
8b8a811f8a61 drivers/oprofile: open access for CAP_PERFMON privileged process

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
