Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4257F51D56A
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 12:12:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35F0310FC37;
	Fri,  6 May 2022 10:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDEEC10FC3D;
 Fri,  6 May 2022 10:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651831960; x=1683367960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bhXamnFastWjESrFFsQR6mya23VSf9GaJvXmnOtDqww=;
 b=Yfqu7qgKW36WbtHBpA+MHxEwYcTMrDrpBDmlU5vWiwFtfhdo4HNDVkFH
 Lu40D1dJHjz3RHtjhZNWjOw0VhMSkTm5cPBSulW39CFZGxVqxzTEtpuwt
 Qyx0lj3uwCruchCtJOQvR3a7vKx860923q63CC/o7o8I84mfXInIuJT5v
 hdnsBmQIAI0jbOLYR4/iUd29rdvdCDnpLg5JA+G0qX7Xt+991ikVo/Moq
 fxQZjeYN+6IFgPxKtfb4IOPJDNhgPvCNW5GzAcYBzyBsEaNOiKAibW43I
 ph1UZavmsM7+pziyN22IylqxD4fZ6g2Y/UfE+1fEIMr07QZheebS2lR1H Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="268571002"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="268571002"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 03:12:40 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="891772782"
Received: from psikora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.157.88])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 03:12:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  6 May 2022 13:10:30 +0300
Message-Id: <314c73c62be0cf8cdc73d58af17aa26e9d0b3f1a.1651830939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651830938.git.jani.nikula@intel.com>
References: <cover.1651830938.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 23/25] drm/edid: add drm_edid helper for
 drm_update_tile_info()
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We'll need to propagate drm_edid everywhere.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index b453bbf2f642..82db7afb4f8e 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -6363,15 +6363,15 @@ static void drm_parse_tiled_block(struct drm_connector *connector,
 	}
 }
 
-void drm_update_tile_info(struct drm_connector *connector,
-			  const struct edid *edid)
+static void _drm_update_tile_info(struct drm_connector *connector,
+				  const struct drm_edid *drm_edid)
 {
 	const struct displayid_block *block;
 	struct displayid_iter iter;
 
 	connector->has_tile = false;
 
-	displayid_iter_edid_begin(edid, &iter);
+	displayid_iter_edid_begin(drm_edid ? drm_edid->edid : NULL, &iter);
 	displayid_iter_for_each(block, &iter) {
 		if (block->tag == DATA_BLOCK_TILED_DISPLAY)
 			drm_parse_tiled_block(connector, block);
@@ -6383,3 +6383,14 @@ void drm_update_tile_info(struct drm_connector *connector,
 		connector->tile_group = NULL;
 	}
 }
+
+void drm_update_tile_info(struct drm_connector *connector,
+			  const struct edid *edid)
+{
+	struct drm_edid drm_edid = {
+		.edid = edid,
+		.size = edid_size(edid),
+	};
+
+	_drm_update_tile_info(connector, &drm_edid);
+}
-- 
2.30.2

