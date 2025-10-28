Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C2FC12E02
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 05:48:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C017510E2B8;
	Tue, 28 Oct 2025 04:48:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I3Vi276+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE43D10E1DC;
 Tue, 28 Oct 2025 04:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761626882; x=1793162882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eVYvy6TiVwpfb+coFakIqFO4LG7lxuy2Wt7nGyM1rrY=;
 b=I3Vi276+hU1h4v+CxW9DLbFK3ZTAcsWuGOzkpAOdx9F5H8bdW15vfFAB
 hKKOMbhVOnD2a3yiRrhoVj3QNM5Vwm+I7rdzE5ESjRo6njNHDTDrZylbR
 TPBEK0iuLJjO1oZvg/d7vPXg8nZdO8PSd2oVGqIrDtIyp8MLpUJVWiIFK
 53yAc9DVCZEelVl3Yr8jM6KxdE7TAzGq9XanxmmXgA/+fZFXJxDRUAj8L
 p5qjgZJGHubX0l8rmyPSZPKWVSp6CswJy7FRWHieJqVm7BDSu7l4Owlti
 ecXAU5VR3ycrdbeNz7g7ZAalqtzgM7FbPGe9l0/gWXEsAIApg44STq1M3 A==;
X-CSE-ConnectionGUID: M5jCPom7Qwe7a+Umxj4CZQ==
X-CSE-MsgGUID: U3cBX7bgTKKkhNpvqzepLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75163293"
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="75163293"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 21:48:02 -0700
X-CSE-ConnectionGUID: eVc+K9DBSvm0S2oIEyVeuQ==
X-CSE-MsgGUID: 6vGNOPvbT1mcZ76tQjrsgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="190364894"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 21:48:00 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/3] drm/i915/dp: Move computation of as_sdp_after psr and lobf
Date: Tue, 28 Oct 2025 10:05:00 +0530
Message-ID: <20251028043502.2977803-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251028043502.2977803-1-ankit.k.nautiyal@intel.com>
References: <20251028043502.2977803-1-ankit.k.nautiyal@intel.com>
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

To configure adaptive-sync SDP for Panel replay and LOBF features, move
the intel_dp_compute_as_sdp() after configuration for PSR/PR and LOBF.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 475518b4048b..ee113e118fed 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3413,9 +3413,9 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		pipe_config->dp_m_n.data_m *= pipe_config->splitter.link_count;
 
 	intel_vrr_compute_config(pipe_config, conn_state);
-	intel_dp_compute_as_sdp(intel_dp, pipe_config);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
+	intel_dp_compute_as_sdp(intel_dp, pipe_config);
 	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
-- 
2.45.2

