Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E88C376A4
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 20:04:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C465010E098;
	Wed,  5 Nov 2025 19:04:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VwCpEfAg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C7D410E2FA;
 Wed,  5 Nov 2025 19:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762369484; x=1793905484;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=82ZWX9jW9NiF0AZBriih6t1FJz8tkEteOLge7UBaXI8=;
 b=VwCpEfAgynG8YP2T8v8sUZNUgFZL4w4UYlhDFyaOh3dBMU3ceU8AydwP
 /uDL+oHXiRjqNH0lcu/UNbRLiYXGiJaFEDdZ/45skZlkFSi7J0UulhJij
 FOX+pKB3IUxxvwf2lGzMS9hSr4PgCx+PHQx3dzIj4aAcwP0TLRGLVBs9F
 Q45b/SephlzJw6WuEDy/NLuzPDEaXYLYvzv94La4FdmCHiicYxQU4j02R
 xrO79WQP8srrWLvCdRtlUxqAB7oORqtZN5fofbP9Wd+iXEozMg9pWibLF
 ClYT1cJylSqNTqr6p0Qg+fmToY2iAaLNCnIxyXaQq1zx33JNZCf1pbNOO Q==;
X-CSE-ConnectionGUID: AjByYeIUSQW197gtWfdKPA==
X-CSE-MsgGUID: WgIq/jGUQYyR9aBdhaAr5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64530051"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64530051"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:04:41 -0800
X-CSE-ConnectionGUID: zCFYI182QkGG65CMtaBM5A==
X-CSE-MsgGUID: kDvUf7fsSLaV/foDQ8tu2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187828694"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.87])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:04:39 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/7] drm/i915/cx0: Undo the unjustified timeout change
Date: Wed,  5 Nov 2025 21:04:27 +0200
Message-ID: <20251105190433.16434-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Undo the bogus timeout change to
intel_cx0_powerdown_change_sequence(). If this was intentional
then it should have been justifie in the commit message.

This is also now abusing intel_de_wait_custom() in way that
prevents future conversion to poll_timeout_us().

Fixes: fc9be0a10ca4 ("drm/i915/ltphy: Add a wrapper for LT Phy powerdown change sequence")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b3b506d0e040..e7fe974129fe 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2830,7 +2830,7 @@ void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
 	/* Update Timeout Value */
 	if (intel_de_wait_custom(display, buf_ctl2_reg,
 				 intel_cx0_get_powerdown_update(lane_mask), 0,
-				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 2, NULL))
+				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of Lane reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
-- 
2.49.1

