Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB2A5152FF
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 19:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F00B10F742;
	Fri, 29 Apr 2022 17:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D996710F73E;
 Fri, 29 Apr 2022 17:50:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9E36AAA91;
 Fri, 29 Apr 2022 17:50:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Fri, 29 Apr 2022 17:50:53 -0000
Message-ID: <165125465388.1653.9566738007887548221@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220429173201.20499-1-ramalingam.c@intel.com>
In-Reply-To: <20220429173201.20499-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?lrc_selftest_fixes_=28rev5=29?=
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

Series: lrc selftest fixes (rev5)
URL   : https://patchwork.freedesktop.org/series/101353/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:28:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:28:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:28:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:33:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:33:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:51:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:51:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:51:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:57:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:57:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_reset.c:1391:5: warning: context imbalance in 'intel_gt_reset_trylock' - different lock contexts for basic block
+./include/linux/find.h:40:31: warning: shift count is negative (-24)
+./include/linux/find.h:40:31: warning: shift count is negative (-24)
+./include/linux/find.h:40:31: warning: shift count is negative (-24)
+./include/linux/find.h:40:31: warning: shift count is negative (-24)
+./include/linux/find.h:40:31: warning: shift count is negative (-448)
+./include/linux/find.h:40:31: warning: shift count is negative (-448)
+./include/linux/spinlock.h:404:9: warning: context imbalance in 'fwtable_read16' - different lock contexts for basic block
+./include/linux/spinlock.h:404:9: warning: context imbalance in 'fwtable_read32' - different lock contexts for basic block
+./include/linux/spinlock.h:404:9: warning: context imbalance in 'fwtable_read64' - different lock contexts for basic block
+./include/linux/spinlock.h:404:9: warning: context imbalance in 'fwtable_read8' - different lock contexts for basic block
+./include/linux/spinlock.h:404:9: warning: context imbalance in 'fwtable_write16' - different lock contexts for basic block
+./include/linux/spinlock.h:404:9: warning: context imbalance in 'fwtable_write32' - different lock contexts for basic block
+./include/linux/spinlock.h:404:9: warning: context imbalance in 'fwtable_write8' - different lock contexts for basic block
+./include/linux/spinlock.h:404:9: warning: context imbalance in 'gen6_write16' - different lock contexts for basic block
+./include/linux/spinlock.h:404:9: warning: context imbalance in 'gen6_write32' - different lock contexts for basic block
+./include/linux/spinlock.h:404:9: warning: context imbalance in 'gen6_write8' - different lock contexts for basic block


