Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D040C19259
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:46:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F04F910E744;
	Wed, 29 Oct 2025 08:46:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d+Wwp+JG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4970510E742;
 Wed, 29 Oct 2025 08:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761727574; x=1793263574;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ClXirpcF+Z4tbtUmNmKR5XN/37fIlSbcSSC7L/zKoSg=;
 b=d+Wwp+JGdWcz+LAXo7/xPuSe2sabP998fxevIOw1MMgqZyQPz0Q3tXmQ
 EGMCx+F2QH8nlTvjmPzHmr2NyluRtg63nXijKE4R9CB6k0IFqF1XRNbrL
 vfP7sXlYljgsNGUdjOt442zt4H2ppMaZMqG5gxSaJc4fNwsphxi1bInf6
 FNRPmoKGetPrNpazeqWaUxhzS3RV07wbynlj8lBKVEDUAG5H440al5Nm/
 P2JMYMTsTyPMDm8IMyKRv/1IpHPabue+FP5GTp4QZm88zshhvIZBybq0m
 B7NzduUrg31SttislHiyXl9+KXdzYBGo8uh3odSe3eKXycNRk1dyZuY7F g==;
X-CSE-ConnectionGUID: JGCGsa0aTd+8I/OcDKnKyg==
X-CSE-MsgGUID: DrTKibumQ0CsoxkhYc5TSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62868907"
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="62868907"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:46:14 -0700
X-CSE-ConnectionGUID: 2GhyypKoSPyB3QWnoDXlOQ==
X-CSE-MsgGUID: Z++K0ASuQ9aE535eU9+9DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="185676110"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:46:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 2/2] drm/i915/dsi: debug log send packet sequence contents
Date: Wed, 29 Oct 2025 10:46:03 +0200
Message-ID: <20251029084603.2254982-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251029084603.2254982-1-jani.nikula@intel.com>
References: <20251029084603.2254982-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This might help debug issues better than just debug logging the function
name.

v2: Debug log type as hex (Ville)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 63837406d99b..fac8729e442c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -107,8 +107,7 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 	u16 len;
 	enum port port;
 	ssize_t ret;
-
-	drm_dbg_kms(display->drm, "\n");
+	bool hs_mode;
 
 	flags = *data++;
 	type = *data++;
@@ -130,13 +129,18 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 		goto out;
 	}
 
-	if ((flags >> MIPI_TRANSFER_MODE_SHIFT) & 1)
+	hs_mode = (flags >> MIPI_TRANSFER_MODE_SHIFT) & 1;
+	if (hs_mode)
 		dsi_device->mode_flags &= ~MIPI_DSI_MODE_LPM;
 	else
 		dsi_device->mode_flags |= MIPI_DSI_MODE_LPM;
 
 	dsi_device->channel = (flags >> MIPI_VIRTUAL_CHANNEL_SHIFT) & 3;
 
+	drm_dbg_kms(display->drm, "DSI packet: Port %c (seq %u), Flags 0x%02x, VC %u, %s, Type 0x%02x, Length %u, Data %*ph\n",
+		    port_name(port), seq_port, flags, dsi_device->channel,
+		    hs_mode ? "HS" : "LP", type, len, (int)len, data);
+
 	switch (type) {
 	case MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM:
 		ret = mipi_dsi_generic_write(dsi_device, NULL, 0);
-- 
2.47.3

