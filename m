Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2DFC376B0
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 20:04:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC07010E33A;
	Wed,  5 Nov 2025 19:04:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KC3cAlO7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA45010E33A;
 Wed,  5 Nov 2025 19:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762369492; x=1793905492;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n9rRAvnKyK+gJ4esNaYfDkX01Atru0JPeW/THvbDykk=;
 b=KC3cAlO7Upu6RrhC9jl2VlePNhBJEXqi5AowFnAcAg2I0hRtR7FsnVKc
 tyvHPg361JbnroZdy5AFwOTAOp8omnmtLI1pyM6GxKHvOatMYQs96vXEM
 HlJsTk7kv0YN0UUn7zQa32F3MQ0AiTwp15xC0O99LPA99H84zMQHt92Co
 1RMmHl+YHNN19DoqTosEEeOwwyApB1JdXgGGL7kJb6TEoY4ivoYsHum7e
 xeIBsf43U2hgL1KSQgZAfvJkkLMWiDQ+79/JYNgJySekiyzDQ7mn1YylM
 H1K/4YeqNu2yGrdcp3rZ2jbfXKyWFKDJ8ijHCJdFkzNcC5pGJHFJ0AecF w==;
X-CSE-ConnectionGUID: 7osskB7URJ+Q6d4FkCI6qg==
X-CSE-MsgGUID: k/xhMxL3S7GUOOXiaPFyjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="68147320"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="68147320"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:04:51 -0800
X-CSE-ConnectionGUID: DZDkfnBYS0+ZH1Ah2tJ44Q==
X-CSE-MsgGUID: WQnD/nL1Sj2R5FP1VpvtuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="224784473"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.87])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:04:50 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/7] drm/i915/cx0:
 s/XELPDP_PORT_RESET_END_TIMEOUT/XELPDP_PORT_RESET_END_TIMEOUT_US/
Date: Wed,  5 Nov 2025 21:04:30 +0200
Message-ID: <20251105190433.16434-5-ville.syrjala@linux.intel.com>
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

Include the units the in the define name for XELPDP_PORT_RESET_END_TIMEOUT
to make it match all its other counterparts.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 55ce4f673c63..7c9c181aba8a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2926,10 +2926,10 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 
 	if (intel_de_wait_for_clear(display, XELPDP_PORT_BUF_CTL2(display, port),
 				    lane_phy_current_status,
-				    XELPDP_PORT_RESET_END_TIMEOUT))
+				    XELPDP_PORT_RESET_END_TIMEOUT_US))
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of Lane reset after %dms.\n",
-			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
+			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT_US);
 }
 
 static void intel_cx0_program_phy_lane(struct intel_encoder *encoder, int lane_count,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index bd62c396c837..77244a5d52d4 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -80,7 +80,7 @@
 #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
 #define XELPDP_PORT_RESET_START_TIMEOUT_US		5
 #define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US		100
-#define XELPDP_PORT_RESET_END_TIMEOUT			15
+#define XELPDP_PORT_RESET_END_TIMEOUT_US		15
 #define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
 
 #define _XELPDP_PORT_BUF_CTL1_LN0_A			0x64004
-- 
2.49.1

