Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B517BEF4C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 01:45:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9BE010E30F;
	Mon,  9 Oct 2023 23:45:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 25B1D10E14F;
 Mon,  9 Oct 2023 23:45:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E632AADF1;
 Mon,  9 Oct 2023 23:45:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Mon, 09 Oct 2023 23:45:06 -0000
Message-ID: <169689510603.24831.8772638248027860377@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231009172919.1769055-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231009172919.1769055-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Define_and_use_GuC_and_CTB_TLB_invalidation_rou?=
 =?utf-8?q?tines_=28rev4=29?=
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

Series: drm/i915: Define and use GuC and CTB TLB invalidation routines (rev4)
URL   : https://patchwork.freedesktop.org/series/124744/
State : warning

== Summary ==

Error: dim checkpatch failed
36647bbe0ce7 drm/i915: Add GuC TLB Invalidation device info flags
07632c06461f drm/i915/guc: Add CT size delay helper
4ee8731d1a12 drm/i915: Define and use GuC and CTB TLB invalidation routines
-:339: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#339: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1999:
+	if (wait)
+		kfree(wait);

total: 0 errors, 1 warnings, 0 checks, 431 lines checked
04d03a27359c drm/i915: No TLB invalidation on suspended GT
bdb3ec78385d drm/i915: No TLB invalidation on wedged GT
09dac8ebae98 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
453962073582 drm/i915: Enable GuC TLB invalidations for MTL


