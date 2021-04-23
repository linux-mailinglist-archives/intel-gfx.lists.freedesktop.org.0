Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5316369CEB
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 00:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E718E6ECAB;
	Fri, 23 Apr 2021 22:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 622E96ECAB;
 Fri, 23 Apr 2021 22:51:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C13AA41FB;
 Fri, 23 Apr 2021 22:51:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Fri, 23 Apr 2021 22:51:07 -0000
Message-ID: <161921826737.2790.9903048121411396132@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210423223131.879208-1-jason@jlekstrand.net>
In-Reply-To: <20210423223131.879208-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915/gem=3A_ioctl_clean-ups?=
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

Series: drm/i915/gem: ioctl clean-ups
URL   : https://patchwork.freedesktop.org/series/89443/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-
+drivers/gpu/drm/i915/gem/i915_gem_context.c:1270:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.c:1270:17:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:1270:17:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:1488:14: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.c:1488:14:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:1488:14:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:1811:25: warning: symbol 'lazy_create_context_locked' was not declared. Should it be static?
+drivers/gpu/drm/i915/gem/i915_gem_context.c:2014:21: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.c:2014:21:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:2014:21:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:2015:39: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.c:2015:39:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:2015:39:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:698:9: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.c:698:9:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:698:9:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:707:22: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.c:707:22:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:707:22:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:726:27: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.c:726:27:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:726:27:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:742:13: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.c:742:13:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.c:742:13:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_context.h:154:16: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.h:154:16: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.h:154:16:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.h:154:16:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.h:154:16:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_context.h:154:16:    struct i915_address_space [noderef] __rcu *
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: error: incompatible types in comparison expression (different address spaces):
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: error: incompatible types in comparison expression (different address spaces):
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: error: incompatible types in comparison expression (different address spaces):
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: error: incompatible types in comparison expression (different address spaces):
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: error: incompatible types in comparison expression (different address spaces):
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space *
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space *
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space *
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space *
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space *
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space [noderef] __rcu *
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space [noderef] __rcu *
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space [noderef] __rcu *
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space [noderef] __rcu *
+./drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:746:13: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:746:13:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:746:13:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:772:49: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:772:49:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:772:49:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:33:16:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:704:33: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:704:33:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:704:33:    struct i915_address_space [noderef] __rcu *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:838:33: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:838:33:    struct i915_address_space *
+drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:838:33:    struct i915_address_space [noderef] __rcu *
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
+drivers/gpu/drm/i915/gt/intel_reset.c:1329:5: warning: context imbalance in 'intel_gt_reset_trylock' - different lock contexts for basic block
+drivers/gpu/drm/i915/gt/intel_ring_submission.c:1203:24: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/i915/gvt/mmio.c:295:23: warning: memcpy with byte count of 279040
+drivers/gpu/drm/i915/i915_perf.c:1434:15: warning: memset with byte count of 16777216
+drivers/gpu/drm/i915/i915_perf.c:1488:15: warning: memset with byte count of 16777216
+drivers/gpu/drm/i915/selftests/i915_syncmap.c:80:54: warning: dubious: x | !y
+drivers/gpu/drm/i915/selftests/i915_vma.c:42:24: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/i915/selftests/i915_vma.c:42:24:    struct i915_address_space *
+drivers/gpu/drm/i915/selftests/i915_vma.c:42:24:    struct i915_address_space [noderef] __rcu *
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
