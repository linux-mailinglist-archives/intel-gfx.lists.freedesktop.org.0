Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D62328FB708
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 587EF10E0B8;
	Tue,  4 Jun 2024 15:27:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dvBoVAGG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 758DC10E4E7
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514873; x=1749050873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kwE/AyBRc3hUaTHRcPHGj0n4J8SCWKwRY7Os1e0JlaE=;
 b=dvBoVAGG6QCf2eUTGwLonqnDDUTKO6JibkciiSCLXmXd5OhD72TZh0KV
 fADy8/wTGxnXSAPLU68xPA1AfW3L1uF+L/kFAe5vPj8XSPY59xSMJAeaJ
 KGxgW0iqgIu6GrgWEa2yyL5C4gJpGkrjVT0Zu+7JO4P2A1ed0llnVg0+Y
 vBWhoPOZQsXL4D0WnfkrkcS9T837QRVlXrbk8WV3uXCqIk7wGYgbXo9St
 NMz7Pl+mFN5ky3vDRCizT0ilNCHzqjSJIH8V4rNFWHkeXOJW1k/F3d8Rw
 MrlNHH7yl3w4V8a4hhCNelH9AM3pSesit8KPJufbTZwPwdIopcZ9efQsK w==;
X-CSE-ConnectionGUID: DBAFaphbSXSAXAEoc7jeRg==
X-CSE-MsgGUID: CFlcWFaNTjy99AaK1Jr/Pg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="25469777"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="25469777"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:52 -0700
X-CSE-ConnectionGUID: EjiLmFsERi2oaV+8hYw4Iw==
X-CSE-MsgGUID: /vt2JRzFQI+skW9amEsxxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="42383453"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 17/65] drm/i915: pass dev_priv explicitly to PFIT_AUTO_RATIOS
Date: Tue,  4 Jun 2024 18:25:35 +0300
Message-Id: <148e8c66d37b5eb3077eef44018591d8b6a57937.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PFIT_AUTO_RATIOS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 117120ce5a1d..d3d0e22cdd34 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -951,7 +951,8 @@ static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
 		u32 tmp;
 
 		if (intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) & PFIT_VERT_AUTO_SCALE)
-			tmp = intel_de_read(dev_priv, PFIT_AUTO_RATIOS);
+			tmp = intel_de_read(dev_priv,
+					    PFIT_AUTO_RATIOS(dev_priv));
 		else
 			tmp = intel_de_read(dev_priv,
 					    PFIT_PGM_RATIOS(dev_priv));
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 094e693c40bf..cd6eda1b6bef 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1617,7 +1617,7 @@
 #define   PFIT_VERT_SCALE_MASK_965	REG_GENMASK(28, 16) /* 965+ */
 #define   PFIT_HORIZ_SCALE_MASK_965	REG_GENMASK(12, 0) /* 965+ */
 
-#define PFIT_AUTO_RATIOS _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61238)
+#define PFIT_AUTO_RATIOS(dev_priv) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61238)
 
 #define PCH_GTC_CTL		_MMIO(0xe7000)
 #define   PCH_GTC_ENABLE	(1 << 31)
-- 
2.39.2

