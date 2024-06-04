Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E3F8FB720
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:29:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D327710E4F9;
	Tue,  4 Jun 2024 15:29:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fKpt7XUf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6763710E519
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514942; x=1749050942;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VYFh68xKyWZaKvRh7O5aMhEfTwx14Prltrebfxba1YU=;
 b=fKpt7XUfa8NrzB1VkjaYcsUUIB0BkXSMMqoXYWyT5uS7bsE1M+0t1wGs
 7oMim9AMA2Z2dBFTxTHqtNLo1iTFqyYRkdATSg3uhLqkfEaI6bw3Prbtb
 YqgkH4ON7ENlDJlcg+l7+lh+SJUdzBR0rPMDufjp40OaLqPId5ALQg/ag
 LzqesDd3l4SvkDpkJbAU1HsFvP4JvOsPWx2mVDGO6NRx7qB6nXr4KNc7m
 FOC1H1/9fnwBJVmj/WjZAoXxjclEcShcQK0BVFGb1IIffezkb/9Luj87v
 Kowlrd/FBDfW+ZLfC9bmls2JrIxoujdaRDz3dxcv2KJlWTUhN/KZ4iXy0 A==;
X-CSE-ConnectionGUID: K4yorGhoSNOsfUzfL54OGg==
X-CSE-MsgGUID: 1icTYy0cRRa8ZSEGBcbxew==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949565"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949565"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:02 -0700
X-CSE-ConnectionGUID: lC3lHMu+TbGop/hAJ/OXdg==
X-CSE-MsgGUID: g9I9PN8iR3yiLLX1HGoznA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="60465559"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 32/65] drm/i915: pass dev_priv explicitly to CHV_CANVAS
Date: Tue,  4 Jun 2024 18:25:50 +0300
Message-Id: <a48c7984a14412ef74af250d5bc2ea9097aa2222.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
explicitly to the CHV_CANVAS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a6d7928fbe37..241121b0b3ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2110,7 +2110,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
 		intel_de_write(dev_priv, CHV_BLEND(dev_priv, pipe),
 			       CHV_BLEND_LEGACY);
-		intel_de_write(dev_priv, CHV_CANVAS(pipe), 0);
+		intel_de_write(dev_priv, CHV_CANVAS(dev_priv, pipe), 0);
 	}
 
 	crtc->active = true;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ddfa77231426..8aa35bbb2e1b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2272,7 +2272,7 @@
 #define   CHV_CANVAS_BLUE_MASK	REG_GENMASK(9, 0)
 
 #define CHV_BLEND(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _CHV_BLEND_A)
-#define CHV_CANVAS(pipe)	_MMIO_TRANS2(dev_priv, pipe, _CHV_CANVAS_A)
+#define CHV_CANVAS(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _CHV_CANVAS_A)
 
 /* Display/Sprite base address macros */
 #define DISP_BASEADDR_MASK	(0xfffff000)
-- 
2.39.2

