Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 073826203F5
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 00:46:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A11410E3DB;
	Mon,  7 Nov 2022 23:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5532D10E3DB;
 Mon,  7 Nov 2022 23:46:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4CE1BAADDC;
 Mon,  7 Nov 2022 23:46:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Date: Mon, 07 Nov 2022 23:46:22 -0000
Message-ID: <166786478231.17756.6199021082984024061@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221022001008.2340224-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221022001008.2340224-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_prepare_for_uC_loading_on_MTL_=28rev6=29?=
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

Series: drm/i915: prepare for uC loading on MTL (rev6)
URL   : https://patchwork.freedesktop.org/series/108925/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/108925/revisions/6/mbox/ not applied
Applying: drm/i915/huc: only load HuC on GTs that have VCS engines
Applying: drm/i915/uc: fetch uc firmwares for each GT
Applying: drm/i915/uc: use different ggtt pin offsets for uc loads
Applying: drm/i915/guc: Add GuC deprivilege feature to MTL
Applying: drm/i915/mtl: Handle wopcm per-GT and limit calculations.
Applying: drm/i915/guc: define media GT GuC send regs
Applying: drm/i915/guc: handle interrupts from media GuC
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_gt_irq.c
M	drivers/gpu/drm/i915/gt/intel_gt_regs.h
M	drivers/gpu/drm/i915/gt/uc/intel_guc.c
M	drivers/gpu/drm/i915/gt/uc/intel_guc.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/uc/intel_guc.h
Auto-merging drivers/gpu/drm/i915/gt/uc/intel_guc.c
Auto-merging drivers/gpu/drm/i915/gt/intel_gt_regs.h
Auto-merging drivers/gpu/drm/i915/gt/intel_gt_irq.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_gt_irq.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 drm/i915/guc: handle interrupts from media GuC
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


