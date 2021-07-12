Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8F73C63A2
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 21:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C38689CF9;
	Mon, 12 Jul 2021 19:23:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A3C8893A7;
 Mon, 12 Jul 2021 19:23:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13D6EA8836;
 Mon, 12 Jul 2021 19:23:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Date: Mon, 12 Jul 2021 19:23:10 -0000
Message-ID: <162611779007.23771.14634252887137653538@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624070516.21893-1-matthew.brost@intel.com>
In-Reply-To: <20210624070516.21893-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBH?=
 =?utf-8?q?uC_submission_support_=28rev2=29?=
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

Series: GuC submission support (rev2)
URL   : https://patchwork.freedesktop.org/series/91840/
State : failure

== Summary ==

Applying: drm/i915/guc: Relax CTB response timeout
Applying: drm/i915/guc: Improve error message for unsolicited CT response
Applying: drm/i915/guc: Increase size of CTB buffers
Applying: drm/i915/guc: Add non blocking CTB send function
Applying: drm/i915/guc: Add stall timer to non blocking CTB send function
Applying: drm/i915/guc: Optimize CTB writes and reads
Applying: drm/i915/guc: Module load failure test for CT buffer creation
Applying: drm/i915/guc: Add new GuC interface defines and structures
Applying: drm/i915/guc: Remove GuC stage descriptor, add lrc descriptor
Applying: drm/i915/guc: Add lrc descriptor context lookup array
Applying: drm/i915/guc: Implement GuC submission tasklet
Applying: drm/i915/guc: Add bypass tasklet submission path to GuC
Applying: drm/i915/guc: Implement GuC context operations for new inteface
Applying: drm/i915/guc: Insert fence on context when deregistering
Applying: drm/i915/guc: Defer context unpin until scheduling is disabled
Applying: drm/i915/guc: Disable engine barriers with GuC during unpin
Applying: drm/i915/guc: Extend deregistration fence to schedule disable
Applying: drm/i915: Disable preempt busywait when using GuC scheduling
Applying: drm/i915/guc: Ensure request ordering via completion fences
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_request.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_request.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_request.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0019 drm/i915/guc: Ensure request ordering via completion fences
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
