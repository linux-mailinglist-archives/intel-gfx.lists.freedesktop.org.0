Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKx2KC6tnWmgQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:52:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D20B188083
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:52:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D42E410E586;
	Tue, 24 Feb 2026 13:52:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PWQpN+QN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3862E10E58A;
 Tue, 24 Feb 2026 13:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771941164; x=1803477164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q2Bn9lnSfEDYc0QD2Yp9lc++sT0To8M0uD1WdWx71Es=;
 b=PWQpN+QNXYmZoVHQ0/YgpAbLJeacLImA4FVK7NKgKCSlEpUVXPGHHh71
 Ez00L6wwTm9yBZ075pPIKMce8CnVUSqpwmMp2aJPtlS5FelCbcy48Ihg5
 MUf38BHbLLyad2B8bZUljmDaV6bcAIvsxFzVawGulVBGEOgrs1ZCMNsw7
 //MaoVUDZEYpU7tZcoN9/U9hNlAy+BGlD1vIf9Y3dqWbWr6xBn931Kdkv
 1iuBMjyXagg50DvDRjeOMqPWQdLynaMQHKlUwbAQGQL9x1uxaCN96QvdZ
 AE9ZIp1KUHKNaZfL1nFTnUfXPLnVbKAAwEVy34DSTSrb6QtibJf2Nfqfv Q==;
X-CSE-ConnectionGUID: sCVM4RXFTf6lxdLUiPSreA==
X-CSE-MsgGUID: f0ANHcUmT6WBqv4S3VOjZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="60531017"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="60531017"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:52:44 -0800
X-CSE-ConnectionGUID: IGZL3TyOQyO17NTThH3D2g==
X-CSE-MsgGUID: GiEZG5N7TkypqgYEunHRPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215925245"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.201])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:52:42 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH v4 08/16] drm/i915/display: convert W/As in
 intel_display_device.c to new framework
Date: Tue, 24 Feb 2026 15:49:55 +0200
Message-ID: <20260224135208.140752-9-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260224135208.140752-1-luciano.coelho@intel.com>
References: <20260224135208.140752-1-luciano.coelho@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 4D20B188083
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_display_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_wa.c     | 3 +++
 drivers/gpu/drm/i915/display/intel_display_wa.h     | 1 +
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 0241603470a2..a8ef1e6193b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -19,6 +19,7 @@
 #include "intel_display_reg_defs.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_wa.h"
 #include "intel_fbc.h"
 #include "intel_step.h"
 
@@ -1773,7 +1774,7 @@ static void __intel_display_device_info_runtime_init(struct intel_display *displ
 		display_runtime->port_mask |= BIT(PORT_F);
 
 	/* Wa_14011765242: adl-s A0,A1 */
-	if (display->platform.alderlake_s && IS_DISPLAY_STEP(display, STEP_A0, STEP_A2))
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_14011765242))
 		for_each_pipe(display, pipe)
 			display_runtime->num_scalers[pipe] = 0;
 	else if (DISPLAY_VER(display) >= 11) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index f51e5a86164b..2934331d905f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -91,6 +91,9 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return DISPLAY_VER(display) == 13;
 	case INTEL_DISPLAY_WA_14011508470:
 		return (IS_DISPLAY_VERx100(display, 1200, 1300));
+	case INTEL_DISPLAY_WA_14011765242:
+		return display->platform.alderlake_s &&
+			IS_DISPLAY_STEP(display, STEP_A0, STEP_A2);
 	case INTEL_DISPLAY_WA_14020863754:
 		return DISPLAY_VERx100(display) == 3000 ||
 			DISPLAY_VERx100(display) == 2000 ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index a9346e763112..b781a3c6d803 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -35,6 +35,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_14011503030,
 	INTEL_DISPLAY_WA_14011503117,
 	INTEL_DISPLAY_WA_14011508470,
+	INTEL_DISPLAY_WA_14011765242,
 	INTEL_DISPLAY_WA_14020863754,
 	INTEL_DISPLAY_WA_14025769978,
 	INTEL_DISPLAY_WA_15013987218,
-- 
2.51.0

