Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE215A2329
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 10:38:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E41AB10E752;
	Fri, 26 Aug 2022 08:38:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5F8610E752
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 08:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661503112; x=1693039112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Lg80O0s+vUK/y00h8Gi6ftXFSYBDmDZT0xKg5UubnB8=;
 b=EIZv+XboADH1CJcYCU5vEoKbKag3tD005u5K2sxm0JBwdx3W30tqZUJ+
 awo07oifoVlVuziUYZbG4SA29EhGy68cnUO9TY3ePBQqxjpyaoDFXSNa7
 1PDEQeeZGGNrhIyfAwYIHAAs22wkKAyasJlRUW/lQa4s/3zNuc0UdSvzC
 FenSzx1LLoSAh8uVZ08fHHdOCqQoG0tHafquzhbJqxnWzzWs+mmlJEOsp
 OuaI+rrI3gK3L4oh8TA+Je6ByGDiv57/uHxcQQQm1NAoZVjXHHh8PCpfy
 oZK1W7aGl/zCHzRR1AzuKik2VqsXB4ttV1dN/NuNQO2xk3q63z3u2ikR4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="292038722"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="292038722"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 01:38:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="639978744"
Received: from plomuzio-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.203])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 01:38:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Aug 2022 11:38:14 +0300
Message-Id: <e2e92085888815e4f47ea117cc43499e595f3161.1661503049.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661503049.git.jani.nikula@intel.com>
References: <cover.1661503049.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/dpll: replace BUG_ON() with
 drm_WARN_ON()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid BUG_ON(). Actually check the dpll count and bail out loudly with
drm_WARN_ON() from the loop before overflowing
i915->dpll.shared_dplls[].

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 118598c9a809..8dd405553cfa 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4199,6 +4199,10 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 	dpll_info = dpll_mgr->dpll_info;
 
 	for (i = 0; dpll_info[i].name; i++) {
+		if (drm_WARN_ON(&dev_priv->drm,
+				i >= ARRAY_SIZE(dev_priv->dpll.shared_dplls)))
+			break;
+
 		drm_WARN_ON(&dev_priv->drm, i != dpll_info[i].id);
 		dev_priv->dpll.shared_dplls[i].info = &dpll_info[i];
 	}
@@ -4206,8 +4210,6 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 	dev_priv->dpll.mgr = dpll_mgr;
 	dev_priv->dpll.num_shared_dpll = i;
 	mutex_init(&dev_priv->dpll.lock);
-
-	BUG_ON(dev_priv->dpll.num_shared_dpll > I915_NUM_PLLS);
 }
 
 /**
-- 
2.34.1

