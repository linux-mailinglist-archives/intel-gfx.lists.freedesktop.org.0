Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FA36A8510
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 16:17:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97AA510E514;
	Thu,  2 Mar 2023 15:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2341010E514
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 15:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677770220; x=1709306220;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9Ast0bYAP8ZcYr9taefKv7Zc0YsYOcmEoB9hiI6DqD4=;
 b=TDeqdc1/lCBlQy2TPa57zJ6hkudL52e4LJ8p2nBpaRugDe1weiGbi2Hi
 x3wAsEl4jcY/K/1N9GeyC8J7Aqn9KWPQqYO+CkPsUUfnmWYGLKJVzi+vc
 VwJwYa+aKRkAwviIttYLtFlbD0KEvYoNata2jfXLJxURQ9Y9N7wKmQLIO
 ZkJVbF1o+fPMh/48bPrGUNSTcXOaUKK+Iz1cAYfIFks2tTRMTAJrjaFDn
 BUBEyuA17w7W1IZuP0ZYf8yUnKCf1QTMz67xj6w045M0yiBPQ+/hwJV8B
 EhQGbCI50avihbDt0j/seHaTkNB79DmpPterzEqOCRXPMyBSMxnGu2st9 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="323038054"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="323038054"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 07:06:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="1004137791"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="1004137791"
Received: from erramosf-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.34.226])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 07:06:04 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Mar 2023 12:05:50 -0300
Message-Id: <20230302150550.51621-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dmc: Load DMC on MTL
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

From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>

Add support to load DMC on MTL.

Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index f70ada2357dc..dedf40cb85a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -60,6 +60,10 @@
 
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
+#define MTL_DMC_PATH			DMC_PATH(mtl)
+#define MTL_DMC_MAX_FW_SIZE		0x10000
+MODULE_FIRMWARE(MTL_DMC_PATH);
+
 #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
 MODULE_FIRMWARE(DG2_DMC_PATH);
 
@@ -943,7 +947,10 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
 	 */
 	intel_dmc_runtime_pm_get(dev_priv);
 
-	if (IS_DG2(dev_priv)) {
+	if (IS_METEORLAKE(dev_priv)) {
+		dmc->fw_path = MTL_DMC_PATH;
+		dmc->max_fw_size = MTL_DMC_MAX_FW_SIZE;
+	} else if (IS_DG2(dev_priv)) {
 		dmc->fw_path = DG2_DMC_PATH;
 		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
-- 
2.39.2

