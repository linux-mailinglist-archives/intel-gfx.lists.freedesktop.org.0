Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571818CD30F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E939A10E64B;
	Thu, 23 May 2024 13:00:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X6Io4Me9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2157D10E5A9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469248; x=1748005248;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P3khCOKzFVaNKXEZxyL120c2xPRrfbUchSwkyGEk0qo=;
 b=X6Io4Me9cDiaKdlnuRn3mD2HVj4ZOXABsg8EHGQMIStXRhR1d5cEfSME
 zy4PY7Q6zWX46MQL7UlGMyGAOjtBJgwLVglSOOJuzjvUVZxeKvOoutWOG
 skyuF+g8ZpH7t0SkXmigw0t+CGSS6AzsJccBnaDFAlt2srHoB0eRJ2W57
 1XnYowkHMzhO5fkeJKrgu/MlJqXjYBwc4oLVFnsItTRSTN7FWeaaO4JEj
 xqXX/g/SESPSk+xxGrzOUIVIHWLgc9Fnem1Sv8dwZ+NeBXzdEJjtkk6t8
 8p/zUBbFksEBAaElFcwi/IqSewZEXCI0Hk8pgjByocFhclY0OFb0+z8Us A==;
X-CSE-ConnectionGUID: 3IVvIt8BQvur4BB1JYJKgA==
X-CSE-MsgGUID: wn0Am0HnSm+arHcbKZyi0A==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16610052"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="16610052"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:48 -0700
X-CSE-ConnectionGUID: jPA6H8oBSPS5/WgTNwlhFQ==
X-CSE-MsgGUID: 8tRa/rJmTlyzRlkNf6DGZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33672442"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 15/16] drm/i915: pass dev_priv explicitly to PRIMCNSTALPHA
Date: Thu, 23 May 2024 15:59:43 +0300
Message-Id: <783477b86f4d53849775cbf690bb8b9042792a66.1716469091.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716469091.git.jani.nikula@intel.com>
References: <cover.1716469091.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PRIMCNSTALPHA register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c      | 3 ++-
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h | 4 ++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 82cb393a0a22..5c8778865156 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -478,7 +478,8 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 				  PRIM_POS_Y(crtc_y) | PRIM_POS_X(crtc_x));
 		intel_de_write_fw(dev_priv, PRIMSIZE(dev_priv, i9xx_plane),
 				  PRIM_HEIGHT(crtc_h - 1) | PRIM_WIDTH(crtc_w - 1));
-		intel_de_write_fw(dev_priv, PRIMCNSTALPHA(i9xx_plane), 0);
+		intel_de_write_fw(dev_priv,
+				  PRIMCNSTALPHA(dev_priv, i9xx_plane), 0);
 	}
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index 8d45c879e74a..a2ba55fa2b30 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -101,8 +101,8 @@
 #define   PRIM_WIDTH_MASK	REG_GENMASK(15, 0)
 #define   PRIM_WIDTH(w)		REG_FIELD_PREP(PRIM_WIDTH_MASK, (w))
 
-#define _PRIMCNSTALPHA_A	0x60a10
-#define PRIMCNSTALPHA(plane)	_MMIO_TRANS2(dev_priv, plane, _PRIMCNSTALPHA_A)
+#define _PRIMCNSTALPHA_A		0x60a10
+#define PRIMCNSTALPHA(dev_priv, plane)	_MMIO_TRANS2(dev_priv, plane, _PRIMCNSTALPHA_A)
 #define   PRIM_CONST_ALPHA_ENABLE	REG_BIT(31)
 #define   PRIM_CONST_ALPHA_MASK		REG_GENMASK(7, 0)
 #define   PRIM_CONST_ALPHA(alpha)	REG_FIELD_PREP(PRIM_CONST_ALPHA_MASK, (alpha))
-- 
2.39.2

