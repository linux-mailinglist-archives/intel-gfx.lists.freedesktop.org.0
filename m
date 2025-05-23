Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69820AC2C8F
	for <lists+intel-gfx@lfdr.de>; Sat, 24 May 2025 01:59:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C50C10E0F2;
	Fri, 23 May 2025 23:52:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jo4bXt/d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16FFE10E0F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 May 2025 23:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748044338; x=1779580338;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vyMXHhvY2zRLCTyGCvavPnRJwGngdkAgvdpr2FeutN4=;
 b=jo4bXt/dFsPd4+ClJghY9I7rs3/TcvmuJfskXk40Ny88ZESQQMdnv35p
 xtreTt07TIiIQiHvBIMKIk628S7lVukAsHJyi+KBcyO375cyieh6O65iE
 iURQMIk3MdQhaw/sNQIW/3CcgGb0RZNzdeXD5yuV8CWYgMdB1VbREHFiN
 KhqgfLhVTUmt8JxE8yNMJ9NYS6MihU8lylG0zmCOqNeMpuS5JXSJa5QMk
 dUE0mBKvUAw7xseR0v3xgHorGHFesHmrmOKkghE2VZKJT8T8/mYau50fQ
 4Bl3obhrNF0YI3YzS0hJA+3BCCzRdoUdQHWQB3WglTAg5i38haqe0jeRK w==;
X-CSE-ConnectionGUID: zi+IZRzlTXiHCYWaaNhIcA==
X-CSE-MsgGUID: 7IioWS8FQX6l97PSnlNA9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="53766509"
X-IronPort-AV: E=Sophos;i="6.15,310,1739865600"; d="scan'208";a="53766509"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 16:52:16 -0700
X-CSE-ConnectionGUID: 0ghTiVmTSe+b8hIkpb8dZQ==
X-CSE-MsgGUID: pkurFN6eSQG/40uMuL0ueQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,310,1739865600"; d="scan'208";a="146544228"
Received: from jesusnar-desk.jf.intel.com ([10.165.21.207])
 by fmviesa004.fm.intel.com with ESMTP; 23 May 2025 16:52:16 -0700
From: Jesus Narvaez <jesus.narvaez@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jesus Narvaez <jesus.narvaez@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>,
 Mousumi Jana <mousumi.jana@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2] drm/i915/guc: Handle race condition where wakeref count
 drops below 0
Date: Fri, 23 May 2025 16:52:10 -0700
Message-Id: <20250523235210.1329493-1-jesus.narvaez@intel.com>
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

v2: Expand comment to better explain change. (Daniele)

Fixes: 2f2cc53b5fe7 ("drm/i915/guc: Close deregister-context race against CT-loss")
Signed-off-by: Jesus Narvaez <jesus.narvaez@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Mousumi Jana <mousumi.jana@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 22 ++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index f8cb7c630d5b..a20a9969c4e7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -3441,20 +3441,32 @@ static inline int guc_lrc_desc_unpin(struct intel_context *ce)
 
 	/*
 	 * GuC is active, lets destroy this context, but at this point we can still be racing
-	 * with suspend, so we undo everything if the H2G fails in deregister_context so
-	 * that GuC reset will find this context during clean up.
+	 * with suspend, so we undo everything if the H2G fails in deregister_context
+	 * and if the context was scheduled to be destroyed so that GuC reset will
+	 * find this context during clean up.
+	 *
+	 * There is a race condition where the reset code could have altered
+	 * this context's state and done a wakeref put before we try to
+	 * deregister it here. So check if the context is still set to be
+	 * destroyed before undoing earlier changes, to avoid two wakeref puts
+	 * on the same context.
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

