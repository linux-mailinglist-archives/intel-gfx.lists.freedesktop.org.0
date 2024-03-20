Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCF988151A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 17:01:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7523F10FDBE;
	Wed, 20 Mar 2024 16:01:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GkiZGwEc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57C7910FDC7
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 16:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710950495; x=1742486495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OgVaj+zzvk/Ehi+mGv2/8oB05s6yBhhKDA9irT4bgOw=;
 b=GkiZGwEcDC9Ywwyym74/xOTUFH18i8JhG0clHkWdFG2dzJjDXMP8Fpvf
 +EJr6cxPELUP643wCYMckiin7qMlZQA+4dELRWRY7DNvOfvdJKjueTly/
 4F8TP7QPJ1NTaQ7pkx6TgADD6iWH7+bGLudc4hFRDCwAdh2pM0VCAnMLa
 cC3KfRHCyhciiGFScsfzLJJh3Eh1UZDz9jxxuzxUfZUmAQi7XD2anMTMO
 Sxbb/QBWWqrm+yFUim5huZqHaQxrwGnrgK9F9PU3Y6TwysyAODkeMxNup
 QcQgw48/eZpqmWKWySEonnnSMJXCL84lpqSO9mgza084QzH5QVeTBhTpj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="5757618"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="5757618"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 09:01:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="14209853"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.133])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 09:01:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915/display: prefer intel_de_wait*() functions over
 uncore ones
Date: Wed, 20 Mar 2024 18:01:23 +0200
Message-Id: <20240320160123.2904609-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240320160123.2904609-1-jani.nikula@intel.com>
References: <20240320160123.2904609-1-jani.nikula@intel.com>
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

Prefer the intel_de_wait*() functions over the uncore interface.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 7 ++-----
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 6 +++---
 2 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 4ca910874a4f..2d7a71c8c69c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -399,11 +399,8 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 	 * The flag should get set in 100us according to the HW team, but
 	 * use 1ms due to occasional timeouts observed with that.
 	 */
-	if (intel_wait_for_register_fw(&dev_priv->uncore,
-				       BXT_PORT_CL1CM_DW0(phy),
-				       PHY_RESERVED | PHY_POWER_GOOD,
-				       PHY_POWER_GOOD,
-				       1))
+	if (intel_de_wait_fw(dev_priv, BXT_PORT_CL1CM_DW0(phy),
+			     PHY_RESERVED | PHY_POWER_GOOD, PHY_POWER_GOOD, 1))
 		drm_err(&dev_priv->drm, "timeout during PHY%d power on\n",
 			phy);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 9edac27bab26..d5ed4c7dfbc0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -369,9 +369,9 @@ static int intel_hdcp_load_keys(struct drm_i915_private *i915)
 	}
 
 	/* Wait for the keys to load (500us) */
-	ret = __intel_wait_for_register(&i915->uncore, HDCP_KEY_STATUS,
-					HDCP_KEY_LOAD_DONE, HDCP_KEY_LOAD_DONE,
-					10, 1, &val);
+	ret = intel_de_wait_custom(i915, HDCP_KEY_STATUS,
+				   HDCP_KEY_LOAD_DONE, HDCP_KEY_LOAD_DONE,
+				   10, 1, &val);
 	if (ret)
 		return ret;
 	else if (!(val & HDCP_KEY_LOAD_STATUS))
-- 
2.39.2

