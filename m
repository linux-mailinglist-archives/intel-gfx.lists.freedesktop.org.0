Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FFB51FC24
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 14:05:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA5CD10EF62;
	Mon,  9 May 2022 12:05:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1EDD10EF62;
 Mon,  9 May 2022 12:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652097927; x=1683633927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WZbK4QZW/WLKdDBTqagySWJE47DzSAYZxbqq02NMCrM=;
 b=mCRJm2yMf8lMXWTofzp6ZyzJo973VXE9EhSwmWW2Zl636FIQ67kNNv5u
 aURNoPQtWjkF+X8p7I9Czp0Za1CqJVY11pM/VMB20Pr9xO4htHFTF2OK3
 mwL3q7KofWeSU7xf9WQLboqFc2TP/TLWl5vNZSfiC9qiBaLjC0R6XFdvq
 RqkMprJZjdcTFNHY5koqPb7VsqGVbwZ0jJXv1yydcjO8zCsPt+kiqx2g7
 F49nxU1XWCHuv86rQEbmnJDCUc7P6mAP5DgDeFJV80uiw+WsyIUwwAAjd
 0u3194k6PBGYiaPC3AiPcZ7Pt+3QOTvLIKjWpK7x9E/i/3s1e+Anpix74 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="268693750"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="268693750"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 05:05:25 -0700
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="893859447"
Received: from csawicki-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.129.3])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 05:05:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  9 May 2022 15:03:22 +0300
Message-Id: <5b36683b656446a4d9a172d4dca1cf9aca08a48b.1652097712.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1652097712.git.jani.nikula@intel.com>
References: <cover.1652097712.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 23/25] drm/edid: add drm_edid helper for
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

v2: Handle NULL EDID pointer (Ville, CI)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index d857d1d74c82..26ac4d262e31 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -6364,15 +6364,15 @@ static void drm_parse_tiled_block(struct drm_connector *connector,
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
@@ -6384,3 +6384,11 @@ void drm_update_tile_info(struct drm_connector *connector,
 		connector->tile_group = NULL;
 	}
 }
+
+void drm_update_tile_info(struct drm_connector *connector,
+			  const struct edid *edid)
+{
+	struct drm_edid drm_edid;
+
+	_drm_update_tile_info(connector, drm_edid_legacy_init(&drm_edid, edid));
+}
-- 
2.30.2

