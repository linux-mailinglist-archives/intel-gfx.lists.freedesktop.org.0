Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E963D782C
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 16:11:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB556E4C4;
	Tue, 27 Jul 2021 14:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 30F746E4C4;
 Tue, 27 Jul 2021 14:11:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D4BFA47EB;
 Tue, 27 Jul 2021 14:11:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 27 Jul 2021 14:11:16 -0000
Message-ID: <162739507618.18667.3990380026451572967@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5Bv2=2C01/11=5D_drm/i915=3A_Check_for_nom?=
 =?utf-8?q?odeset_in_i915=5Finit=28=29_first?=
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

Series: series starting with [v2,01/11] drm/i915: Check for nomodeset in i915_init() first
URL   : https://patchwork.freedesktop.org/series/93066/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-
+drivers/gpu/drm/i915/display/intel_display.c:1900:21:    expected struct i915_vma *[assigned] vma
+drivers/gpu/drm/i915/display/intel_display.c:1900:21:    got void [noderef] __iomem *[assigned] iomem
+drivers/gpu/drm/i915/display/intel_display.c:1900:21: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/i915/gem/i915_gem_context.c:1409:34:    expected struct i915_address_space *vm
+drivers/gpu/drm/i915/gem/i915_gem_context.c:1409:34:    got struct i915_address_space [noderef] __rcu *vm
+drivers/gpu/drm/i915/gem/i915_gem_context.c:1409:34: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/i915/gem/selftests/mock_context.c:43:25:    expected struct i915_address_space [noderef] __rcu *vm
+drivers/gpu/drm/i915/gem/selftests/mock_context.c:43:25:    got struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/mock_context.c:43:25: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/i915/gem/selftests/mock_context.c:60:34:    expected struct i915_address_space *vm
+drivers/gpu/drm/i915/gem/selftests/mock_context.c:60:34:    got struct i915_address_space [noderef] __rcu *vm
+drivers/gpu/drm/i915/gem/selftests/mock_context.c:60:34: warning: incorrect type in argument 1 (different address spaces)
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
+drivers/gpu/drm/i915/gt/intel_reset.c:1402:5: warning: context imbalance in 'intel_gt_reset_trylock' - different lock contexts for basic block
+drivers/gpu/drm/i915/gt/intel_ring_submission.c:1210:24: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/i915/i915_perf.c:1443:15: warning: memset with byte count of 16777216
+drivers/gpu/drm/i915/i915_perf.c:1497:15: warning: memset with byte count of 16777216
+./include/asm-generic/bitops/find.h:112:45: warning: shift count is negative (-262080)
+./include/asm-generic/bitops/find.h:32:31: warning: shift count is negative (-262080)
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
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'xehp_fwtable_write16' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'xehp_fwtable_write32' - different lock contexts for basic block
+./include/linux/spinlock.h:409:9: warning: context imbalance in 'xehp_fwtable_write8' - different lock contexts for basic block
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
