Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 461E56F61C5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 01:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F7810E19A;
	Wed,  3 May 2023 23:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF37B10E102
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 23:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683155414; x=1714691414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xxsDuwuipdv9P7pyw468irejiSZUnP2VVOJ/ozS5RSk=;
 b=QTKwhKrYruxu0y6KMGtQuFyhH9zvEyFWR7fDauPmWINIOH/spTLOBEDB
 yi2G2DM3gGsTmDH5jGcsVV42VhUBMqAM0vmJtIzdGCl1k47/0y8LLwLG1
 zHShJMNIBFtSXX2IoyAl7C6VLDidCNg+FPwqvf54H8s0dqAoH0mdD/qZh
 fpygWjZwx7aYLdPRb1aC4XiJ3lP3cbBmmMqlbk3LmyBaBqpJw+tX/7KJM
 6GR7rupqv/eHppTJJhfNbmAcLltg4O4yuBv2hWfEjuuGZRofGKbyg1iT+
 gXFetF7swrMqlmL/nMe3Fs0rsPAp7IquioKYn9D8HQlA4HM2Jhrgeo0DO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347607560"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="347607560"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="690872086"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="690872086"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:13 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 02:10:37 +0300
Message-Id: <20230503231048.432368-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-1-imre.deak@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/12] drm/i915: Fix PIPEDMC disabling for a
 bigjoiner configuration
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For a bigjoiner configuration display->crtc_disable() will be called
first for the slave CRTCs and then for the master CRTC. However slave
CRTCs will be actually disabled only after the master CRTC is disabled
(from the encoder disable hooks called with the master CRTC state).
Hence the slave PIPEDMCs can be disabled only after the master CRTC is
disabled, make this so.

intel_encoders_post_pll_disable() must be called only for the master
CRTC, as for the other two encoder disable hooks. While at it fix this
up as well. This didn't cause a problem, since
intel_encoders_post_pll_disable() will call the corresponding hook only
for an encoder/connector connected to the given CRTC, however slave
CRTCs will have no associated encoder/connector.

Fixes: 3af2ff0840be ("drm/i915: Enable a PIPEDMC whenever its corresponding pipe is enabled")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3d3483e6f8363..ca95cf6764c04 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1700,9 +1700,17 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 
 	intel_disable_shared_dpll(old_crtc_state);
 
-	intel_encoders_post_pll_disable(state, crtc);
+	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
+		struct intel_crtc *slave_crtc;
+
+		intel_encoders_post_pll_disable(state, crtc);
 
-	intel_dmc_disable_pipe(i915, crtc->pipe);
+		intel_dmc_disable_pipe(i915, crtc->pipe);
+
+		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
+						 intel_crtc_bigjoiner_slave_pipes(old_crtc_state))
+			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
+	}
 }
 
 static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
-- 
2.37.2

