Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3CE2F0E0C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 09:26:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C27889FAD;
	Mon, 11 Jan 2021 08:26:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B893389FAD;
 Mon, 11 Jan 2021 08:26:44 +0000 (UTC)
IronPort-SDR: QGlTxnuNkiUn1MvjM08b8OHueiK8A0uh7XYNE4kJoJoYa3JdFxBpqY+464Y4GOhFK8IJWFqo0m
 OKgPk1/03X/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9860"; a="177046163"
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="177046163"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 00:26:44 -0800
IronPort-SDR: pIQ3UrEV9i6IME3ifkYjcnPGZedSXZZNuAM7yF886JLRntgQ74K6Y4iPFlHu5vUUoaQBEUkjBW
 7ZK8fBSDxKmg==
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="464094028"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 00:26:41 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 11 Jan 2021 13:41:10 +0530
Message-Id: <20210111081120.28417-10-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210111081120.28417-1-anshuman.gupta@intel.com>
References: <20210111081120.28417-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 09/19] drm/i915/hdcp: Enable Gen12 HDCP 1.4
 DP MST support
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
Cc: jani.nikula@intel.com, seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable HDCP 1.4 over DP MST for Gen12.

v2:
- Enable HDCP for <= Gen12 platforms. [Ram]
v3:
- Connector detials in debug msg. [Ram]

Cc: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Tested-by: Karthik B S <karthik.b.s@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 47beb442094f..f76e2c2a83b8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -829,12 +829,11 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 	intel_attach_force_audio_property(connector);
 	intel_attach_broadcast_rgb_property(connector);
 
-
-	/* TODO: Figure out how to make HDCP work on GEN12+ */
-	if (INTEL_GEN(dev_priv) < 12) {
+	if (INTEL_GEN(dev_priv) <= 12) {
 		ret = intel_dp_init_hdcp(dig_port, intel_connector);
 		if (ret)
-			DRM_DEBUG_KMS("HDCP init failed, skipping.\n");
+			drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP MST init failed, skipping.\n",
+				    connector->name, connector->base.id);
 	}
 
 	/*
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
