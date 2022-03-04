Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC224CE08B
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Mar 2022 00:07:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A2D10F31B;
	Fri,  4 Mar 2022 23:06:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B0810F31B
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 23:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646435215; x=1677971215;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BdDfn6wYsl+jOZ0VJGgk9d2W9pCkfKbINuB8lPwOQOQ=;
 b=U+sstbElXhmT3xyuksUgHOx53vmqgw9LUCQ23FiAJlVFEoZeyuqJFbyr
 OfTT4bcMJ/zusQuZ85z5LeUVRd8Nn/BrbFOMGRnFD2egWP/kUWQ2XSU9x
 BmmRLDJe+o5elSGnp9ycD8RC0x7zk7cpDk6LEYo+L805eoaS28gobTA2c
 JZUzu7EEh6MFtnA+iOmvVvHwdlaFY/0mqvEKAts+N/PEiPsADEs9cQeUc
 zaGA/L/O5RGv2bc+RxOh9K6GFVcmFQ0RQA+uZdbidghOxezs91WkaMXxU
 0irGa30j2BoRWjh4xUCSxsFi1oduOdyWzwDjlJC7m+/9eJRTpKdxwpGDv Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="234688968"
X-IronPort-AV: E=Sophos;i="5.90,156,1643702400"; d="scan'208";a="234688968"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 15:06:54 -0800
X-IronPort-AV: E=Sophos;i="5.90,156,1643702400"; d="scan'208";a="577022886"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 15:06:54 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Mar 2022 15:03:50 -0800
Message-Id: <20220304230354.1453629-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220304230354.1453629-1-anusha.srivatsa@intel.com>
References: <20220304230354.1453629-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/display: Add CDCLK actions to
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

