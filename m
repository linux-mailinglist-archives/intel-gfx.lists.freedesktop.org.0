Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E72CBC3C006
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:20:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68EF410E912;
	Thu,  6 Nov 2025 15:20:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BP982oxY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56AE110E912;
 Thu,  6 Nov 2025 15:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762442457; x=1793978457;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DCkBSvNfr7SC/sGY5WrQbwojT/B0xbdXOZtRjmf87Zw=;
 b=BP982oxY4kl8wdVsyY2i/6q9A7QLdJoOUN+5hp13DLNNcORVXtTXGNAk
 M986b5w7sNzVHVNaukeVt1wyyD5K8Zdz6YJwK9tBIhU2edO4cz8uN0DLt
 4zFV+2u++aRydjxoRc1pI+DvFMtbmgo1U9RQrURWQRqpx4xkvGPs+QVDJ
 gaG7a56XjyYPxO4Qi/9v88WRjRQuivXnLgaCsEZJHtl7JwkB0ciGlzcoU
 02VJ9PWWMFpeVHv+RoKbJVG6AhTbS70UVZzbZuW5guPiPjPLwWehhrXHE
 hK1zbylOTcTcfEtaQJs0+bMCUQ668XLeKoGqSkB64XJT9M/eFNlhujU7G w==;
X-CSE-ConnectionGUID: xIw3HWg2SumQr7rRV6wiAw==
X-CSE-MsgGUID: /fpwyQyzSmyOD/pfOAwFZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="76030529"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="76030529"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:20:57 -0800
X-CSE-ConnectionGUID: 27OzWKHdRmuS823HG8/V4g==
X-CSE-MsgGUID: /BcnMjTNQ2iCpRY02kCDZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187941271"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.213])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:20:56 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 01/10] drm/i915/cx0: Print the correct timeout
Date: Thu,  6 Nov 2025 17:20:40 +0200
Message-ID: <20251106152049.21115-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
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

intel_cx0_powerdown_change_sequence() uses one timeout,
and the pritns another one. Use the same one in both.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b3b506d0e040..21f046576ee3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2833,7 +2833,7 @@ void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
 				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 2, NULL))
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of Lane reset after %dus.\n",
-			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
+			 phy_name(phy), XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US);
 }
 
 void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
-- 
2.49.1

