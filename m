Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0497C67846B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 19:21:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B54D10E531;
	Mon, 23 Jan 2023 18:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D02CB10E52B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 18:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674498082; x=1706034082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iZy3n9qa9brQ5zn8L9M6O3c8h6fktoqP0ouil/TCmUw=;
 b=IeF2f8haHHdfRt/tXLagrb6tzjDHnno8zRkoiMVWvkaHrWh6IJRWwgl7
 aWntbmR/tsbMbKhzsqy6ljbfbiPBKfcO/kHbAnsYx6Zxr728MKLYZYdMN
 107FxgMBA1rYFciJoHwt/q6nSlsew3bCUB3BBq5f3bcUv5z/Hcd+y/Pxf
 0qHjQ7J065CNCCP6V1m6O4W+vioRn6an7LIZ5/QcRmLp7j0zcPGhd0lqD
 UagUBg31hadEmX7UAaIaOPV3rGFF+a27d9Q15vf4NN/1oF3LFRYTrpfRU
 SFpmYV3zz04xvagC5P9Ll/MYkgXlOXm6CxhZdN2PdpEx1f7m+QfcyMsWJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="327370840"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="327370840"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 10:21:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="730382958"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="730382958"
Received: from tyen-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.41.157])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 10:21:08 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Jan 2023 15:20:21 -0300
Message-Id: <20230123182021.31239-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230123182021.31239-1-gustavo.sousa@intel.com>
References: <20230123182021.31239-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dmc: Use unversioned path for ADLP
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The new DMC release for ADLP (v2.18) in linux-firmware adopted the new
convention of using unversioned filenames, so update the driver code for
that new release. Keep the latest versioned path as fallback so we do
not cause regressions.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 2464796c769d..257aa2b7cf20 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -63,8 +63,10 @@
 #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
 MODULE_FIRMWARE(DG2_DMC_PATH);
 
-#define ADLP_DMC_PATH			DMC_LEGACY_PATH(adlp, 2, 16)
+#define ADLP_DMC_PATH			DMC_PATH(adlp)
+#define ADLP_DMC_FALLBACK_PATH		DMC_LEGACY_PATH(adlp, 2, 16)
 MODULE_FIRMWARE(ADLP_DMC_PATH);
+MODULE_FIRMWARE(ADLP_DMC_FALLBACK_PATH);
 
 #define ADLS_DMC_PATH			DMC_LEGACY_PATH(adls, 2, 01)
 MODULE_FIRMWARE(ADLS_DMC_PATH);
@@ -855,7 +857,9 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
 
 static const char *dmc_fallback_path(struct drm_i915_private *i915)
 {
-	/* No fallback paths for now. */
+	if (IS_ALDERLAKE_P(i915))
+		return ADLP_DMC_FALLBACK_PATH;
+
 	return NULL;
 }
 
-- 
2.39.0

