Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8E1B0D708
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 12:13:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B26510E64E;
	Tue, 22 Jul 2025 10:13:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WZWighXa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9520A10E3F3;
 Tue, 22 Jul 2025 10:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753179217; x=1784715217;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vs0l4AQRf+FDZ2x4GZsKp6YYdLXrOD8oiceEcinI8Zg=;
 b=WZWighXaIk97uQVOxrA0rATMDZu3eiuU2hTQWPgq/XXy1CEgnrwZ/Aay
 XdbxgLw4gpx4W16Q2wkmXj10OUjpk6qQlgsCIV/tp5V4aW1DymYtsGgMV
 hJafM6aXk/ERZ8OnVmoP7oJhOH85BEHledD7+oqMqZgb3Rdhlo/s2WArg
 cSbcsGweubWBllgy59CL9f/ZzIfUoP2ILQg7OeLJxeAqm54x0vBYB6z7Y
 Bknyui454b8jDVTJhsaZ+xpxCCY7xLTkE8sh+vDkZ7x7sNLP0434y2ays
 KLqn7jm2wWfPVEzBI6elGweFFT6VHlC2gC/yprLXVxARlyS5ff+wcPZzp g==;
X-CSE-ConnectionGUID: Rpsxe4C0TVG0W4k+jM2c3Q==
X-CSE-MsgGUID: obX6pfJ7Tsu0QQtITxISDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55266633"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55266633"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 03:13:36 -0700
X-CSE-ConnectionGUID: eeYYiAMJQR6224Q71LU+lw==
X-CSE-MsgGUID: Ohd1AXhgRUir8CVFFbNaHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="159418556"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.223])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 03:13:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: gustavo.sousa@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/4] drm/i915/display: Write PHY_CMN1_CONTROL only when
 using AUXLess ALPM
Date: Tue, 22 Jul 2025 13:13:14 +0300
Message-ID: <20250722101317.1728499-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250722101317.1728499-1-jouni.hogander@intel.com>
References: <20250722101317.1728499-1-jouni.hogander@intel.com>
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

We are seeing "dmesg-warn/abort - *ERROR* PHY * failed after 3 retries"
since we started configuring LFPS sending. According to Bspec Configuring
LFPS sending is needed only when using AUXLess ALPM. This patch avoids
these failures by configuring LFPS sending only when using AUXLess ALPM.

Fixes: 9dc619680de4 ("drm/i915/display: Add function to configure LFPS sending")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ed8e640b96b0..2b0305bb04cd 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3240,11 +3240,10 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
-	bool enable = intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder),
-						  crtc_state);
 	int i;
 
-	if (DISPLAY_VER(display) < 20)
+	if (DISPLAY_VER(display) < 20 ||
+	    !intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder), crtc_state))
 		return;
 
 	for (i = 0; i < 4; i++) {
@@ -3256,8 +3255,7 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 
 		intel_cx0_rmw(encoder, lane_mask, PHY_CMN1_CONTROL(tx, 0),
 			      CONTROL0_MAC_TRANSMIT_LFPS,
-			      enable ? CONTROL0_MAC_TRANSMIT_LFPS : 0,
-			      MB_WRITE_COMMITTED);
+			      CONTROL0_MAC_TRANSMIT_LFPS, MB_WRITE_COMMITTED);
 	}
 }
 
-- 
2.43.0

