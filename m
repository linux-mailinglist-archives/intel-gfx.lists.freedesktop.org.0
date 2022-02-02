Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5260E4A6D2F
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 09:46:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4056E10FAD0;
	Wed,  2 Feb 2022 08:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2CF110FACA;
 Wed,  2 Feb 2022 08:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643791586; x=1675327586;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=iyg0QEJJWiTrsMY8my7AWxHGjokGJHa8MvIuMNnt/AI=;
 b=NzuaBCj2m7gDlM0/LSr/hKiBRj8622/AF5RqOZ/6Dafd8ysRtwVeB6+P
 qko0DdxBwM/7iJaoQPjOrKcIadKyBXomEQTH7WjMlaIv31rIzKPC7rCM9
 oKNYV5E9aPegIa3+DkpH2IVH9YoGimDxVrD6hYT1QfCmbcrFR0XvNqGaK
 ezCjJs2rwMu8MRPH1jp1WsuTl5gdC1WkQfROy9RWR0kXrcMNmzSEE5vez
 FQJMMlBwosANBLIvkg16vQO79KMreg0FH60bTB1h21SoVwlYHSRzyTgtn
 zBKGUkGt+QOBBoLqm3cqcW7SkNX/6TshdhNhUTS93c5aiEIVoVay4eywq g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="245469289"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="245469289"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 00:46:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="497675041"
Received: from srr4-3-linux-116-skandpal.iind.intel.com ([10.190.238.57])
 by orsmga002.jf.intel.com with ESMTP; 02 Feb 2022 00:46:23 -0800
From: Kandpal Suraj <suraj.kandpal@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  2 Feb 2022 14:24:27 +0530
Message-Id: <20220202085429.22261-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220202085429.22261-1-suraj.kandpal@intel.com>
References: <20220202085429.22261-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] [PATCH 4/6] drm/vc4: vc4 driver changes to accommodate
 changes done in drm_writeback_connector structure
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
Cc: carsten.haitzler@arm.com, jani.nikula@intel.com, quic_abhinavk@quicinc.com,
 laurent.pinchart@ideasonboard.com, dmitry.baryshkov@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Changing vc4 driver to accomadate the change of
drm_writeback_connector.base and drm_writeback_connector.encoder
to a pointer the reason for which is explained in the
Patch(drm: add writeback pointers to drm_connector).

Signed-off-by: Kandpal Suraj <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/vc4/vc4_txp.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index 9809ca3e2945..9882569d147c 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -151,6 +151,10 @@ struct vc4_txp {
 
 	struct platform_device *pdev;
 
+	struct drm_connector drm_conn;
+
+	struct drm_encoder drm_enc;
+
 	struct drm_writeback_connector connector;
 
 	void __iomem *regs;
@@ -159,12 +163,12 @@ struct vc4_txp {
 
 static inline struct vc4_txp *encoder_to_vc4_txp(struct drm_encoder *encoder)
 {
-	return container_of(encoder, struct vc4_txp, connector.encoder);
+	return container_of(encoder, struct vc4_txp, drm_enc);
 }
 
 static inline struct vc4_txp *connector_to_vc4_txp(struct drm_connector *conn)
 {
-	return container_of(conn, struct vc4_txp, connector.base);
+	return container_of(conn, struct vc4_txp, drm_conn);
 }
 
 static const struct debugfs_reg32 txp_regs[] = {
@@ -467,6 +471,7 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 	struct vc4_txp *txp;
 	struct drm_crtc *crtc;
 	struct drm_encoder *encoder;
+	struct drm_writeback_connector *wb_conn;
 	int ret, irq;
 
 	irq = platform_get_irq(pdev, 0);
@@ -491,10 +496,13 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 	txp->regset.base = txp->regs;
 	txp->regset.regs = txp_regs;
 	txp->regset.nregs = ARRAY_SIZE(txp_regs);
+	wb_conn = &txp->connector;
+	wb_conn->base = &txp->drm_conn;
+	wb_conn->encoder = &txp->drm_enc;
 
-	drm_connector_helper_add(&txp->connector.base,
+	drm_connector_helper_add(wb_conn->base,
 				 &vc4_txp_connector_helper_funcs);
-	ret = drm_writeback_connector_init(drm, &txp->connector,
+	ret = drm_writeback_connector_init(drm, wb_conn,
 					   &vc4_txp_connector_funcs,
 					   &vc4_txp_encoder_helper_funcs,
 					   drm_fmts, ARRAY_SIZE(drm_fmts));
@@ -506,7 +514,7 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	encoder = &txp->connector.encoder;
+	encoder = txp->connector.encoder;
 	encoder->possible_crtcs = drm_crtc_mask(crtc);
 
 	ret = devm_request_irq(dev, irq, vc4_txp_interrupt, 0,
@@ -529,7 +537,7 @@ static void vc4_txp_unbind(struct device *dev, struct device *master,
 	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	struct vc4_txp *txp = dev_get_drvdata(dev);
 
-	vc4_txp_connector_destroy(&txp->connector.base);
+	vc4_txp_connector_destroy(txp->connector.base);
 
 	vc4->txp = NULL;
 }
-- 
2.17.1

