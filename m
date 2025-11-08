Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C260EC4218F
	for <lists+intel-gfx@lfdr.de>; Sat, 08 Nov 2025 01:07:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52ADD10EBBE;
	Sat,  8 Nov 2025 00:07:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ny0PgRt6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0060610EBBE;
 Sat,  8 Nov 2025 00:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762560422; x=1794096422;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=DxTDzJMydiPWb2zkSao7xMF7cCQNPst16TMZsrMn3l0=;
 b=ny0PgRt6OAm6yHt6lODqvGa8hqbLyaVe69MD7Xch34KrFsva7fg97pvW
 6NhhqtLaS3jXRfEzFzxKQW7IyMow7oURohDX9OcQZGQDxv2zhbOctB6UP
 QgrGWw4rljZ35vLUnggTB2syc3OOyIk35Ux7zVJIhpRJzZzCq4UF0PvdH
 SPww86wcMOaBWf2OTOllYCBRDN1VBi4lnRt3cJ8fUb0EbdAyhh0vxA4h4
 1ECUgmrezFwmMhwlw6HNbhrSn5GRjATQqa+TUHWq7muv/cZaPlyg5ib3b
 k50DJNApCNNbdqWbeJnpjTNphVP4cNpYm9A7Esk4Kz64/YKuUypiuhBxM g==;
X-CSE-ConnectionGUID: SyjAOl24QnqpLccLM1alpw==
X-CSE-MsgGUID: pbK4wPBnQxerBqk1LEqMhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64621284"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64621284"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:07:02 -0800
X-CSE-ConnectionGUID: VXIDJTHCSdyLcRoCqqttIw==
X-CSE-MsgGUID: +pmfHR2XReuVjqjn0QxfDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218822645"
Received: from mgerlach-mobl1.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:06:58 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 07 Nov 2025 21:05:41 -0300
Subject: [PATCH v4 08/11] drm/i915/nvls: Add NVL-S display support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-xe3p_lpd-basic-enabling-v4-8-ab3367f65f15@intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
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

