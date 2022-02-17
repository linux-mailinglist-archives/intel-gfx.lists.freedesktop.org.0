Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E844BACC8
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 23:40:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F66410E8B5;
	Thu, 17 Feb 2022 22:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0B8910E8B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 22:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645137635; x=1676673635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5DcJnH0ayvxjIBB0HLrZETfeXAfT63mjmw1UvUZVKyI=;
 b=Z5r6CIG5f5oCyBFNVIx07KH9/L1rjyBJ/46Iak4wnsiLBsV3WQgYhSUw
 itTt+eWY/wOxEExaJDL6IrDGxGLpNuqS5oUBMWNdv/XXuJkak/wuJAZja
 Pjrrjurt5LRTa9dKoEUH6MXxmtF0GPeEJXS5tWEP33b9l/pS1oIwmFqIX
 yVcZSKs5aerS5WO6Vv9rvmLqmVAMsjcxYIocCpzc7lqVg/gqNU3sh3rlD
 KHcDJi/C3DKU39tT5ttzkwVNRQOvDD/Wx8aUFyo0A7tx0bw8AvPvU5MAL
 03wc9BhabCpzO8WjHKkTIPUZq0/qfQNYihroboTepCh3f2FYzR2hqjr+t A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="231627252"
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="231627252"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 14:40:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="488805386"
Received: from acushion-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.45])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 14:40:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Feb 2022 00:40:21 +0200
Message-Id: <20220217224023.3994777-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220217224023.3994777-1-jani.nikula@intel.com>
References: <20220217224023.3994777-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/4] drm/i915/dsi: add separate init timer mask
 definition for ICL DSI
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

Having a separate definition will be useful for splitting VLV and ICL
register files.

Cc: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h        | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 479d5e1165d9..3c01565e62b2 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -570,7 +570,7 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 	/* Program T-INIT master registers */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		tmp = intel_de_read(dev_priv, ICL_DSI_T_INIT_MASTER(port));
-		tmp &= ~MASTER_INIT_TIMER_MASK;
+		tmp &= ~DSI_T_INIT_MASTER_MASK;
 		tmp |= intel_dsi->init_count;
 		intel_de_write(dev_priv, ICL_DSI_T_INIT_MASTER(port), tmp);
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2243d9d1d941..1fe4be8d475c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9001,6 +9001,7 @@ enum skl_power_gate {
 #define ICL_DSI_T_INIT_MASTER(port)	_MMIO_PORT(port,	\
 						   _ICL_DSI_T_INIT_MASTER_0,\
 						   _ICL_DSI_T_INIT_MASTER_1)
+#define   DSI_T_INIT_MASTER_MASK	REG_GENMASK(15, 0)
 
 #define _DPHY_CLK_TIMING_PARAM_0	0x162180
 #define _DPHY_CLK_TIMING_PARAM_1	0x6c180
-- 
2.30.2

