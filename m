Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B057932A5
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 01:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 635E210E55E;
	Tue,  5 Sep 2023 23:32:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D4EC310E0FC;
 Tue,  5 Sep 2023 23:32:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CFF06A02F0;
 Tue,  5 Sep 2023 23:32:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Javier Pello" <devel@otheo.eu>
Date: Tue, 05 Sep 2023 23:32:14 -0000
Message-ID: <169395673482.19170.549773944656384415@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230902171039.2229126186d697dbcf62d6d8@otheo.eu>
In-Reply-To: <20230902171039.2229126186d697dbcf62d6d8@otheo.eu>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Fix_reservation_address_in_ggtt=5Freserve=5F?=
 =?utf-8?q?guc=5Ftop_=28rev2=29?=
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

Series: drm/i915/gt: Fix reservation address in ggtt_reserve_guc_top (rev2)
URL   : https://patchwork.freedesktop.org/series/122970/
State : warning

== Summary ==

Error: dim checkpatch failed
824eede2a92d drm/i915/gt: Fix reservation address in ggtt_reserve_guc_top
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
i915 0000:00:02.0: [drm:i915_init_ggtt [i915]] Failed to reserve top of GGTT for GuC

-:65: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#65: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:533:
+	GEM_BUG_ON(ggtt->vm.total <= GUC_TOP_RESERVE_SIZE);

total: 0 errors, 2 warnings, 0 checks, 37 lines checked


