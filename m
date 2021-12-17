Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A715947855E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 08:05:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 912C210EB8F;
	Fri, 17 Dec 2021 07:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0C6810EB8F
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 07:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639724729; x=1671260729;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=BqeqnKilNAZADHHaez2kqWdxXhMWYEUqjEHrJFG/gJg=;
 b=gpLoT7YO98Zm+t2dr+hiiI05B62PL9wF7GAqOzIUB3VFDSM78rCzlgkj
 30vxOUePBFdiuPRPbE7AXNZ0/eNgqEk066itpv/VFcXEFK3aMEryT55pe
 L8ujUS3mZjbP0d9Jw8QRZbvENoulYaK9j+0M5diSMMyPI27K3iyHzawRH
 PWhIvkJoDHv/eOiXyiSnK2AL2kCXQ32CG+88PkDGQycX6t9gJVLoifqQN
 4oe4L5h2nVa7kN+qS3x83tt/h1zZFn3V+Co1LEHO1NZfEQLjGzkFisX6o
 6rsjrKdmAh52AeCkBxaB3zdeMr3X4Be0Z2lxWkcrZW1LNcWfW/ruAUmsl g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="237236752"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="237236752"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 23:05:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="466405030"
Received: from kandpal.iind.intel.com ([10.190.238.57])
 by orsmga006.jf.intel.com with ESMTP; 16 Dec 2021 23:05:27 -0800
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Dec 2021 12:43:54 +0530
Message-Id: <20211217071356.12517-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211217071356.12517-1-suraj.kandpal@intel.com>
References: <20211217071356.12517-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] [PATCH 2/4] drm/komeda: change driver to use
 drm_writeback_connector.base pointer
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
Cc: arun.r.murthy@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: suraj kandpal <suraj.kandpal@intel.com>

Changing driver to use drm_writeback_connector.base pointer

Signed-off-by: suraj kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/arm/display/komeda/komeda_crtc.c         | 2 +-
 drivers/gpu/drm/arm/display/komeda/komeda_kms.h          | 3 ++-
 drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c | 9 +++++----
 3 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
index 59172acb9738..eb37f41c1790 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
@@ -265,7 +265,7 @@ komeda_crtc_do_flush(struct drm_crtc *crtc,
 	if (slave && has_bit(slave->id, kcrtc_st->affected_pipes))
 		komeda_pipeline_update(slave, old->state);
 
-	conn_st = wb_conn ? wb_conn->base.base.state : NULL;
+	conn_st = wb_conn ? wb_conn->base.base->state : NULL;
 	if (conn_st && conn_st->writeback_job)
 		drm_writeback_queue_job(&wb_conn->base, conn_st);
 
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_kms.h b/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
index 456f3c435719..8d83883a1d99 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
@@ -53,6 +53,7 @@ struct komeda_plane_state {
  * struct komeda_wb_connector
  */
 struct komeda_wb_connector {
+	struct drm_connector conn;
 	/** @base: &drm_writeback_connector */
 	struct drm_writeback_connector base;
 
@@ -136,7 +137,7 @@ struct komeda_kms_dev {
 static inline bool is_writeback_only(struct drm_crtc_state *st)
 {
 	struct komeda_wb_connector *wb_conn = to_kcrtc(st->crtc)->wb_conn;
-	struct drm_connector *conn = wb_conn ? &wb_conn->base.base : NULL;
+	struct drm_connector *conn = wb_conn ? wb_conn->base.base : NULL;
 
 	return conn && (st->connector_mask == BIT(drm_connector_index(conn)));
 }
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
index e465cc4879c9..0caaf483276d 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
@@ -51,7 +51,7 @@ komeda_wb_encoder_atomic_check(struct drm_encoder *encoder,
 		return -EINVAL;
 	}
 
-	wb_layer = to_kconn(to_wb_conn(conn_st->connector))->wb_layer;
+	wb_layer = to_kconn(drm_connector_to_writeback(conn_st->connector))->wb_layer;
 
 	/*
 	 * No need for a full modested when the only connector changed is the
@@ -123,7 +123,7 @@ komeda_wb_connector_fill_modes(struct drm_connector *connector,
 static void komeda_wb_connector_destroy(struct drm_connector *connector)
 {
 	drm_connector_cleanup(connector);
-	kfree(to_kconn(to_wb_conn(connector)));
+	kfree(to_kconn(drm_connector_to_writeback(connector)));
 }
 
 static const struct drm_connector_funcs komeda_wb_connector_funcs = {
@@ -155,6 +155,7 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
 	kwb_conn->wb_layer = kcrtc->master->wb_layer;
 
 	wb_conn = &kwb_conn->base;
+	wb_conn->base = &kwb_conn->conn;
 	wb_conn->encoder.possible_crtcs = BIT(drm_crtc_index(&kcrtc->base));
 
 	formats = komeda_get_layer_fourcc_list(&mdev->fmt_tbl,
@@ -171,9 +172,9 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
 		return err;
 	}
 
-	drm_connector_helper_add(&wb_conn->base, &komeda_wb_conn_helper_funcs);
+	drm_connector_helper_add(wb_conn->base, &komeda_wb_conn_helper_funcs);
 
-	info = &kwb_conn->base.base.display_info;
+	info = &kwb_conn->base.base->display_info;
 	info->bpc = __fls(kcrtc->master->improc->supported_color_depths);
 	info->color_formats = kcrtc->master->improc->supported_color_formats;
 
-- 
2.17.1

