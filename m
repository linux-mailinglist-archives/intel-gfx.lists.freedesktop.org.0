Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3A3C8E24B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 12:55:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F8C10E76F;
	Thu, 27 Nov 2025 11:55:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k1wpxD82";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D345510E698;
 Thu, 27 Nov 2025 11:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764244504; x=1795780504;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nGbkGE6jRLTXi6oCNYjKew2CLzieC/4qwpzFF1Xx8V8=;
 b=k1wpxD82hQuPg9r8ux6w9cUNCr/f10BfGXK6CXUq3jEeg4ldsssmA0mb
 50XtAV96bFI3XltGfvfYpNhNy+P/itPTwyh5ejtr08Z9fXvFvtC4AqJxD
 jCJJ7BSnjFKqnhacQALjkFlFAJWandPmsVUZ1OO9rD+asprNrXXWejlzc
 v+/qL4na+/sDyG08xRu2i2HaFDtmR3WMPVXCVfc39m2+wSpPdSKDXNG9N
 Ak7V4tZGRlANrzIb0ghdX5zqBTpJAZ3R0SmT359yQDEIPXF7K2RTr79v4
 9RyCwA+4GToaRwqmgk7dYoq+Vq78iyxq9N77OPSwBYcRpe/Nnp0Gj0f4+ w==;
X-CSE-ConnectionGUID: PlvWE9TkTtiswCoShGWkSw==
X-CSE-MsgGUID: 0ubulitVTs6mg5Xarcyn1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="83682773"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="83682773"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 03:55:03 -0800
X-CSE-ConnectionGUID: G+JPkSzaQfCXznAX7a4DnA==
X-CSE-MsgGUID: iArVyvMGTc+T2F7scVnvzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="224167917"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.244])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 03:55:01 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, matthew.d.roper@intel.com,
 gustavo.sousa@intel.com, ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v4 3/3] drm/i915/fbc: Apply Wa_14025769978
Date: Thu, 27 Nov 2025 13:53:49 +0200
Message-ID: <20251127115349.249120-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251127115349.249120-1-vinod.govindapillai@intel.com>
References: <20251127115349.249120-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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

Disable cache read setting in the cacheability configuration
register as per the wa recommendation

Bspec: 79482, 74722, 68881
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c |  2 ++
 drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c        | 10 ++++++++--
 3 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index b2e71fa61c0a..a00af39f7538 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -72,6 +72,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return IS_DISPLAY_VERx100(display, 1100, 1400);
 	case INTEL_DISPLAY_WA_15018326506:
 		return display->platform.battlemage;
+	case INTEL_DISPLAY_WA_14025769978:
+		return DISPLAY_VER(display) == 35;
 	default:
 		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index f648b00cb97d..a68c0bb7e516 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -27,6 +27,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_14011503117,
 	INTEL_DISPLAY_WA_22014263786,
 	INTEL_DISPLAY_WA_15018326506,
+	INTEL_DISPLAY_WA_14025769978,
 };
 
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 85978196b607..84a1ab0bd418 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -951,8 +951,14 @@ static void fbc_sys_cache_update_config(struct intel_display *display, u32 reg,
 
 	lockdep_assert_held(&display->fbc.sys_cache.lock);
 
-	/* Cache read enable is set by default */
-	reg |= FBC_SYS_CACHE_READ_ENABLE;
+	/*
+	 * Wa_14025769978:
+	 * Fixes: SoC hardware issue in read caching
+	 * Workaround: disable cache read setting which is enabled by default.
+	 */
+	if (!intel_display_wa(display, 14025769978))
+		/* Cache read enable is set by default */
+		reg |= FBC_SYS_CACHE_READ_ENABLE;
 
 	intel_de_write(display, XE3P_LPD_FBC_SYS_CACHE_USAGE_CFG, reg);
 
-- 
2.43.0

