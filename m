Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C055BB50E
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Sep 2022 02:44:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BECAD10E0AE;
	Sat, 17 Sep 2022 00:44:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EB4410E028
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Sep 2022 00:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663375466; x=1694911466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3/XcM5ZPzK8UzDJrrWkrtUT2m1oHIHs9ewcNcUKuLV8=;
 b=My8/I8ZSbgMcA/+Gg1+Onpr+x83/vnpeYJm2cX0xVeYFVw+XsNISDYqr
 431RznM8Z84Kq8yl46OqqXyumO6dvtgrOH1z8mqsLftRTINvu+3cKHuuh
 80mP5hEDSozv3GjKwrRdS2eAojYNVPVpDqM7ChUHYaQ1BcypYlOj6clIA
 CCj9f2pvKPPPy4oq+9lFHr1935QNFgvGAmttX5B3krgTl0xaQwy8hhu5F
 MlArOgZ7ZsSztnczjP9emjp7o6VUYmnYtjPJe/diSzRo2L1b/ELTLCzIe
 pHG/cF29oX6RA5HSE7IFyoFnSC8bhz7nFgzzEVfHGH6tJc3h8aYDHe4VZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="278835741"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="278835741"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="743519286"
Received: from cgros-mobl.amr.corp.intel.com (HELO anushasr-mobl7.intel.com)
 ([10.209.28.3])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:26 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 17:44:00 -0700
Message-Id: <20220917004404.414981-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220917004404.414981-1-anusha.srivatsa@intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/display: add cdclk action struct
 to cdclk_config
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

The struct has the action to be performed - squash, crawl
or modeset and the corresponding cdclk which is the desired
cdclk. This is the structure that gets populated during
atomic check once it is determined what the cdclk change looks
like

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index c674879a84a5..3869f93e8ad2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -11,13 +11,27 @@
 #include "intel_display.h"
 #include "intel_global_state.h"
 
+#define	MAX_CDCLK_ACTIONS	1
+
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc_state;
 
+enum cdclk_sequence {
+	CDCLK_INVALID_ACTION = -1,
+
+	CDCLK_SQUASH_ONLY = 0,
+	CDCLK_CRAWL_ONLY,
+	CDCLK_LEGACY,
+};
+
 struct intel_cdclk_config {
 	unsigned int cdclk, vco, ref, bypass;
 	u8 voltage_level;
+	struct cdclk_step {
+		enum cdclk_sequence action;
+		u32 cdclk;
+	} steps[MAX_CDCLK_ACTIONS];
 };
 
 struct intel_cdclk_state {
-- 
2.25.1

