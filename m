Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8724DA378
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 20:50:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C08E10E34F;
	Tue, 15 Mar 2022 19:50:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ECEB8954A
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 19:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647373811; x=1678909811;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BdDfn6wYsl+jOZ0VJGgk9d2W9pCkfKbINuB8lPwOQOQ=;
 b=htLIfHh38qu3p2YtfN4e9CkODRr5Vlv+1gqVtXDr1WJsAbY8gEo2yDKm
 u3KwW99sSfnXEu0B2WNP5EjV1O6VWcx3coWGjb3nIgz4/AW6b9ssudvYy
 dB7t9tZBxpDLjzeBpQGjHqoy+8J/EWTOw5kULQaMdfIlB/DI8vjX7Yrms
 Hr4TUMeh7Qp/4kMKOa0tagOSr5WUFVMN934tRfpdRyptvRkO88LjnrVEl
 VmVHHm+u9vam606aDX6xzpnR4Ia+ArhTFXDQIH4IaCJ7GYtQs1nhS9um0
 2gYnLx64WQWLKMEU0vjOalJPZDpWaJ+ZtsdZg7U6/CJ0VwuMMvE51Y1uR A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="319629253"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="319629253"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 12:50:11 -0700
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="714312393"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 12:50:11 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 12:47:09 -0700
Message-Id: <20220315194712.2113450-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220315194712.2113450-1-anusha.srivatsa@intel.com>
References: <20220315194712.2113450-1-anusha.srivatsa@intel.com>
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

