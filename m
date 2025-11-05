Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9ACC376AA
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 20:04:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE20010E304;
	Wed,  5 Nov 2025 19:04:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AO1fXeUQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F61410E2FA;
 Wed,  5 Nov 2025 19:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762369485; x=1793905485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jcSXN0geJdF8+kqhazRQzMCshqIy/exRsPL/hXz/DEc=;
 b=AO1fXeUQ0tW9aWKJAMdS90XMSgjac1tNK/iJn2LSL7iQb0UM87DQZEcZ
 U1w0H72nCSyYdjemPsr9BvCERCbYSutV5Dvp8Te6uGfb80OE9yofTvDMf
 ZaJWw3Jq7yHCAcqUc/6ffzDKS7QsYS5dXhNQ5ZlahqOrmelp3KtEtAY3e
 ybjJd1ogEfIy8rDRBfoanWty5Nfp2xo6Jz8UcY1ZxtL/RiPT+Jft0jaX4
 QSKyUO/ZAV4f0McnrbWQonJKDI9D60W6SBD4SNNZaEXD7G7YP+fMgBuZL
 1MDJiwAZzaYmt8jEDn0LV47ZoCv2qWLTOezuPJWbyl8Mjwn07lx23+h6A Q==;
X-CSE-ConnectionGUID: 4DH56B3NTzeZ0Ht8Dh4b+A==
X-CSE-MsgGUID: 5x6mKB6lRV6A1o2K7XLk5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="63505383"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="63505383"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:04:44 -0800
X-CSE-ConnectionGUID: yr+ugq7uR1q5P/KKb+0whw==
X-CSE-MsgGUID: 8izvQZmDSCGOwdC+o5SWIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187986627"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.87])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:04:43 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/7] drm/i915/cx0: Get rid of XELPDP_MSGBUS_TIMEOUT_FAST_US
Date: Wed,  5 Nov 2025 21:04:28 +0200
Message-ID: <20251105190433.16434-3-ville.syrjala@linux.intel.com>
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

XELPDP_MSGBUS_TIMEOUT_FAST_US looks to be just a obfuscated version
of the default 2 microsecond fast timeout used by
intel_wait_for_register(). get rid of it to make it clear what's going
on here.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 3 +--
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 1 -
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index e7fe974129fe..6f57ad751c9e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -168,8 +168,7 @@ int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
 				 XELPDP_PORT_P2M_MSGBUS_STATUS(display, port, lane),
 				 XELPDP_PORT_P2M_RESPONSE_READY,
 				 XELPDP_PORT_P2M_RESPONSE_READY,
-				 XELPDP_MSGBUS_TIMEOUT_FAST_US,
-				 XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
+				 2, XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
 		drm_dbg_kms(display->drm,
 			    "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
 			    phy_name(phy), *val);
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 635b35669348..67c6f06ab9a2 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -75,7 +75,6 @@
 #define   XELPDP_PORT_P2M_ERROR_SET			REG_BIT(15)
 
 #define XELPDP_MSGBUS_TIMEOUT_SLOW			1
-#define XELPDP_MSGBUS_TIMEOUT_FAST_US			2
 #define XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US		3200
 #define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
 #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
-- 
2.49.1

