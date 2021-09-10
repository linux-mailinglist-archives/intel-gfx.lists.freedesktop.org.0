Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D56A4066ED
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 07:55:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A59F6E96D;
	Fri, 10 Sep 2021 05:55:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9B1DC6E96D;
 Fri, 10 Sep 2021 05:55:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8A456A363D;
 Fri, 10 Sep 2021 05:55:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Sep 2021 05:55:18 -0000
Message-ID: <163125331856.14829.12321829704927686987@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210910053317.3379249-1-matthew.d.roper@intel.com>
In-Reply-To: <20210910053317.3379249-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?i915=3A_Simplify_mmio_handling_=26_add_new_DG2_shadow_table?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: i915: Simplify mmio handling & add new DG2 shadow table
URL   : https://patchwork.freedesktop.org/series/94534/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:27:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:27:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:27:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:32:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:32:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:49:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:49:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:49:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:56:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:56:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_reset.c:1392:5: warning: context imbalance in 'intel_gt_reset_trylock' - different lock contexts for basic block
+drivers/gpu/drm/i915/i915_perf.c:1442:15: warning: memset with byte count of 16777216
+drivers/gpu/drm/i915/i915_perf.c:1496:15: warning: memset with byte count of 16777216
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read16' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read32' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read64' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read8' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_write16' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_write32' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_write8' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_write16' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_write32' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_write8' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read16' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read32' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read64' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read8' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen8_write16' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen8_write32' - different lock contexts for basic block
-./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen8_write8' - different lock contexts for basic block


