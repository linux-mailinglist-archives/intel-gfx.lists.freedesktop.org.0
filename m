Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FC159AA4F
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Aug 2022 02:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F5A410E21D;
	Sat, 20 Aug 2022 00:59:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F36A10E1B4
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Aug 2022 00:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660957132; x=1692493132;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UOl+49n5Qmi8ob24TZ7/DgtBDbGCrStlTFZ7GXWyWZw=;
 b=QZqOriESy4RujoTmOvFIEHOWJgmxF6wvA6rqbXX3YnqJewB+fdDYIFSQ
 XSNDXgwU20zUvrekaEZdcj+9V9imnKaXPPo2s7LhThVsX6HKJTFjqJk+M
 yXa6IORj2BjAkTySpFxRcQld+vVUI5gjPaeWHLhjkgs8tUvTwtVdztSSM
 YWyRHZ4JcKy0l3IeRj9GQG8c44c+eIyq6n9RcSFosZdy5H6bkKczK0NvK
 dEns1mt+OKIGIHqcj1CW2Lw3s0V7ddxPzTkZmMaawbyIRCWJ3CT8K8UPO
 fsUyga4iNaX0tgXhfW5UOY+05UzAJOwZSrDndBaWyRLGcS3+W2mWe7lfu g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10444"; a="294411877"
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="294411877"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 17:58:51 -0700
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="676626670"
Received: from cdhirema-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.212.188.51])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 17:58:50 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 17:58:19 -0700
Message-Id: <20220820005822.102716-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220820005822.102716-1-anusha.srivatsa@intel.com>
References: <20220820005822.102716-1-anusha.srivatsa@intel.com>
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
index b535cf6a7d9e..43835688ee02 100644
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
@@ -51,6 +59,11 @@ struct intel_cdclk_state {
 
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

