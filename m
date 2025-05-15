Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8876DAB8F33
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 20:40:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E3F910E078;
	Thu, 15 May 2025 18:40:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lqv/XG/R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B61710E078
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 May 2025 18:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747334395; x=1778870395;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fMH/4LKtHXpHAO3YWP+0+xkZzK2TbAvsttqQh3xQoGQ=;
 b=Lqv/XG/RBRsfiuOV+lF+uRiwLNzheQ1DhvzRoBgASkRtdUFoTsRyF9i9
 uFfMJgm817QC+fzkSU+JLUQgRUUSO7QlhKEfSoj7yUGN/f4r3KoBA2vch
 gqKR0inJTNqbK8sC9NXrrWr6IhPMxDyJscdt9boM44/XhHSlc5a4Ssjy5
 KgZZzToROvNJ0H1GVuuWJ1xpdcna21I/ntVkuZpGObVdrvmE0uQfxU5RL
 OxJC1HFmme0vpVOxFHxLtcphLq0vykLS0H49WcAqRonVzgRCVebuJsMKH
 EaZMEPRMaRJ6BXxsW9NfRE8D2aagOTQLpQxMAIsU7uK65XyDU97tpXCy8 Q==;
X-CSE-ConnectionGUID: MrB4p6M8TimWbtpOy3wdpQ==
X-CSE-MsgGUID: ASb599hMSnKWqzNcBijngA==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49276172"
X-IronPort-AV: E=Sophos;i="6.15,292,1739865600"; d="scan'208";a="49276172"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 11:39:55 -0700
X-CSE-ConnectionGUID: msc8EemDTY6sbKWDSJDgpw==
X-CSE-MsgGUID: UFmVjQXlT6ykzzk0n8td2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,292,1739865600"; d="scan'208";a="143684000"
Received: from jesusnar-desk.jf.intel.com ([10.165.21.207])
 by fmviesa004.fm.intel.com with ESMTP; 15 May 2025 11:39:54 -0700
From: Jesus Narvaez <jesus.narvaez@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jesus Narvaez <jesus.narvaez@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>,
 Mousumi Jana <mousumi.jana@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH] drm/i915/guc: Handle race condition where wakeref count drops
 below 0
Date: Thu, 15 May 2025 11:37:52 -0700
Message-Id: <20250515183752.4155523-1-jesus.narvaez@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is a rare race condition when preparing for a reset where
guc_lrc_desc_unpin() could be in the process of deregistering a context
while a different thread is scrubbing outstanding contexts and it alters
the context state and does a wakeref put. Then, if there is a failure
with deregister_context(), a second wakeref put could occur. As a result
the wakeref count could drop below 0 and fail an INTEL_WAKEREF_BUG_ON()
check.

Therefore if there is a failure with deregister_context(), undo the
context state changes and do a wakeref put only if the context was set
to be destroyed earlier.

Fixes: 2f2cc53b5fe7 ("drm/i915/guc: Close deregister-context race against CT-loss")
Signed-off-by: Jesus Narvaez <jesus.narvaez@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Mousumi Jana <mousumi.jana@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c    | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index f8cb7c630d5b..f066c2dd7114 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -3441,20 +3441,26 @@ static inline int guc_lrc_desc_unpin(struct intel_context *ce)
 
 	/*
 	 * GuC is active, lets destroy this context, but at this point we can still be racing
-	 * with suspend, so we undo everything if the H2G fails in deregister_context so
-	 * that GuC reset will find this context during clean up.
+	 * with suspend, so we undo everything if the H2G fails in deregister_context
+	 * and if the context was scheduled to be destroyed so that GuC reset will
+	 * find this context during clean up.
 	 */
 	ret = deregister_context(ce, ce->guc_id.id);
 	if (ret) {
+		bool pending_destroyed;
 		spin_lock_irqsave(&ce->guc_state.lock, flags);
-		set_context_registered(ce);
-		clr_context_destroyed(ce);
+		pending_destroyed = context_destroyed(ce);
+		if (pending_destroyed) {
+			set_context_registered(ce);
+			clr_context_destroyed(ce);
+		}
 		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 		/*
 		 * As gt-pm is awake at function entry, intel_wakeref_put_async merely decrements
 		 * the wakeref immediately but per function spec usage call this after unlock.
 		 */
-		intel_wakeref_put_async(&gt->wakeref);
+		if (pending_destroyed)
+			intel_wakeref_put_async(&gt->wakeref);
 	}
 
 	return ret;
-- 
2.34.1

