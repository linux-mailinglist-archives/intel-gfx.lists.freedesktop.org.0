Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 018A778B14D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 15:04:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 656FB10E2CF;
	Mon, 28 Aug 2023 13:04:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E3E8910E2CE;
 Mon, 28 Aug 2023 13:04:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC94EA0BA8;
 Mon, 28 Aug 2023 13:04:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Javier Pello" <devel@otheo.eu>
Date: Mon, 28 Aug 2023 13:04:26 -0000
Message-ID: <169322786687.20016.14837397831327164167@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230825163343.e2fc7eb70db106edc6df3c4c@otheo.eu>
In-Reply-To: <20230825163343.e2fc7eb70db106edc6df3c4c@otheo.eu>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Fix_reservation_address_in_ggtt=5Freserve=5F?=
 =?utf-8?q?guc=5Ftop?=
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

Series: drm/i915/gt: Fix reservation address in ggtt_reserve_guc_top
URL   : https://patchwork.freedesktop.org/series/122970/
State : warning

== Summary ==

Error: dim checkpatch failed
483b43d16420 drm/i915/gt: Fix reservation address in ggtt_reserve_guc_top
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
i915 0000:00:02.0: [drm:i915_init_ggtt [i915]] Failed to reserve top of GGTT for GuC

-:41: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#41: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:520:
+ * in uc_fw_ggtt_offset() simple. */

-:55: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#55: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:531:
+	GEM_BUG_ON(ggtt->vm.total <= GUC_TOP_RESERVE_SIZE);

total: 0 errors, 3 warnings, 0 checks, 35 lines checked


