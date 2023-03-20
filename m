Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC636C0CBD
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 471CF10E2A3;
	Mon, 20 Mar 2023 09:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 342C410E2A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679303134; x=1710839134;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=esLOVSB2rpeBvtG+hh9NUNjZNNl03syBT+GgTe1uSNQ=;
 b=EgB3G4nbHFobHsRBKeBRb9R8+kUdA0PwTv3EiANAGD+wX4HQUtgZ1Bf5
 UDk+McV3oSMJ2ccZyg76mf9rUu24hr75VsBck5r3vc2KOjPm0dDdYnGNy
 3cXf8DpmC8dcyY1y6isTUGb070LXwdZgOqMdIpsmoDcegphF3rasG84uY
 RA8Ijdw2zbilg4gZC1AyBolbKzHEMPMutfBXF2GXGR1JFVf4X1UfKWqJJ
 e5liepSsMXsCKUqAlSbW0sBdjE2bVMe/2vJWS2ztvi9QaLGkeWYovRo4a
 CWoYdvexcDMdS9CPkZQkHcyXRoS+qUc4+SiZ1gIVThm7dMI1kAPat8Wuf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="338637081"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="338637081"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:05:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="745289439"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="745289439"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 20 Mar 2023 02:05:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 11:05:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 11:05:19 +0200
Message-Id: <20230320090522.9909-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
References: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/dpt: Introduce HAS_DPT()
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

Replace the hand rolled DISPLAY_VER check for a more descriptive
HAS_DPT() macro. Will be used on more than one place later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h         | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 26ad5fc0c2c1..9609c5de3f91 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -718,7 +718,7 @@ static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
 
 static bool intel_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
 {
-	return DISPLAY_VER(i915) >= 13 && modifier != DRM_FORMAT_MOD_LINEAR;
+	return HAS_DPT(i915) && modifier != DRM_FORMAT_MOD_LINEAR;
 }
 
 bool intel_fb_uses_dpt(const struct drm_framebuffer *fb)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6254aa977398..de6a3cd3f46e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -813,6 +813,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_FBC(dev_priv)	(RUNTIME_INFO(dev_priv)->fbc_mask != 0)
 #define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) >= 7)
 
+#define HAS_DPT(dev_priv)	(DISPLAY_VER(dev_priv) >= 13)
+
 #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
 
 #define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
-- 
2.39.2

