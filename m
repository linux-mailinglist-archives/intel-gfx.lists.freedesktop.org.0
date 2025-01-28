Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 481BEA20DAF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 16:54:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B7910E69A;
	Tue, 28 Jan 2025 15:54:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="doo6MqO4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF6C710E697;
 Tue, 28 Jan 2025 15:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738079683; x=1769615683;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p9D0KgxcdEtEG9bD9gwKxpec+5GU6H2pYDE8mxM6rvc=;
 b=doo6MqO4iYTJkIsY20k0rtUumzUbW35u8Amq5PYcYYzf64cIMLr8wD6P
 MXMiqEw5FCeD3iB93JzmKssnoHDqaopoXVzk5oKQrxENcw1dnZNhMj2bp
 aED+yC0Kc0IZ0IrW00NBc9vEGZOtSiTgLtBUuEfnbIN1M/cKHLYPSCBVW
 7D5gu8b6KhZfxMhV1fqYarjuE3i634LMKHXnNVda/TLU1A4oi+bnkye+u
 mDHJxhs8kC4O9H5Epv8awlDJglYYFEUNtZybrK+jcwSF1t5TX0XzYuj7j
 b0n8MH3Is1imr5WICDdWJXbYQd/5bKqYVrqX8noUyFvbCxnQrURWpuerC Q==;
X-CSE-ConnectionGUID: 0BW8n67ySsGsDatK6z1ZXQ==
X-CSE-MsgGUID: ZJKzDQeRQOq1GGq9aa8yBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="49228085"
X-IronPort-AV: E=Sophos;i="6.13,241,1732608000"; d="scan'208";a="49228085"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 07:54:42 -0800
X-CSE-ConnectionGUID: BUTBcIP9SZyEV0cQEcRjCQ==
X-CSE-MsgGUID: iWh5aNxETsq90angbESjag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="139635284"
Received: from slindbla-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.171])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 07:54:40 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v5 2/7] drm/i915/xe3: introduce HAS_FBC_DIRTY_RECT() for FBC
 dirty rect support
Date: Tue, 28 Jan 2025 17:54:13 +0200
Message-ID: <20250128155418.305595-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250128155418.305595-1-vinod.govindapillai@intel.com>
References: <20250128155418.305595-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
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

Introduce a macro to check if the platform supports FBC dirty
rect capability.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index fc33791f02b9..717286981687 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -163,6 +163,7 @@ struct intel_display_platforms {
 #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dsc)
 #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
 #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
+#define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
 #define HAS_FPGA_DBG_UNCLAIMED(__display)	(DISPLAY_INFO(__display)->has_fpga_dbg)
 #define HAS_FW_BLC(__display)		(DISPLAY_VER(__display) >= 3)
 #define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
-- 
2.43.0

