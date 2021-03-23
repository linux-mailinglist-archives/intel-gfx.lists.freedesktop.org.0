Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD5A3454FD
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 02:28:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEAB36E820;
	Tue, 23 Mar 2021 01:28:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC4B66E071;
 Tue, 23 Mar 2021 01:28:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9C0DA8169;
 Tue, 23 Mar 2021 01:28:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 23 Mar 2021 01:28:35 -0000
Message-ID: <161646291582.20051.12115698272995884301@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210320044245.3920043-1-matthew.d.roper@intel.com>
In-Reply-To: <20210320044245.3920043-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Disassociate_display_version_from_INTEL=5FGEN=28=29_=28rev5=29?=
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

Series: Disassociate display version from INTEL_GEN() (rev5)
URL   : https://patchwork.freedesktop.org/series/88198/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-
+drivers/gpu/drm/i915/gt/intel_reset.c:1323:5: warning: context imbalance in 'intel_gt_reset_trylock' - different lock contexts for basic block
+drivers/gpu/drm/i915/gvt/mmio.c:295:23: warning: memcpy with byte count of 279040
+drivers/gpu/drm/i915/i915_perf.c:1434:15: warning: memset with byte count of 16777216
+drivers/gpu/drm/i915/i915_perf.c:1488:15: warning: memset with byte count of 16777216
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
