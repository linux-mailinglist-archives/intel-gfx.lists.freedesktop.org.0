Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBAEA13F92
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 17:34:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F4F010E9D6;
	Thu, 16 Jan 2025 16:34:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QdZRJa7x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B032010E9DA;
 Thu, 16 Jan 2025 16:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737045295; x=1768581295;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3mPAS2DuPTc1P5Kjk05UeR8u2ERf42IkKyXC4xgksZk=;
 b=QdZRJa7xMcdZPmsd5z8Bx1J1GtDlDmBBFEFjcYGFWgHfmfMT+W++CzEt
 lf+64EK05lxeVTPhNNS3bzok5bxZ9ZxKEWJqdJiWiS1YcgJQECcWcpyHM
 jyKwf3XGwLdzxe6VPzAE12HqcxKsP4YvvfJ88iMsOm0XSxE+h6V5Pss8W
 +2lpMbpx0lKgjvNdgIdopnipFRxOxQ1wVZAKlgi7AvSUsARN5LC+N7Y6B
 aOiSEobKNaGj3mi0zH1KkL+HVmCXgt1u7/dqHZr4E8d16i4zpnSKpDdU7
 PKhzpksN/U22NcVlnxdBB1/gJ7/WGEKUdlMSkCLn0ZHnmnBaGO2rQqtaP g==;
X-CSE-ConnectionGUID: tjlYPqJ3R1asEWp5nf3o+A==
X-CSE-MsgGUID: HT+pOoGRSOKCWoBmnY/9WQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="37602042"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="37602042"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 08:34:54 -0800
X-CSE-ConnectionGUID: zgMPQqSYRNaq4BBAkAmmPw==
X-CSE-MsgGUID: 5Or7rBZKTzGTVWWdQ2gXPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109600790"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 16 Jan 2025 08:34:52 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v6 5/7] drm/i915/scaler: Limit pipe scaler downscaling factors
 for YUV420
Date: Thu, 16 Jan 2025 22:01:28 +0530
Message-ID: <20250116163130.3816719-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250116163130.3816719-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250116163130.3816719-1-mitulkumar.ajitkumar.golani@intel.com>
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

Limit downscaling to less than 1.5 (source/destination) in
the horizontal direction and 1.0 in the vertical direction,
When configured for Pipe YUV 420 encoding for port output.

Bspec: 50441, 7490, 69901

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 72344044d9d3..c9d7966b37ff 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -456,6 +456,16 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 		calculate_max_scale(crtc, 0, *scaler_id,
 				    &max_hscale, &max_vscale);
 
+		/*
+		 * When configured for Pipe YUV 420 encoding for port output,
+		 * limit downscaling to less than 1.5 (source/destination) in
+		 * the horizontal direction and 1.0 in the vertical direction.
+		 */
+		if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+			max_hscale = 0x18000 - 1;
+			max_vscale = 0x10000;
+		}
+
 		hscale = drm_rect_calc_hscale(&src, &crtc_state->pch_pfit.dst,
 					      0, max_hscale);
 		vscale = drm_rect_calc_vscale(&src, &crtc_state->pch_pfit.dst,
-- 
2.48.0

