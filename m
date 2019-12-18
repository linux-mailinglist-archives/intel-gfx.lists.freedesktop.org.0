Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BE61243FF
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 11:12:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 770536E2A5;
	Wed, 18 Dec 2019 10:12:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 840F76E2A5;
 Wed, 18 Dec 2019 10:11:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7BB27A010F;
 Wed, 18 Dec 2019 10:11:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexey Budankov" <alexey.budankov@linux.intel.com>
Date: Wed, 18 Dec 2019 10:11:59 -0000
Message-ID: <157666391947.8354.1372113839059377700@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
In-Reply-To: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBJ?=
 =?utf-8?q?ntroduce_CAP=5FSYS=5FPERFMON_to_secure_system_performance_monit?=
 =?utf-8?q?oring_and_observability_=28rev3=29?=
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

Series: Introduce CAP_SYS_PERFMON to secure system performance monitoring and observability (rev3)
URL   : https://patchwork.freedesktop.org/series/70961/
State : failure

== Summary ==

Applying: capabilities: introduce CAP_SYS_PERFMON to kernel and user space
Applying: perf/core: open access for CAP_SYS_PERFMON privileged process
Applying: perf tool: extend Perf tool with CAP_SYS_PERFMON capability support
Applying: drm/i915/perf: open access for CAP_SYS_PERFMON privileged process
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_perf.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_perf.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_perf.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0004 drm/i915/perf: open access for CAP_SYS_PERFMON privileged process
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
