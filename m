Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC828FB71E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3EED10E4F4;
	Tue,  4 Jun 2024 15:29:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A9lQKsFo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 522D110E4F6
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514937; x=1749050937;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=18ieK2VZQWmhQ1sT4DP1E4tIF5oYAjjO6o2/aQRTVn4=;
 b=A9lQKsFocLNZRXNywWXg1qhnsGpzKuyZ15BKIB6mzwunol6VIukP7S10
 4x5sO7FNVJ89ERj0w220cwsA9uW9MvmlfMiSJGny9774IHeY+AGI7vuL6
 FdJL7T02LXqQOdxCgpm9XJsqjXtJOidF+DtPrsHCXXqrWYLwte1X7bNw6
 nXfwiDuypDYI2sTQ9QqeaN63DDsIILcY17BNlxSfamHdlDAx32yxoKYOd
 haTtnZmbg5VyJC5IM5kPjWn6UMxuNuvLvTu5RdKM7hMSCIiMl/wXU0PCu
 6wEcm6wYivzEfbOyPJiQe7N9zvA8bLHS9qh7YC6wPXzBCE1jvaNSvxTki A==;
X-CSE-ConnectionGUID: JL0N1u6QQPm6UcASjS84Lg==
X-CSE-MsgGUID: wDN9Tz48SpKNIFEdmRLckA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="17009261"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="17009261"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:57 -0700
X-CSE-ConnectionGUID: XUaezDu5SRaHvM8IoGEPJQ==
X-CSE-MsgGUID: IL2CyyUvTmSd80iiIZ2gTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37742243"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 31/65] drm/i915: pass dev_priv explicitly to CHV_BLEND
Date: Tue,  4 Jun 2024 18:25:49 +0300
Message-Id: <a2c5064ee3a985f7b7b5c7e672737df447d3af29.1717514638.git.jani.nikula@intel.com>
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
explicitly to the CHV_BLEND register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 48ee8aee21be..a6d7928fbe37 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2108,7 +2108,8 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	intel_de_write(dev_priv, VLV_PIPE_MSA_MISC(pipe), 0);
 
 	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
-		intel_de_write(dev_priv, CHV_BLEND(pipe), CHV_BLEND_LEGACY);
+		intel_de_write(dev_priv, CHV_BLEND(dev_priv, pipe),
+			       CHV_BLEND_LEGACY);
 		intel_de_write(dev_priv, CHV_CANVAS(pipe), 0);
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5d9429bf17a8..ddfa77231426 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2271,7 +2271,7 @@
 #define   CHV_CANVAS_GREEN_MASK	REG_GENMASK(19, 10)
 #define   CHV_CANVAS_BLUE_MASK	REG_GENMASK(9, 0)
 
-#define CHV_BLEND(pipe)		_MMIO_TRANS2(dev_priv, pipe, _CHV_BLEND_A)
+#define CHV_BLEND(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _CHV_BLEND_A)
 #define CHV_CANVAS(pipe)	_MMIO_TRANS2(dev_priv, pipe, _CHV_CANVAS_A)
 
 /* Display/Sprite base address macros */
-- 
2.39.2

