Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBEA2C8FA9
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 22:12:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5619B6E8A3;
	Mon, 30 Nov 2020 21:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 17CEC6E89B;
 Mon, 30 Nov 2020 21:12:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10B4AA0BCB;
 Mon, 30 Nov 2020 21:12:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 30 Nov 2020 21:12:39 -0000
Message-ID: <160677075906.10642.1231566262996631472@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201130131910.9412-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201130131910.9412-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/5=5D_drm/i915/gt=3A_Add_an_insert=5Fe?=
 =?utf-8?q?ntry_for_gen8=5Fppgtt?=
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

Series: series starting with [1/5] drm/i915/gt: Add an insert_entry for gen8_ppgtt
URL   : https://patchwork.freedesktop.org/series/84406/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-
+drivers/gpu/drm/i915/gt/intel_reset.c:1312:5: warning: context imbalance in 'intel_gt_reset_trylock' - different lock contexts for basic block
+drivers/gpu/drm/i915/gt/selftest_reset.c:100:20:    expected void *in
+drivers/gpu/drm/i915/gt/selftest_reset.c:100:20:    got void [noderef] __iomem *[assigned] s
+drivers/gpu/drm/i915/gt/selftest_reset.c:100:20: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/i915/gt/selftest_reset.c:101:46:    expected void const *src
+drivers/gpu/drm/i915/gt/selftest_reset.c:101:46:    got void [noderef] __iomem *[assigned] s
+drivers/gpu/drm/i915/gt/selftest_reset.c:101:46: warning: incorrect type in argument 2 (different address spaces)
+drivers/gpu/drm/i915/gt/selftest_reset.c:136:20:    expected void *in
+drivers/gpu/drm/i915/gt/selftest_reset.c:136:20:    got void [noderef] __iomem *[assigned] s
+drivers/gpu/drm/i915/gt/selftest_reset.c:136:20: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/i915/gt/selftest_reset.c:137:46:    expected void const *src
+drivers/gpu/drm/i915/gt/selftest_reset.c:137:46:    got void [noderef] __iomem *[assigned] s
+drivers/gpu/drm/i915/gt/selftest_reset.c:137:46: warning: incorrect type in argument 2 (different address spaces)
+drivers/gpu/drm/i915/gt/selftest_reset.c:98:34:    expected unsigned int [usertype] *s
+drivers/gpu/drm/i915/gt/selftest_reset.c:98:34:    got void [noderef] __iomem *[assigned] s
+drivers/gpu/drm/i915/gt/selftest_reset.c:98:34: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/i915/gvt/mmio.c:295:23: warning: memcpy with byte count of 279040
+drivers/gpu/drm/i915/i915_perf.c:1447:15: warning: memset with byte count of 16777216
+drivers/gpu/drm/i915/i915_perf.c:1501:15: warning: memset with byte count of 16777216
+drivers/gpu/drm/i915/selftests/i915_syncmap.c:80:54: warning: dubious: x | !y
+./include/linux/seqlock.h:838:24: warning: trying to copy expression type 31
+./include/linux/seqlock.h:838:24: warning: trying to copy expression type 31
+./include/linux/seqlock.h:864:16: warning: trying to copy expression type 31
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_read16' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_read32' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_read64' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_read8' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_write16' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_write32' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'fwtable_write8' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read16' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read32' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read64' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_read8' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_write16' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_write32' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen11_fwtable_write8' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_read16' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_read32' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_read64' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_read8' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_write16' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_write32' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen12_fwtable_write8' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read16' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read32' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read64' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_read8' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_write16' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_write32' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen6_write8' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen8_write16' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen8_write32' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'gen8_write8' - different lock contexts for basic block


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
