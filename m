Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1D19F557F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 19:04:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31A910EA5D;
	Tue, 17 Dec 2024 18:04:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hx9784ns";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C70310EA56;
 Tue, 17 Dec 2024 18:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734458695; x=1765994695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WUfF+Wp1jpkG4YDv32NHd21ZpcpDpCZoxsFFP5YfHnU=;
 b=hx9784nsE0EFBKf83WANwnSPM+cSmp/sgK5p/Q69cmaE7bVcMspxxQ+l
 TtOFcAQCKUlifwRREdj2HIEM+Vev8LOlaz/22Ruu+KRUmLydZQw/36ZVG
 WCvDXygNvSwBR6YPHx2UEyo2G/3svV+nCysLxTVZdJOycjz1taNkEkEtz
 uxnxpbEYsBWhZhk82b+3eNyM9WzuBYCdPRFUaGDM89X6pLQjYSJtIuCw9
 GRrHcJoKhZV/GJYU0O+TfUZIDgwLCi1+pfZhxTfIuq8u+1GaO1/Y/mUgM
 hXI+flEXRe7Vxg616egGwXbqPc1ghraxprQhQEQwNIlOPvmIgsrVBIpWk g==;
X-CSE-ConnectionGUID: 41mj5ZgcRUevPjvlPnN+mQ==
X-CSE-MsgGUID: ISzhABO3R5KQQXA6GDtwwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38837157"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38837157"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 10:04:55 -0800
X-CSE-ConnectionGUID: ba/pqFE/SM+8Stvj+nQYvw==
X-CSE-MsgGUID: ElqSxc95Q6Gv2kq1Fbwp8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="102442855"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa004.fm.intel.com with ESMTP; 17 Dec 2024 10:04:54 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [RFC v2 5/6] drm/i915/scaler: Check if vblank is sufficient for scaler
Date: Tue, 17 Dec 2024 23:37:09 +0530
Message-ID: <20241217180710.1048355-6-mitulkumar.ajitkumar.golani@intel.com>
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

Check if vblank is too short for scaler prefill latency.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 22 ++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d3506e8ccd9b..a538e2b82c12 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2292,6 +2292,27 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static int
+scaler_prefill_time(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+					&crtc_state->scaler_state;
+	int scaler_users = scaler_state->scaler_users;
+	int count = 0;
+	int hscale = scaler_state->scalers[0].hscale;
+	int vscale = scaler_state->scalers[0].vscale;
+
+	while (scaler_users) {
+		count += scaler_users & 1;
+		scaler_users >>= 1;
+	}
+
+	if (count > 1)
+		return (4 * crtc_state->linetime * hscale * vscale);
+	else
+		return (4 * crtc_state->linetime);
+}
+
 static bool
 skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 			int wm0_lines, int latency)
@@ -2302,6 +2323,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 	/* FIXME missing scaler and DSC pre-fill time */
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
+		scaler_prefill_time(crtc_state) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.46.0

