Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2530116118B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 13:02:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 489386E933;
	Mon, 17 Feb 2020 12:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E2356E056;
 Mon, 17 Feb 2020 12:02:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96FECA011A;
 Mon, 17 Feb 2020 12:02:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexey Budankov" <alexey.budankov@linux.intel.com>
Date: Mon, 17 Feb 2020 12:02:35 -0000
Message-ID: <158194095559.7221.8784191722915661689@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
In-Reply-To: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_CAP=5FPERFMON_to_secure_system_performance_monito?=
 =?utf-8?q?ring_and_observability_=28rev4=29?=
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
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
393a5cfde640 capabilities: introduce CAP_PERFMON to kernel and user space
-:52: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#52: 
[2] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
6d4fdebe6edc perf/core: open access to the core for CAP_PERFMON privileged process
aa3ff32423c0 perf/core: open access to probes for CAP_PERFMON privileged process
86671f318860 perf tool: extend Perf tool with CAP_PERFMON capability support
d1ef8a64f911 drm/i915/perf: open access for CAP_PERFMON privileged process
5949431a2c37 trace/bpf_trace: open access for CAP_PERFMON privileged process
d54a2312705b powerpc/perf: open access for CAP_PERFMON privileged process
00477c2280be parisc/perf: open access for CAP_PERFMON privileged process
ec85f7b8d940 drivers/perf: open access for CAP_PERFMON privileged process
4efe076e5291 drivers/oprofile: open access for CAP_PERFMON privileged process
f4e5dbd23f6c doc/admin-guide: update perf-security.rst with CAP_PERFMON information
1accf5c7199d doc/admin-guide: update kernel.rst with CAP_PERFMON information

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
