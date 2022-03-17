Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D4D4DD0DF
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 23:44:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BC7A10E025;
	Thu, 17 Mar 2022 22:44:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82D5910E025;
 Thu, 17 Mar 2022 22:44:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7F63DA008A;
 Thu, 17 Mar 2022 22:44:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 17 Mar 2022 22:44:38 -0000
Message-ID: <164755707849.32161.14282415256573510389@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220304234639.3231617-1-matthew.d.roper@intel.com>
In-Reply-To: <20220304234639.3231617-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv2=2C1/2=5D_drm/i915/dg2=3A_Add_preempti?=
 =?utf-8?q?on_changes_for_Wa=5F14015141709_=28rev2=29?=
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

Series: series starting with [v2,1/2] drm/i915/dg2: Add preemption changes for Wa_14015141709 (rev2)
URL   : https://patchwork.freedesktop.org/series/101070/
State : failure

== Summary ==

Applying: drm/i915/dg2: Add preemption changes for Wa_14015141709
Applying: drm/i915/dg2: Add debugfs to control global preemption setting
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_gt.c
M	drivers/gpu/drm/i915/gt/intel_gt.h
M	drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
M	drivers/gpu/drm/i915/gt/intel_gt_regs.h
M	drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
Auto-merging drivers/gpu/drm/i915/gt/intel_gt_regs.h
Auto-merging drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
Auto-merging drivers/gpu/drm/i915/gt/intel_gt.h
Auto-merging drivers/gpu/drm/i915/gt/intel_gt.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm/i915/dg2: Add debugfs to control global preemption setting
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


