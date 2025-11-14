Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEE6C5F4AF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 21:53:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2DC10EB1D;
	Fri, 14 Nov 2025 20:53:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ej7Rb8kM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 613AC10EB1C;
 Fri, 14 Nov 2025 20:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763153624; x=1794689624;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=DxTDzJMydiPWb2zkSao7xMF7cCQNPst16TMZsrMn3l0=;
 b=Ej7Rb8kM2CzDkRgz/6xw9fxcEK1IBonetvIHL1V2/5EDmTN0v7Xo96ak
 Rls9aqVjRUO54aDf96+BQcd9H4/Rqbpxhr8Z3wNcrljHObE4FfXoeEa3x
 hWa8dbuOz05glXaqj69kxjSh95Kb99XdoTeqIN+hqBUTq0310hXmwSxer
 BYeqnt3eD8tJW3bBexy7+T0scXq41+wcfLpvd2IM8rjwzW8m58Kn54HQe
 3G4HZE8RCd6/RjJMLkvycWoQ7Jgc8GnopikH4rkPyS3N9Kx895XCBMHPq
 NRvrYG4Z1PVlDszNL+85C08nZlrpqbUSgMsXDxeLGDwtaIoSaxZ4dk07n A==;
X-CSE-ConnectionGUID: 8pJvQb7jTDiybEjdKp1UBw==
X-CSE-MsgGUID: 4wQlC+SSRAa4f3WdyNiuTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="67859900"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="67859900"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:53:36 -0800
X-CSE-ConnectionGUID: 1uDGXfeeR3GKAvRwAFbtZQ==
X-CSE-MsgGUID: fy8gTd2gTUmSOR03Ku6erA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="227214223"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.50])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:53:32 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 14 Nov 2025 17:52:12 -0300
Subject: [PATCH v5 5/8] drm/i915/nvls: Add NVL-S display support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-xe3p_lpd-basic-enabling-v5-5-c183388367f4@intel.com>
References: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
In-Reply-To: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
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
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Add platform description and PCI IDs for NVL-S.

BSpec: 74201
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.h | 4 +++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 1170afaa8680..471f236c9ddf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1420,6 +1420,10 @@ static const struct platform_desc ptl_desc = {
 	}
 };
 
+static const struct platform_desc nvl_desc = {
+	PLATFORM(novalake),
+};
+
 __diag_pop();
 
 /*
@@ -1495,6 +1499,7 @@ static const struct {
 	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
 	INTEL_PTL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
 	INTEL_WCL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
+	INTEL_NVLS_IDS(INTEL_DISPLAY_DEVICE, &nvl_desc),
 };
 
 static const struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 91d8cfac5eff..9affb6a53da4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -103,7 +103,9 @@ struct pci_dev;
 	func(battlemage) \
 	/* Display ver 30 (based on GMD ID) */ \
 	func(pantherlake) \
-	func(pantherlake_wildcatlake)
+	func(pantherlake_wildcatlake) \
+	/* Display ver 35 (based on GMD ID) */ \
+	func(novalake)
 
 
 #define __MEMBER(name) unsigned long name:1;

-- 
2.51.0

