Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE67A3D701
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 11:42:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4838710E92C;
	Thu, 20 Feb 2025 10:42:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WOLcUbXq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44BEC10E930;
 Thu, 20 Feb 2025 10:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740048163; x=1771584163;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nGCzX2qWHh25W+R4yPOb+zcrNWhZB6fLBoL2alcpJsg=;
 b=WOLcUbXqgtOF8oyIm1uJO0qFU4VL+Ju82bn8oJxYQ6VnMVixFucOndeD
 AGn4kFh0hLk8W67krFmXelGyS+ygYTaw16+r3No6KIqDN3458j5aRkOrv
 ZN1dPKqtox7ZyXj0xg4LmzN/cCnx0VUBlPMMlom/u8hVe2xzORxWZsbYW
 Dr9X8h2htVF7U2sSaQPYYRrqjwrT+rl2FPAz9XGlKzzezR4fY4R0eJY/m
 TyARHWD4i0eXwoAaiIxwrx5pGksYsexsBcEcOxKLcVg5Z3rS4yOWOCJGk
 8UnFir1LwT6/0eRtItC9IcrTKmCFrz5/s7+hJ/9f/Fz5JG8ufwddofd1J w==;
X-CSE-ConnectionGUID: VnD0b8y9RbSXYELA9tLIfw==
X-CSE-MsgGUID: YN5dQ2tPTtS2a8baSDMJ9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="51804877"
X-IronPort-AV: E=Sophos;i="6.13,301,1732608000"; d="scan'208";a="51804877"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 02:42:43 -0800
X-CSE-ConnectionGUID: N2oKPxs8Qd6jc5sr40ONtw==
X-CSE-MsgGUID: vW3EUEk2Sdmc8pA8fXJbtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,301,1732608000"; d="scan'208";a="119941936"
Received: from slindbla-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.224])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 02:42:39 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, vinod.govindapillai@intel.com,
 ville.syrjala@linux.intel.com, santhosh.reddy.guddati@intel.com,
 jani.saarinen@intel.com
Subject: [PATCH v9 4/8] drm/i915/fbc: introduce HAS_FBC_DIRTY_RECT() for FBC
 dirty rect support
Date: Thu, 20 Feb 2025 12:41:40 +0200
Message-ID: <20250220104144.207526-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250220104144.207526-1-vinod.govindapillai@intel.com>
References: <20250220104144.207526-1-vinod.govindapillai@intel.com>
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

Introduce a macro to check if the platform supports FBC dirty
rect capability.

v2: - update to the patch subject

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

