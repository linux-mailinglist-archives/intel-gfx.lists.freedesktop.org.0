Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5514EBDC4E7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40BEE10E701;
	Wed, 15 Oct 2025 03:17:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nwIENqTi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C1CF10E700;
 Wed, 15 Oct 2025 03:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498271; x=1792034271;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=QQUGfM6ujkKYK0TA/bOTYFLRqBuqJImPN+HrZn0Ue28=;
 b=nwIENqTi5a715rx/Pl1cWWYY7ExeWW461AgUkxusC4De4hVVFDRMfYu+
 Nlt45oThmievshf6FakknmQbyHg+pb8i6lux2DammiqPeWVFV9mwLGrRh
 5C+Hufcwobak3xD+KXsYqXDNB7tNZeXSZjFU/WMesWoZBAPBsI5s7lPFL
 Gz1waWjanE64ExGwkqz62r7y4e4Hq8CI3xl0OG5mgJ3of1n+9s9rVR6Xq
 qd1pCG8gB7dPvcpO+xciAo4BVFXFfR2HhBda1nedeiJZVBIHYjqofi9nb
 n2MkvwZ+D2Rh47Sv5vT8c1tEzfeRUygm6KlAD8kM5VFos4xaMPTDeWegJ w==;
X-CSE-ConnectionGUID: 7AZ3/Q1dS02zzpXuR/CvkA==
X-CSE-MsgGUID: HKFPDDxDTSuk4P6rIUF3uA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577239"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577239"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:50 -0700
X-CSE-ConnectionGUID: spz04YJVT+O2PedDFdtWjw==
X-CSE-MsgGUID: +3Jxz+4JT+aB9cS1nX1ctg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302867"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:46 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:17 -0300
Subject: [PATCH 17/32] drm/i915/xe3p_lpd: Load DMC firmware
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-17-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

Load the DMC firmware for Xe3p_LPD.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 517bebb0b4aa..c496e7a5c003 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -127,6 +127,9 @@ static bool dmc_firmware_param_disabled(struct intel_display *display)
 #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
+#define XE3P_LPD_DMC_PATH		DMC_PATH(xe3p_lpd)
+MODULE_FIRMWARE(XE3P_LPD_DMC_PATH);
+
 #define XE3LPD_DMC_PATH			DMC_PATH(xe3lpd)
 MODULE_FIRMWARE(XE3LPD_DMC_PATH);
 
@@ -184,7 +187,10 @@ static const char *dmc_firmware_default(struct intel_display *display, u32 *size
 	const char *fw_path = NULL;
 	u32 max_fw_size = 0;
 
-	if (DISPLAY_VERx100(display) == 3002 ||
+	if (DISPLAY_VERx100(display) == 3500) {
+		fw_path = XE3P_LPD_DMC_PATH;
+		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
+	} else if (DISPLAY_VERx100(display) == 3002 ||
 	    DISPLAY_VERx100(display) == 3000) {
 		fw_path = XE3LPD_DMC_PATH;
 		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;

-- 
2.51.0

