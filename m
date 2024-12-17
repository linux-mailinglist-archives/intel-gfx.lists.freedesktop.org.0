Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDD29F5580
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 19:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1B7D10EA5B;
	Tue, 17 Dec 2024 18:04:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b6JuJgVJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC7B210EA5B;
 Tue, 17 Dec 2024 18:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734458697; x=1765994697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qy0DUOQ+tZsIpjAXYEO2tjz5wnGwa0SKRkOOvQfBn8c=;
 b=b6JuJgVJpJpbeaUj9GPXOf0EL62PsC+XSNpilq4oUSMkxv1bgH6cxVLV
 xAl2RlzSV8GPa0ycxHqnIvfP8uKVOkH+DDyLtRS+RFrYNHZjzklDUC4ls
 uflfLAqhqqlS+PuX94bjI6/qrYbjExcy3oVe/VMR160hvToLETu1SJRKS
 rvOdw2ljW2/bSAUtJfJ9YPOwu22TpBMcUX9IhsqQsSsiCFf3d9Zs/aJEU
 Nag1Lkqi+VDR5iWuoZ8ucg2GC2A1glkOLs9y96Gs9Bt74v1ujClypmrJs
 LqgvhlZjHVy5AEEExTh9B/Gql9kXUXAAVtT+2pwXJjYtQ7965AsI16QRo w==;
X-CSE-ConnectionGUID: BOE7GjE5RU66aN6Cq2aPJw==
X-CSE-MsgGUID: owErl2kITYuftP7VSwi/sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38837166"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38837166"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 10:04:56 -0800
X-CSE-ConnectionGUID: i+Qjk+4wQZi9ZB17d/NPXg==
X-CSE-MsgGUID: p1QGr7NgRBGBB0in4n5OMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="102442871"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa004.fm.intel.com with ESMTP; 17 Dec 2024 10:04:55 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [RFC v2 6/6] drm/i915/dsc: Check if dsc prefill sufficient for vblank
Date: Tue, 17 Dec 2024 23:37:10 +0530
Message-ID: <20241217180710.1048355-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
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

Check if dsc prefill latency is sufficient for vblank.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a538e2b82c12..0f1ee755fd8a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2292,6 +2292,25 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static int
+skl_dsc_prefill_time(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+					&crtc_state->scaler_state;
+	int hscale = scaler_state->scalers[0].hscale;
+	int vscale = scaler_state->scalers[0].vscale;
+
+	if (!crtc_state->dsc.compression_enable)
+		return 0;
+	/*
+	 * FIXME: CDCLK Prefill adjustment to add
+	 */
+	if (scaler_state->scaler_users)
+		return DIV_ROUND_UP(15 * crtc_state->linetime * hscale * vscale, 10);
+
+	return 0;
+}
+
 static int
 scaler_prefill_time(const struct intel_crtc_state *crtc_state)
 {
@@ -2324,6 +2343,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
 		scaler_prefill_time(crtc_state) +
+		skl_dsc_prefill_time(crtc_state) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.46.0

