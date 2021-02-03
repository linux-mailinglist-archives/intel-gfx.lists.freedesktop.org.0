Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4306330E0B3
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 18:16:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 933916EB63;
	Wed,  3 Feb 2021 17:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02C466EB61;
 Wed,  3 Feb 2021 17:16:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F13B1A47E1;
 Wed,  3 Feb 2021 17:16:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Feb 2021 17:16:36 -0000
Message-ID: <161237259696.943.6354872408153273432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203111806.7311-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210203111806.7311-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5BCI=2C01/12=5D_drm/i915/gt=3A_Move_engine?=
 =?utf-8?q?_setup_out_of_set=5Fdefault=5Fsubmission?=
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

Series: series starting with [CI,01/12] drm/i915/gt: Move engine setup out of set_default_submission
URL   : https://patchwork.freedesktop.org/series/86639/
State : failure

== Summary ==

Applying: drm/i915/gt: Move engine setup out of set_default_submission
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_execlists_submission.c
M	drivers/gpu/drm/i915/gt/intel_ring_submission.c
M	drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
Auto-merging drivers/gpu/drm/i915/gt/intel_ring_submission.c
Auto-merging drivers/gpu/drm/i915/gt/intel_execlists_submission.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_execlists_submission.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/gt: Move engine setup out of set_default_submission
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
