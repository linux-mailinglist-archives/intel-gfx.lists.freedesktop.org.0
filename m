Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FB395BB4D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 18:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C11210EB48;
	Thu, 22 Aug 2024 16:05:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OCvCiBOK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1C1210EB4D;
 Thu, 22 Aug 2024 16:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724342706; x=1755878706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pG9darsyxdhqu9yq0Y+NAcWY4WI++MmNh1aNv3xUc8Y=;
 b=OCvCiBOKUV35nR6WMNzsORv5f6l0dVzK61LtmujnfSGjMgLBm0+sGdvk
 k18efH5Ub4o/vxvDuzmkkaWboQsv1biFx6cD4nOXXVmWGFdiHSyOocL0O
 8x3qlTR7Q0zn2CT2WUVxPNaKqemnThccpZLO9qDSi2kzXFE8PPT3aviet
 Q3jQMFZ0j52ccIPxmpWJclG/whDcxgfa/VacDtF0W5EdrvkrBafvrtrFG
 Vb0cL9ytQOyAEo33ow82tKjdSYslV03JGNnqHOa129hGaECS+X/FN+IRu
 vGZXNPiIeIynTmL6c14dTLH4hWJRT0k4BilQwnLc0aqguVuNUg4meI0mq A==;
X-CSE-ConnectionGUID: cRMbEv/hQD+rbGkh0kR6Aw==
X-CSE-MsgGUID: Pzp0C812RFu36nYQS1EaBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22953028"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22953028"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:05:06 -0700
X-CSE-ConnectionGUID: yX6oSAwSRiyLZH7huIVNIg==
X-CSE-MsgGUID: RU63Zc8SQEGo3L88Cb3/Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="61169313"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:05:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/7] drm/i915/vblank: use drm_crtc_vblank_crtc() instead of
 open-coding
Date: Thu, 22 Aug 2024 19:04:49 +0300
Message-Id: <78198ade92da1d978f2032c50b3b50e3f8f01701.1724342644.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724342644.git.jani.nikula@intel.com>
References: <cover.1724342644.git.jani.nikula@intel.com>
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

There's a helper for drm->vblank[drm_crtc_index(crtc)], use it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index f183e0d4b2ba..551e9ca9bb99 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -68,7 +68,7 @@
 u32 i915_get_vblank_counter(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	struct drm_vblank_crtc *vblank = &dev_priv->drm.vblank[drm_crtc_index(crtc)];
+	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
 	const struct drm_display_mode *mode = &vblank->hwmode;
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	u32 pixel, vbl_start, hsync_start, htotal;
@@ -120,7 +120,7 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
 u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	struct drm_vblank_crtc *vblank = &dev_priv->drm.vblank[drm_crtc_index(crtc)];
+	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 
 	if (!vblank->max_vblank_count)
-- 
2.39.2

