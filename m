Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D7A3FC989
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 16:17:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CBB06E063;
	Tue, 31 Aug 2021 14:17:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F05D66E05F;
 Tue, 31 Aug 2021 14:17:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="216631816"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; d="scan'208";a="216631816"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 07:17:53 -0700
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; d="scan'208";a="531120060"
Received: from anicol1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.211.207])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 07:17:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com
Date: Tue, 31 Aug 2021 17:17:31 +0300
Message-Id: <5a5c7e4477782c174f494947e2a2ea618b2b1ef2.1630419362.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1630419362.git.jani.nikula@intel.com>
References: <cover.1630419362.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/6] drm/displayid: add DisplayID v2.0 data
 blocks and primary use cases
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

DisplayID v2.0 changes the data block identifiers and product types (now
called primary use cases).

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/drm/drm_displayid.h | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/include/drm/drm_displayid.h b/include/drm/drm_displayid.h
index 0ed9445b5482..79771091771a 100644
--- a/include/drm/drm_displayid.h
+++ b/include/drm/drm_displayid.h
@@ -26,6 +26,10 @@
 
 struct edid;
 
+/* DisplayID Structure versions */
+#define DISPLAY_ID_STRUCTURE_VER_12		0x12
+#define DISPLAY_ID_STRUCTURE_VER_20		0x20
+
 /* DisplayID Structure v1r2 Data Blocks */
 #define DATA_BLOCK_PRODUCT_ID			0x00
 #define DATA_BLOCK_DISPLAY_PARAMETERS		0x01
@@ -48,6 +52,20 @@ struct edid;
 #define DATA_BLOCK_VENDOR_SPECIFIC		0x7f
 #define DATA_BLOCK_CTA				0x81
 
+/* DisplayID Structure v2r0 Data Blocks */
+#define DATA_BLOCK_2_PRODUCT_ID			0x20
+#define DATA_BLOCK_2_DISPLAY_PARAMETERS		0x21
+#define DATA_BLOCK_2_TYPE_7_DETAILED_TIMING	0x22
+#define DATA_BLOCK_2_TYPE_8_ENUMERATED_TIMING	0x23
+#define DATA_BLOCK_2_TYPE_9_FORMULA_TIMING	0x24
+#define DATA_BLOCK_2_DYNAMIC_VIDEO_TIMING	0x25
+#define DATA_BLOCK_2_DISPLAY_INTERFACE_FEATURES	0x26
+#define DATA_BLOCK_2_STEREO_DISPLAY_INTERFACE	0x27
+#define DATA_BLOCK_2_TILED_DISPLAY_TOPOLOGY	0x28
+#define DATA_BLOCK_2_CONTAINER_ID		0x29
+#define DATA_BLOCK_2_VENDOR_SPECIFIC		0x7e
+#define DATA_BLOCK_2_CTA_DISPLAY_ID		0x81
+
 /* DisplayID Structure v1r2 Product Type */
 #define PRODUCT_TYPE_EXTENSION			0
 #define PRODUCT_TYPE_TEST			1
@@ -57,6 +75,17 @@ struct edid;
 #define PRODUCT_TYPE_REPEATER			5
 #define PRODUCT_TYPE_DIRECT_DRIVE		6
 
+/* DisplayID Structure v2r0 Display Product Primary Use Case (~Product Type) */
+#define PRIMARY_USE_EXTENSION			0
+#define PRIMARY_USE_TEST			1
+#define PRIMARY_USE_GENERIC			2
+#define PRIMARY_USE_TV				3
+#define PRIMARY_USE_DESKTOP_PRODUCTIVITY	4
+#define PRIMARY_USE_DESKTOP_GAMING		5
+#define PRIMARY_USE_PRESENTATION		6
+#define PRIMARY_USE_HEAD_MOUNTED_VR		7
+#define PRIMARY_USE_HEAD_MOUNTED_AR		8
+
 struct displayid_header {
 	u8 rev;
 	u8 bytes;
-- 
2.30.2

