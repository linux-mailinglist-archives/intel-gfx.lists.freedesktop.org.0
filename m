Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEBD746FDA
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 13:26:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61F3310E119;
	Tue,  4 Jul 2023 11:26:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 137CD10E119;
 Tue,  4 Jul 2023 11:26:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E63E5AADFC;
 Tue,  4 Jul 2023 11:26:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 04 Jul 2023 11:26:30 -0000
Message-ID: <168846999093.28592.11781503400042287336@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1688463863.git.jani.nikula@intel.com>
In-Reply-To: <cover.1688463863.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915/uncore=3A_unclaimed_reg_debug_race_fix_and_optimizatio?=
 =?utf-8?q?n?=
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

Series: drm/i915/uncore: unclaimed reg debug race fix and optimization
URL   : https://patchwork.freedesktop.org/series/120167/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-./include/linux/spinlock.h:405:9: warning: context imbalance in 'fwtable_read16' - different lock contexts for basic block
-./include/linux/spinlock.h:405:9: warning: context imbalance in 'fwtable_read32' - different lock contexts for basic block
-./include/linux/spinlock.h:405:9: warning: context imbalance in 'fwtable_read64' - different lock contexts for basic block
-./include/linux/spinlock.h:405:9: warning: context imbalance in 'fwtable_read8' - different lock contexts for basic block
-./include/linux/spinlock.h:405:9: warning: context imbalance in 'gen6_write16' - different lock contexts for basic block
-./include/linux/spinlock.h:405:9: warning: context imbalance in 'gen6_write32' - different lock contexts for basic block
-./include/linux/spinlock.h:405:9: warning: context imbalance in 'gen6_write8' - different lock contexts for basic block
-./include/linux/spinlock.h:405:9: warning: too many warnings


