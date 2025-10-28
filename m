Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D42C15A09
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 16:57:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A88B310E5FA;
	Tue, 28 Oct 2025 15:57:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ksMobr9l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A1E410E606;
 Tue, 28 Oct 2025 15:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761667043; x=1793203043;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t4LFl1/U5PXqCcF6wt/EXvsNH/PGx/zzaWVfVGhEFFw=;
 b=ksMobr9l+fjU+OzY6PieY+R68eeIa7ME8mqo08xXPESkQJsEKAPxYI1I
 fbhl/4H/bhGJzZWFuSP9qX2lRXBw/W6fQixBdY0AbhCsIxBLXE6dMDtld
 mByfY1Nmncg1RcqWyRrWhY6RHeAToeaV6UQNRc5XYIVYztPfvvBxbqe6P
 g5fOcGpslBxDMplqSb6Xu7BGY1Yu6kfeFb0c2VtNfLr5aXn64NUOmmZwg
 RRNbwU00aT33OmHs9cKdr3raBVZVJGLShiVGbQWDOQWdUNadPus8GDiE2
 dBPPONekiaFxi8l3uiahO9P0CqwCnYpr/wLZJvwCjqWdkNTiDG83jW5m1 g==;
X-CSE-ConnectionGUID: i6sHjU1uRsGrQTUMZ36pVw==
X-CSE-MsgGUID: 1Gs6vouOSUyYOouM/V1SlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63808500"
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="63808500"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 08:57:22 -0700
X-CSE-ConnectionGUID: hV96XTH8Tmue0aoDnk+PBg==
X-CSE-MsgGUID: j5Bog49TQ0mG7Wk+KOrGfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="216044259"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.90])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 08:57:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915/dsi: debug log send packet sequence contents
Date: Tue, 28 Oct 2025 17:57:12 +0200
Message-ID: <20251028155712.1824565-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251028155712.1824565-1-jani.nikula@intel.com>
References: <20251028155712.1824565-1-jani.nikula@intel.com>
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

This might help debug issues better than just debug logging the function
name.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 748e5462bd95..2528c0996c25 100644
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
 
+	drm_dbg_kms(display->drm, "DSI packet: Port %c (seq %u), Flags 0x%02x, VC %u, %s, Type %u, Length %u, Data %*ph\n",
+		    port_name(port), seq_port, flags, dsi_device->channel,
+		    hs_mode ? "HS" : "LP", type, len, (int)len, data);
+
 	switch (type) {
 	case MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM:
 		ret = mipi_dsi_generic_write(dsi_device, NULL, 0);
-- 
2.47.3

