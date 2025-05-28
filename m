Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0674AC744A
	for <lists+intel-gfx@lfdr.de>; Thu, 29 May 2025 01:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D27A10E18D;
	Wed, 28 May 2025 23:06:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H+reFydI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2502910E18D
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 May 2025 23:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748473611; x=1780009611;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N4L11jt/YmmgWoFlmZHwmI+gDrx4oIBoTgHtSXBfWE8=;
 b=H+reFydIv4KJb5BIDO7c/7O0EDfSbeBcI1L7ne2ofVQ1OuC1rzVS4go8
 5DlNFLSWH2rWGzc2wmGM0o0aSZKjpzjhouqRmPyjRE5yr8IC7B7KVFrTy
 nROo1vBUXAGdrjrsXsKc6VCPxJ4jG4FvqT3xBvYAhJGrXcDlZxWzeU34P
 Olu5sRZQG1S2g2YZIczMS0uaRJwpZRd7k9nvwDYuQ39Jv7BnffhSe1K4+
 ++gN+kIO+noDhMd9xO23OVPODgmBMmd4Ibw/mV4wbJnlMuK02CmToJCIA
 BKIE03QAGKglkufEoTelfW+fqgI4HBZRpYPQWqmpOf0Ov6JdGu93w7pcq w==;
X-CSE-ConnectionGUID: fX//INurTUaIZX3Mb990dg==
X-CSE-MsgGUID: ikg/8RJPTZyYEhPo793/Sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="50623956"
X-IronPort-AV: E=Sophos;i="6.15,322,1739865600"; d="scan'208";a="50623956"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 16:06:48 -0700
X-CSE-ConnectionGUID: XZqTr4h9SK2g2OBzf26PSA==
X-CSE-MsgGUID: 7dn7R5hSQyCmf+MEUoQQpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,322,1739865600"; d="scan'208";a="147266798"
Received: from jesusnar-desk.jf.intel.com ([10.165.21.207])
 by fmviesa003.fm.intel.com with ESMTP; 28 May 2025 16:06:48 -0700
From: Jesus Narvaez <jesus.narvaez@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jesus Narvaez <jesus.narvaez@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>,
 Mousumi Jana <mousumi.jana@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v3] drm/i915/guc: Handle race condition where wakeref count
 drops below 0
Date: Wed, 28 May 2025 16:05:51 -0700
Message-Id: <20250528230551.1855177-1-jesus.narvaez@intel.com>
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
v3: Removed addition to the original comment. (Daniele)

Fixes: 2f2cc53b5fe7 ("drm/i915/guc: Close deregister-context race against CT-loss")
Signed-off-by: Jesus Narvaez <jesus.narvaez@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Mousumi Jana <mousumi.jana@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c   | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 108331a69995..127316d2c8aa 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -3443,18 +3443,29 @@ static inline int guc_lrc_desc_unpin(struct intel_context *ce)
 	 * GuC is active, lets destroy this context, but at this point we can still be racing
 	 * with suspend, so we undo everything if the H2G fails in deregister_context so
 	 * that GuC reset will find this context during clean up.
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

