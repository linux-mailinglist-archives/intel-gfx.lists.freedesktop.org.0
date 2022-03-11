Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1E64D5C00
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 08:07:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE1610E17E;
	Fri, 11 Mar 2022 07:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A05210E17E
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 07:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646982443; x=1678518443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BdDfn6wYsl+jOZ0VJGgk9d2W9pCkfKbINuB8lPwOQOQ=;
 b=duhAbW6adZjxgjfkFUjWxj+EHAuclJp/TEp59nQSyt1lNlpSSo3DKbpW
 taHHR45ggtiAu6j+r7kmY+zjXNUiejygv5vlM2wcw7KI2y9zbo1TY/zSs
 lAPvFOwp+T3g2BoYWh4xVSZ4oVwnAXbaIzrfusCpP4OvZOqiIBSZpGwXh
 pYwBPhR3T23l4YRSWrDGbr1QcoZumP0+kX2oYz6hpCY92CFyqXZjv1Hoa
 Xi9uVcEKoWn5yV/jTcdsQtROjBPdYMdMwqLqtlunqKt8zDxPfUJyRSLQh
 UKaRYp6DVxexEktcEYmYgO5umsM94kzuy8HSntdHsuvOJ/VwhJ2qKR5NH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="341944525"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="341944525"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 23:07:23 -0800
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="555186343"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 23:07:22 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 23:04:26 -0800
Message-Id: <20220311070429.1993708-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220311070429.1993708-1-anusha.srivatsa@intel.com>
References: <20220311070429.1993708-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/display: Add CDCLK actions to
 intel_cdclk_state
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a prep patch for what the rest of the series does.

Add existing actions that change cdclk - squash, crawl, modeset to
intel_cdclk_state so we have access to the cdclk values
that are in transition.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index df66f66fbad0..06d7f9f0b253 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -15,6 +15,14 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc_state;
 
+enum cdclk_actions {
+	INTEL_CDCLK_MODESET = 0,
+	INTEL_CDCLK_SQUASH,
+	INTEL_CDCLK_CRAWL,
+	INTEL_CDCLK_NOOP,
+	MAX_CDCLK_ACTIONS
+};
+
 struct intel_cdclk_config {
 	unsigned int cdclk, vco, ref, bypass;
 	u8 voltage_level;
@@ -49,6 +57,11 @@ struct intel_cdclk_state {
 
 	/* bitmask of active pipes */
 	u8 active_pipes;
+
+	struct cdclk_step {
+		enum cdclk_actions action;
+		u32 cdclk;
+	} steps[MAX_CDCLK_ACTIONS];
 };
 
 int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state);
-- 
2.25.1

