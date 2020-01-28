Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6532D14AFF0
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 07:42:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 377B56ECA3;
	Tue, 28 Jan 2020 06:42:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 421A26ECA1;
 Tue, 28 Jan 2020 06:42:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 31372A0019;
 Tue, 28 Jan 2020 06:42:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexey Budankov" <alexey.budankov@linux.intel.com>
Date: Tue, 28 Jan 2020 06:42:25 -0000
Message-ID: <158019374517.20537.8195386271468846361@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <74d524ab-ac11-a7b8-1052-eba10f117e09@linux.intel.com>
In-Reply-To: <74d524ab-ac11-a7b8-1052-eba10f117e09@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_CAP=5FPERFMON_to_secure_system_performance_monito?=
 =?utf-8?q?ring_and_observability_=28rev2=29?=
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
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
00180af79ca9 capabilities: introduce CAP_PERFMON to kernel and user space
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
is available to a CAP_SYS_ADMIN privileged process [2]. Providing the access

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
2b6eefdcee3f perf/core: open access to the core for CAP_PERFMON privileged process
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
CAP_PERFMON capability singly, without the rest of CAP_SYS_ADMIN credentials,

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
67949e980fe0 perf/core: open access to probes for CAP_PERFMON privileged process
-:18: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#18: 
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
e16c0ae49641 perf tool: extend Perf tool with CAP_PERFMON capability support
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
0ded358c0c9a drm/i915/perf: open access for CAP_PERFMON privileged process
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
1ec452341389 trace/bpf_trace: open access for CAP_PERFMON privileged process
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
346f1feb325c powerpc/perf: open access for CAP_PERFMON privileged process
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
80510aa6fcc1 parisc/perf: open access for CAP_PERFMON privileged process
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
d4bca6e41e7d drivers/perf: open access for CAP_PERFMON privileged process
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
e309daf46905 drivers/oprofile: open access for CAP_PERFMON privileged process
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle

total: 0 errors, 1 warnings, 0 checks, 8 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
