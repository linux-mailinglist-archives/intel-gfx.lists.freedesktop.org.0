Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B8CB1E47C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 10:37:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93C1A10E8EA;
	Fri,  8 Aug 2025 08:37:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mwqpAMj1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE37E10E8E8;
 Fri,  8 Aug 2025 08:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754642235; x=1786178235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5E5xnXchGM6rh0VOmcIU34/DNZwywZkbQUqlsdvWhA0=;
 b=mwqpAMj1dzKCkUKaPbb6vhiSEBFIHheIeLMTg2cyqMIdasKrB7R/l6zL
 JTU9rxkV9WHj2fRVNysJS7VO7Sh9vxojss6C4nzzy5HRg9QYifSI8ndmi
 Iz858m21a4b5I589RD8SMHIX6zNaX2oymW6WtRPbhMC0TeDt5bRv1PYo3
 1V5ERq8+a8ufVbqfXjkTDWADXACIHd96558kxwmq7cX/HXTd8krwMetxF
 Arfj0F3Y/dfNE2xQZ5PV7wZBcGn9O+aJB9wD+0+NYv/vi35DIq6aDy6uo
 EorSlSjhjJfWopnUSBkX22s4vgv35S4PibAQFtHYmVzESoTWT0wYj8bEd g==;
X-CSE-ConnectionGUID: umsZSZ3BThOfbWWqTRYpaw==
X-CSE-MsgGUID: H/RHSirjR/GLc10/Z2bLMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="79544604"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="79544604"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 01:37:15 -0700
X-CSE-ConnectionGUID: zCRdgI7rQTqFZDsEO673Ug==
X-CSE-MsgGUID: cvVikfaGTjWugRw9h6X8ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="165663835"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa009.fm.intel.com with ESMTP; 08 Aug 2025 01:37:13 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com,
	gustavo.sousa@intel.com
Subject: [PATCH 2/2] drm/i915/wcl: Add display device info
Date: Fri,  8 Aug 2025 13:49:31 +0530
Message-Id: <20250808081931.4101388-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250808081931.4101388-1-chaitanya.kumar.borah@intel.com>
References: <20250808081931.4101388-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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

From: Imre Deak <imre.deak@intel.com>

Add device info for wildcat lake. WCL has 3 pipes and 2 TC ports.

Suggested-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 .../gpu/drm/i915/display/intel_display_device.c   | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 089cffabbad5..65f0efc35bb7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1354,6 +1354,19 @@ static const struct intel_display_device_info xe2_lpd_display = {
 	.__runtime_defaults.has_dbuf_overlap_detection = true,
 };
 
+static const struct intel_display_device_info wcl_display = {
+	XE_LPDP_FEATURES,
+
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
+	.__runtime_defaults.pipe_mask =
+		BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime_defaults.fbc_mask =
+		BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B) | BIT(INTEL_FBC_C),
+	.__runtime_defaults.port_mask =
+		BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_TC1) | BIT(PORT_TC2),
+};
+
 static const struct intel_display_device_info xe2_hpd_display = {
 	XE_LPDP_FEATURES,
 	.__runtime_defaults.port_mask = BIT(PORT_A) |
@@ -1480,7 +1493,7 @@ static const struct {
 	{ 14,  1, &xe2_hpd_display },
 	{ 20,  0, &xe2_lpd_display },
 	{ 30,  0, &xe2_lpd_display },
-	{ 30,  2, &xe2_lpd_display },
+	{ 30,  2, &wcl_display },
 };
 
 static const struct intel_display_device_info *
-- 
2.25.1

