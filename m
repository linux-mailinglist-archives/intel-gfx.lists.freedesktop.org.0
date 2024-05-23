Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8568CD30A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2310A10E5D6;
	Thu, 23 May 2024 13:00:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CO731yoC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A2A10E539
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469245; x=1748005245;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9rhCKD56IVyikgw7pt6l/v5Uf4yYscenCJR7e/kQeow=;
 b=CO731yoCgvgN8u6RoUnU60FKAfvzrR5SF8GoNx+hD1No4EHVmPF6CgLx
 q4Hjk2UK7r6aNIW7HU7VFcSeXQ6OMJqOWSmHF9lvxHQtwh2QTpY/qvFrA
 z4tHSsev5sFbBtMENxZtlqBsx87lug1n1phsQGIq+YsNY3M1B4p0rL/zA
 mx9jePtBN4KgQuUFaOPECT6NoIae0rPJo7mD3r4SEwW9b3zgi5yipxAx7
 sloav0YeBswoGU+TfX1ol00LEoXDBUcnGdj9L5LyGciP22emYYEZeUtVY
 /ZowTJFD7zF0ffkObdFQ5FXoAUus1xA1lCC+YNgURq125hGIa4TCnAeXi A==;
X-CSE-ConnectionGUID: 1yrEdiVHQGONXiQtTGuK5g==
X-CSE-MsgGUID: YRlt9TCxTGi5BhTEAi847w==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16610046"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="16610046"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:44 -0700
X-CSE-ConnectionGUID: w2i8y0MFRP+e3OUuPAtrZg==
X-CSE-MsgGUID: OYKSr/GIRL6ZvrdXk+jiRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33672419"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 14/16] drm/i915: pass dev_priv explicitly to PRIMSIZE
Date: Thu, 23 May 2024 15:59:42 +0300
Message-Id: <b672f17b4c3d5ba7ac606798bb3799408c26f075.1716469091.git.jani.nikula@intel.com>
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
explicitly to the PRIMSIZE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c      | 2 +-
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 1cefcdd4f26a..82cb393a0a22 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -476,7 +476,7 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 
 		intel_de_write_fw(dev_priv, PRIMPOS(dev_priv, i9xx_plane),
 				  PRIM_POS_Y(crtc_y) | PRIM_POS_X(crtc_x));
-		intel_de_write_fw(dev_priv, PRIMSIZE(i9xx_plane),
+		intel_de_write_fw(dev_priv, PRIMSIZE(dev_priv, i9xx_plane),
 				  PRIM_HEIGHT(crtc_h - 1) | PRIM_WIDTH(crtc_w - 1));
 		intel_de_write_fw(dev_priv, PRIMCNSTALPHA(i9xx_plane), 0);
 	}
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index 7f291b34f10a..8d45c879e74a 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -94,8 +94,8 @@
 #define   PRIM_POS_X_MASK	REG_GENMASK(15, 0)
 #define   PRIM_POS_X(x)		REG_FIELD_PREP(PRIM_POS_X_MASK, (x))
 
-#define _PRIMSIZE_A		0x60a0c
-#define PRIMSIZE(plane)		_MMIO_TRANS2(dev_priv, plane, _PRIMSIZE_A)
+#define _PRIMSIZE_A			0x60a0c
+#define PRIMSIZE(dev_priv, plane)	_MMIO_TRANS2(dev_priv, plane, _PRIMSIZE_A)
 #define   PRIM_HEIGHT_MASK	REG_GENMASK(31, 16)
 #define   PRIM_HEIGHT(h)	REG_FIELD_PREP(PRIM_HEIGHT_MASK, (h))
 #define   PRIM_WIDTH_MASK	REG_GENMASK(15, 0)
-- 
2.39.2

