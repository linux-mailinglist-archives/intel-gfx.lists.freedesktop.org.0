Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E62FA76B5AC
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 15:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB98610E340;
	Tue,  1 Aug 2023 13:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE8B810E340;
 Tue,  1 Aug 2023 13:22:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 906EAAADD7;
 Tue,  1 Aug 2023 13:22:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 01 Aug 2023 13:22:36 -0000
Message-ID: <169089615658.10130.585871445703339813@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1690886109.git.jani.nikula@intel.com>
In-Reply-To: <cover.1690886109.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915/uncore=3A_unclaimed_reg_debug_race_fix?=
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

Series: drm/i915/uncore: unclaimed reg debug race fix
URL   : https://patchwork.freedesktop.org/series/121726/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-./include/linux/spinlock.h:406:9: warning: context imbalance in 'fwtable_read16' - different lock contexts for basic block
-./include/linux/spinlock.h:406:9: warning: context imbalance in 'fwtable_read32' - different lock contexts for basic block
-./include/linux/spinlock.h:406:9: warning: context imbalance in 'fwtable_read64' - different lock contexts for basic block
-./include/linux/spinlock.h:406:9: warning: context imbalance in 'fwtable_read8' - different lock contexts for basic block
-./include/linux/spinlock.h:406:9: warning: context imbalance in 'gen6_write16' - different lock contexts for basic block
-./include/linux/spinlock.h:406:9: warning: context imbalance in 'gen6_write32' - different lock contexts for basic block
-./include/linux/spinlock.h:406:9: warning: context imbalance in 'gen6_write8' - different lock contexts for basic block
+./include/linux/spinlock.h:406:9: warning: context imbalance in 'fwtable_read16' - unexpected unlock
+./include/linux/spinlock.h:406:9: warning: context imbalance in 'fwtable_read32' - unexpected unlock
+./include/linux/spinlock.h:406:9: warning: context imbalance in 'fwtable_read64' - unexpected unlock
+./include/linux/spinlock.h:406:9: warning: context imbalance in 'fwtable_read8' - unexpected unlock
+./include/linux/spinlock.h:406:9: warning: context imbalance in 'gen6_write16' - unexpected unlock
+./include/linux/spinlock.h:406:9: warning: context imbalance in 'gen6_write32' - unexpected unlock
+./include/linux/spinlock.h:406:9: warning: context imbalance in 'gen6_write8' - unexpected unlock


