Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8987D5839F6
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 10:01:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EAA110E96D;
	Thu, 28 Jul 2022 08:01:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5A5C11ADBD;
 Thu, 28 Jul 2022 08:01:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4647A00E8;
 Thu, 28 Jul 2022 08:01:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mauro.chehab@linux.intel.com>
Date: Thu, 28 Jul 2022 08:01:30 -0000
Message-ID: <165899529077.21235.12769843635221692318@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1657800199.git.mchehab@kernel.org>
In-Reply-To: <cover.1657800199.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBG?=
 =?utf-8?q?ix_performance_regressions_with_TLB_and_add_GuC_support_=28rev4?=
 =?utf-8?q?=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Fix performance regressions with TLB and add GuC support (rev4)
URL   : https://patchwork.freedesktop.org/series/106293/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/106293/revisions/4/mbox/ not applied
Applying: drm/i915/gt: Ignore TLB invalidations on idle engines
Applying: drm/i915/gt: document with_intel_gt_pm_if_awake()
Applying: drm/i915/gt: Invalidate TLB of the OA unit at TLB invalidations
Applying: drm/i915/gt: Only invalidate TLBs exposed to user manipulation
Applying: drm/i915/gt: Skip TLB invalidations once wedged
Applying: drm/i915/gt: Batch TLB invalidations
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/gt/intel_tlb.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0006 drm/i915/gt: Batch TLB invalidations
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


