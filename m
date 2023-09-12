Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A1D79CF70
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 13:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6587F10E409;
	Tue, 12 Sep 2023 11:08:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A237210E409;
 Tue, 12 Sep 2023 11:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694516930; x=1726052930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=31YuayO0udZbfm7TvYijyOBXln2xcnMMA57BdAaMI1E=;
 b=HBcFYKELAlCQvnIIDTLhW9f1F7/Bo5otmCyv9A0YPgF7VMe8CIe/Xtdg
 vpns1nR3WyktTn0fHlULtKNpdzKfonE0yPYehEPmQkAcD/NjVIudDjVBk
 N3bJgF2M2ND0gXEfK57OpNC6+TcbO1rPJO5fxqfj0mw7g5dYooZINYItC
 xuGMfOhLb8Y1Xu8ZvIUFP5xPOSUmrbXIqngL8gXUw7I8aTYv1guLYpSoE
 it5bPtY8u2bkiO0DPGChf4IO3ZqAa9mQj343lzk6uRMJ8qhdbs7DuhcD6
 rmaC6BajrnFbVwBNxCqvz97qSozuQTDdm0dYDq9Vd9Zcnu+n2n2M3kaOt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378253149"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="378253149"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 04:08:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074512729"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="1074512729"
Received: from kscholl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.206])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 04:08:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Sep 2023 14:06:44 +0300
Message-Id: <c34ea1f470590488acf40512da3892ca153f482a.1694514689.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1694514689.git.jani.nikula@intel.com>
References: <cover.1694514689.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/19] drm/i915/display: add I915 conditional
 build to intel_sdvo.h
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
Cc: jani.nikula@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add stubs for !I915.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.h b/drivers/gpu/drm/i915/display/intel_sdvo.h
index 2868852c85f2..d1815b4103d4 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.h
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.h
@@ -14,9 +14,22 @@ struct drm_i915_private;
 enum pipe;
 enum port;
 
+#ifdef I915
 bool intel_sdvo_port_enabled(struct drm_i915_private *dev_priv,
 			     i915_reg_t sdvo_reg, enum pipe *pipe);
 bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 		     i915_reg_t reg, enum port port);
+#else
+static inline bool intel_sdvo_port_enabled(struct drm_i915_private *dev_priv,
+					   i915_reg_t sdvo_reg, enum pipe *pipe)
+{
+	return false;
+}
+static inline bool intel_sdvo_init(struct drm_i915_private *dev_priv,
+				   i915_reg_t reg, enum port port)
+{
+	return false;
+}
+#endif
 
 #endif /* __INTEL_SDVO_H__ */
-- 
2.39.2

