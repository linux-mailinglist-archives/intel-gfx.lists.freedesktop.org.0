Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7DC1EBC58
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 15:05:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA656E3B2;
	Tue,  2 Jun 2020 13:05:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03E426E3A2;
 Tue,  2 Jun 2020 13:05:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 025ABA011B;
 Tue,  2 Jun 2020 13:05:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 02 Jun 2020 13:05:40 -0000
Message-ID: <159110314000.21429.2162559788605183802@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200602121557.3888-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200602121557.3888-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_drm/i915=3A_Identify_Cometlake_platform_?=
 =?utf-8?b?KHJldjIp?=
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

Series: series starting with drm/i915: Identify Cometlake platform (rev2)
URL   : https://patchwork.freedesktop.org/series/77916/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.0
Fast mode used, each commit won't be checked separately.
-
+drivers/gpu/drm/i915/display/intel_display.c:1222:22: error: Expected constant expression in case statement
+drivers/gpu/drm/i915/display/intel_display.c:1225:22: error: Expected constant expression in case statement
+drivers/gpu/drm/i915/display/intel_display.c:1228:22: error: Expected constant expression in case statement
+drivers/gpu/drm/i915/display/intel_display.c:1231:22: error: Expected constant expression in case statement
+drivers/gpu/drm/i915/gem/i915_gem_context.c:2274:17: error: bad integer constant expression
+drivers/gpu/drm/i915/gem/i915_gem_context.c:2275:17: error: bad integer constant expression
+drivers/gpu/drm/i915/gem/i915_gem_context.c:2276:17: error: bad integer constant expression
+drivers/gpu/drm/i915/gem/i915_gem_context.c:2277:17: error: bad integer constant expression
+drivers/gpu/drm/i915/gem/i915_gem_context.c:2278:17: error: bad integer constant expression
+drivers/gpu/drm/i915/gem/i915_gem_context.c:2279:17: error: bad integer constant expression
+drivers/gpu/drm/i915/gt/intel_reset.c:1310:5: warning: context imbalance in 'intel_gt_reset_trylock' - different lock contexts for basic block
+drivers/gpu/drm/i915/gt/sysfs_engines.c:61:10: error: bad integer constant expression
+drivers/gpu/drm/i915/gt/sysfs_engines.c:62:10: error: bad integer constant expression
+drivers/gpu/drm/i915/gt/sysfs_engines.c:66:10: error: bad integer constant expression
+drivers/gpu/drm/i915/gvt/mmio.c:287:23: warning: memcpy with byte count of 279040
+drivers/gpu/drm/i915/i915_perf.c:1425:15: warning: memset with byte count of 16777216
+drivers/gpu/drm/i915/i915_perf.c:1479:15: warning: memset with byte count of 16777216
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'fwtable_read16' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'fwtable_read32' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'fwtable_read64' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'fwtable_read8' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'fwtable_write16' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'fwtable_write32' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'fwtable_write8' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen11_fwtable_read16' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen11_fwtable_read32' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen11_fwtable_read64' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen11_fwtable_read8' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen11_fwtable_write16' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen11_fwtable_write32' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen11_fwtable_write8' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen12_fwtable_read16' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen12_fwtable_read32' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen12_fwtable_read64' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen12_fwtable_read8' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen12_fwtable_write16' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen12_fwtable_write32' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen12_fwtable_write8' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen6_read16' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen6_read32' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen6_read64' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen6_read8' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen6_write16' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen6_write32' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen6_write8' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen8_write16' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen8_write32' - different lock contexts for basic block
+./include/linux/spinlock.h:408:9: warning: context imbalance in 'gen8_write8' - different lock contexts for basic block

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
