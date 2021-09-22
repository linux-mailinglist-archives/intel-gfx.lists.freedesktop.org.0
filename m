Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEE4413FB7
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 04:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 269076EA14;
	Wed, 22 Sep 2021 02:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B0476EA21;
 Wed, 22 Sep 2021 02:43:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F248FA7525;
 Wed, 22 Sep 2021 02:43:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 02:43:17 -0000
Message-ID: <163227859796.6944.2283414499919833716@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210922021305.33096-1-matthew.brost@intel.com>
In-Reply-To: <20210922021305.33096-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Drop_stealing_of_bits_from_i915=5Fsw=5Ffence_fu?=
 =?utf-8?q?nction_pointer?=
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

Series: drm/i915: Drop stealing of bits from i915_sw_fence function pointer
URL   : https://patchwork.freedesktop.org/series/94924/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b71f1b1135e9 drm/i915: Drop stealing of bits from i915_sw_fence function pointer
-:8: WARNING:TYPO_SPELLING: 'seperate' may be misspelled - perhaps 'separate'?
#8: 
seperate fields for function pointer and flags. If using two different
^^^^^^^^

-:92: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#92: FILE: drivers/gpu/drm/i915/i915_sw_fence.c:242:
+	BUG_ON(!fn);

total: 0 errors, 2 warnings, 0 checks, 127 lines checked


