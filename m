Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E92A284B2EF
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 11:58:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8DF10EB7D;
	Tue,  6 Feb 2024 10:58:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ghm9BR+3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CD7810EB7D
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 10:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707217106; x=1738753106;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ldOMe8fJGeZfEl9BAbKKWSUbBq/HWKbBaQF5bfbtbao=;
 b=Ghm9BR+30+KskzWaS3HPRpMb0j/QLXeJjsHeJSNJh0fys6QwDIXe/HeY
 EQ0Jny4zIhRwFa2O5Qm4GNwPTkQN1Wm+AXAYxUTrLqdzXyZMQFoztrwou
 KsNy3pvHt+c5eOGTtiYoMsRRJAOWM4TV3EST1ZlJ+sYSkZlwaPIJLDhE0
 Ii7K8V7Y4LDokROeDIYoqxxWrRNFcPErKXDRJPkdrif4NJbjwfqQusNdO
 8iknz8ivmE07ca3AW9Bcqk+/9Tj8JFvCeSJ7oNyApzg2zM8AOFCBqThO/
 RN34+okhTtB2IM7v9qLhywADlAjBo/iuBZzD2/11O+R4YjkJZ1Z9ICptl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="26164536"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="26164536"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 02:58:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="1019189"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa010.jf.intel.com with ESMTP; 06 Feb 2024 02:58:25 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
Subject: [RFC 4/4] drm/i915/display/dp: On LT failure retry LT
Date: Tue,  6 Feb 2024 16:17:59 +0530
Message-Id: <20240206104759.2079133-5-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240206104759.2079133-1-arun.r.murthy@intel.com>
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
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

On link training failure retry link training with a lesser link
rate/lane count as specified in the DP spec.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ed7620e7f763..29d785a4b904 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2502,6 +2502,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				 crtc_state->port_clock,
 				 crtc_state->lane_count);
 
+retry:
 	/*
 	 * We only configure what the register value will be here.  Actual
 	 * enabling happens during link training farther down.
@@ -2586,7 +2587,14 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
 	 *     (timeout after 800 us)
 	 */
-	intel_dp_start_link_train(intel_dp, crtc_state);
+	if (!intel_dp_start_link_train(intel_dp, crtc_state)) {
+		/* Link Training failed, retain */
+		intel_dp->link_trained = false;
+		intel_dp_stop_link_train(intel_dp, crtc_state);
+		encoder->post_disable(state, encoder,
+				   crtc_state, conn_state);
+		goto retry;
+	}
 
 	/* 6.n Set DP_TP_CTL link training to Normal */
 	if (!is_trans_port_sync_mode(crtc_state))
-- 
2.25.1

