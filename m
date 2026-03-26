Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CoKNrBpxWl1+AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9C1338FE2
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 254CF10E9C5;
	Thu, 26 Mar 2026 17:15:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="koZOkbT+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 798D710E956;
 Thu, 26 Mar 2026 17:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774545325; x=1806081325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XsjkWnBXJaeSCGMvm1MHN9OixPiXI2dOQYPNhTPBr7Q=;
 b=koZOkbT+f9gJ7dG/wyj2oi3EIAZn44l6O4pEXUHHd2jEtN82I9F6eB2G
 1mnB/ujljK1JqPW+AWGysIqF62T/IufSbiFLaquRZn05lV5t5OS3GCvuW
 6Q9VtxX1AMzbkbE3dOjKda3+gbcZHo9wI+tY7gcqhUHNVm/Yiyjc8SXPu
 Gr3yLO7kKbAqJ4WexExLdbYctdQIFiHNdO5AFCOWIX7CTmiy6AutVdJhX
 r7d9JolRAC1xcNkBu2Gm55p9dO6wzWw7rartw6rDnpaIK7i57sH6SYtFe
 Q4wi9eFESjsWaCfts7/J7dfGJ8YSDHY9y698BO3Zi+qBu1C4hiDLTK1jm g==;
X-CSE-ConnectionGUID: +HcxfjAmR7K1R0mi3bgOvg==
X-CSE-MsgGUID: Bu7mTRusTzKygTVmKB1GnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75630568"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75630568"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:25 -0700
X-CSE-ConnectionGUID: epuEvHkHTrCQ4cJr2tUgeA==
X-CSE-MsgGUID: gvhqJs9yQVilPfukZc93Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="262975555"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:23 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com,
 suresh.kumar.kurmi@intel.com
Subject: [PATCH 06/19] drm/i915/display: Fix HAS_DC3CO() and add DC3CO trigger
 enum
Date: Thu, 26 Mar 2026 22:45:44 +0530
Message-ID: <20260326171557.2065632-7-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: AC9C1338FE2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Fix HAS_DC3CO() based on display version and introduce an enum to
track DC3CO enabling triggers.

BSpec: 75253
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../gpu/drm/i915/display/intel_display_device.h   |  2 +-
 .../gpu/drm/i915/display/intel_display_power.h    | 15 +++++++++++++++
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 35e06fcf794d..002fe0ce951a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -189,7 +189,7 @@ struct intel_display_platforms {
 #define HAS_LRR(__display)		(DISPLAY_VER(__display) >= 12)
 #define HAS_LSPCON(__display)		(IS_DISPLAY_VER(__display, 9, 10))
 #define HAS_LT_PHY(__display)		((__display)->platform.novalake)
-#define HAS_DC3CO(__display)		((__display)->platform.novalake)
+#define HAS_DC3CO(__display)		(DISPLAY_VER(__display) >= 35)
 #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)
 #define HAS_MSO(__display)		(DISPLAY_VER(__display) >= 12)
 #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)->has_overlay)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index d616d5d09cbe..3fb45154864e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -131,6 +131,21 @@ struct intel_power_domain_mask {
 	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
 };
 
+/*
+ * DC3CO enabling triggers (bitmask).
+ * DC3CO may be enabled when at least one of these triggers is active.
+ * Additional constraints may still apply.
+ */
+enum intel_dc3co_trigger {
+	DC3CO_TRIGGER_NONE	     = 0,
+	DC3CO_TRIGGER_PSR2	     = BIT(0),
+	DC3CO_TRIGGER_LOBF	     = BIT(1),
+	DC3CO_TRIGGER_PANEL_REPLAY   = BIT(2),
+	DC3CO_TRIGGER_ALL  = DC3CO_TRIGGER_PSR2 |
+			     DC3CO_TRIGGER_LOBF |
+			     DC3CO_TRIGGER_PANEL_REPLAY,
+};
+
 struct i915_power_domains {
 	/*
 	 * Power wells needed for initialization at driver init and suspend
-- 
2.43.0

