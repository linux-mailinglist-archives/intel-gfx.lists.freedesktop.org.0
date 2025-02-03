Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FB3A25FB3
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 17:17:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A0F510E4DF;
	Mon,  3 Feb 2025 16:17:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l2oATdKV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A11E10E103
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 16:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738599468; x=1770135468;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=w5w7i7km0JJLGxyRIAAl7GqXhZ1JW3nLF5ivwdLVLYY=;
 b=l2oATdKVswuedpcXDRazptKvM7Sy+JDRJAO6E4AA/vB3S3X/XvYD9KWE
 SvwJCA/8DUk9bWaN6xXT4W5meWnPTaL14rgHPMCIz38ZEStW50Uft+vsO
 k6NsdEaEyvSMuf7fMvcsm8tdmSqYiKPU2gMMB4CdaNsjt2bmU28oHWXcn
 8IDfiAmioiA/xrDRlDcCjSzec3QRYQNC2PaF3WZ4K+DVmO/EgwILrvZlj
 C7mMKWnySKUt4xAPnEJ5dAwaUlgESXIKSKLLQu01SaKjcLX7/xrXQ/sTX
 U2g+ZaeljJ+/tKIXWoXnjGwqlVXIzkydUPJK4gUEk0dgw7tUATGIu8l50 g==;
X-CSE-ConnectionGUID: Lhcj3EDDSp+pozBkKrTiYw==
X-CSE-MsgGUID: ZcbruiPDRsuyBcdVlUBE8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="50511926"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="50511926"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 08:17:48 -0800
X-CSE-ConnectionGUID: tfCstZITSuOELaCSBu9d2A==
X-CSE-MsgGUID: TdkPO3GwQny92WzgL4LoAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="110286939"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Feb 2025 08:17:48 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 1/2] drm/i915/display: Skip state checker for AS SDP
 infoframe enable
Date: Mon,  3 Feb 2025 21:44:46 +0530
Message-ID: <20250203161447.2643039-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250203161447.2643039-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250203161447.2643039-1-mitulkumar.ajitkumar.golani@intel.com>
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

Avoid full modeset by skipping infoframe.enable check when toggling
AS SDP while enabling VRR or while state change from PSR to VRR,
preventing full modeset while pipe config changes.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a6383ddde871..8415b305f702 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5744,9 +5744,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	if (current_config->has_psr || pipe_config->has_psr)
 		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
-					    ~intel_hdmi_infoframe_enable(DP_SDP_VSC));
+					    ~(intel_hdmi_infoframe_enable(DP_SDP_VSC) |
+					      intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC)));
 	else
-		PIPE_CONF_CHECK_X(infoframes.enable);
+		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
+					    ~intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC));
 
 	PIPE_CONF_CHECK_X(infoframes.gcp);
 	PIPE_CONF_CHECK_INFOFRAME(avi);
-- 
2.48.1

