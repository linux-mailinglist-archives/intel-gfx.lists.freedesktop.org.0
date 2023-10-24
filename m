Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1227D44A4
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E83810E2CC;
	Tue, 24 Oct 2023 01:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C48410E2BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109762; x=1729645762;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WDr5m+wM9j96BtF/GfVrmUeEo3KMtwiu4PHjuWaKU8w=;
 b=EItbfZ6VG54RTPVWuQMvVJ/Gw8KrelkNkPDlb4U21IG3Lb9GSJJn/sT/
 bC1U0p1GQVaJCPTSeP+41NnHR9MuNyZRLJfgnTQkMpw6fE+E20rGHHksi
 yOmJ52YfuhLUWW6zT6aPjxAlu7ByKI77WXoEObIrdrLf0x3LoCO4Sgcwl
 9H4ewq3HWjRCNvT5VfeJsNuUo9WianaoNhcUEWMt4tbchWJHFIzDwg0vJ
 ug9x3ypI/Tr1rYL3yMw0Eh+GhfipIwewgTaNvKR2sowPv4ZMWIknxKzM0
 /L5R8JSeJtluKPL2Q++RRhLpccAoervMp8tmd7ugNb2HQLFNXqbmEN3Lo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304376"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304376"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870080"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870080"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:21 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:13 +0300
Message-Id: <20231024010925.3949910-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/29] drm/i915/dp: Rename
 intel_ddi_disable_fec_state() to intel_ddi_disable_fec()
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

Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec(), for
symmetry with intel_ddi_enable_fec().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 721a5f28be808..dac3b59758af7 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2234,8 +2234,8 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
 		     0, DP_TP_CTL_FEC_ENABLE);
 }
 
-static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,
-					const struct intel_crtc_state *crtc_state)
+static void intel_ddi_disable_fec(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
@@ -2868,8 +2868,7 @@ static void disable_ddi_buf(struct intel_encoder *encoder,
 		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
 			     DP_TP_CTL_ENABLE, 0);
 
-	/* Disable FEC in DP Sink */
-	intel_ddi_disable_fec_state(encoder, crtc_state);
+	intel_ddi_disable_fec(encoder, crtc_state);
 
 	if (wait)
 		intel_wait_ddi_buf_idle(dev_priv, port);
@@ -2884,7 +2883,7 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
 		mtl_disable_ddi_buf(encoder, crtc_state);
 
 		/* 3.f Disable DP_TP_CTL FEC Enable if it is needed */
-		intel_ddi_disable_fec_state(encoder, crtc_state);
+		intel_ddi_disable_fec(encoder, crtc_state);
 	} else {
 		disable_ddi_buf(encoder, crtc_state);
 	}
-- 
2.39.2

