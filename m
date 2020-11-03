Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D55C42A4A4F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 16:48:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 348AE6ECCE;
	Tue,  3 Nov 2020 15:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ABDE86ECCE;
 Tue,  3 Nov 2020 15:48:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A81E2A73C9;
 Tue,  3 Nov 2020 15:48:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Tue, 03 Nov 2020 15:48:07 -0000
Message-ID: <160441848768.25741.12734155872570521507@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201103152834.12727-1-uma.shankar@intel.com>
In-Reply-To: <20201103152834.12727-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Enable_HDR_on_MCA_LSPCON_based_Gen9_devices_=28rev9=29?=
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

Series: Enable HDR on MCA LSPCON based Gen9 devices (rev9)
URL   : https://patchwork.freedesktop.org/series/68081/
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
+drivers/gpu/drm/i915/gvt/mmio.c:290:23: warning: memcpy with byte count of 279040
+drivers/gpu/drm/i915/i915_perf.c:1440:15: warning: memset with byte count of 16777216
+drivers/gpu/drm/i915/i915_perf.c:1494:15: warning: memset with byte count of 16777216
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
