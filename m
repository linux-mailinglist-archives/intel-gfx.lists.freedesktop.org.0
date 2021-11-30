Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF64463DC9
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 19:27:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C91856E41D;
	Tue, 30 Nov 2021 18:27:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F37806E41D;
 Tue, 30 Nov 2021 18:27:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED079AADDC;
 Tue, 30 Nov 2021 18:27:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 30 Nov 2021 18:27:31 -0000
Message-ID: <163829685195.20410.2922633267443857002@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211116194929.10211-1-matthew.brost@intel.com>
In-Reply-To: <20211116194929.10211-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Drop_stealing_of_bits_from_i915=5Fsw=5Ffence_fu?=
 =?utf-8?q?nction_pointer_=28rev5=29?=
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

Series: drm/i915: Drop stealing of bits from i915_sw_fence function pointer (rev5)
URL   : https://patchwork.freedesktop.org/series/94924/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6f01e9cabea1 drm/i915: Drop stealing of bits from i915_sw_fence function pointer
-:8: WARNING:TYPO_SPELLING: 'seperate' may be misspelled - perhaps 'separate'?
#8: 
seperate fields for function pointer and flags. If using two different
^^^^^^^^

-:128: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#128: FILE: drivers/gpu/drm/i915/i915_sw_fence.c:244:
+	BUG_ON(!fn);

total: 0 errors, 2 warnings, 0 checks, 203 lines checked


