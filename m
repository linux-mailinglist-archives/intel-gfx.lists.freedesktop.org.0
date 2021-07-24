Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C21F3D43A3
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Jul 2021 02:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8A936FD1D;
	Sat, 24 Jul 2021 00:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8436E6FD1D;
 Sat, 24 Jul 2021 00:11:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="191563452"
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="191563452"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 17:11:30 -0700
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="434269994"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 17:11:30 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 17:10:54 -0700
Message-Id: <20210724001114.249295-11-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210724001114.249295-1-lucas.demarchi@intel.com>
References: <20210724001114.249295-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/30] drm/i915/display: remove explicit CNL
 handling from intel_dmc.c
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove DMC firmware for CNL.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 9895fd957df9..3c3c6cb5c0df 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -70,11 +70,6 @@ MODULE_FIRMWARE(TGL_DMC_PATH);
 #define ICL_DMC_MAX_FW_SIZE		0x6000
 MODULE_FIRMWARE(ICL_DMC_PATH);
 
-#define CNL_DMC_PATH			DMC_PATH(cnl, 1, 07)
-#define CNL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 7)
-#define CNL_DMC_MAX_FW_SIZE		GLK_DMC_MAX_FW_SIZE
-MODULE_FIRMWARE(CNL_DMC_PATH);
-
 #define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
 #define GLK_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
 #define GLK_DMC_MAX_FW_SIZE		0x4000
@@ -718,10 +713,6 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 		dmc->fw_path = ICL_DMC_PATH;
 		dmc->required_version = ICL_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = ICL_DMC_MAX_FW_SIZE;
-	} else if (IS_CANNONLAKE(dev_priv)) {
-		dmc->fw_path = CNL_DMC_PATH;
-		dmc->required_version = CNL_DMC_VERSION_REQUIRED;
-		dmc->max_fw_size = CNL_DMC_MAX_FW_SIZE;
 	} else if (IS_GEMINILAKE(dev_priv)) {
 		dmc->fw_path = GLK_DMC_PATH;
 		dmc->required_version = GLK_DMC_VERSION_REQUIRED;
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
