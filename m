Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECFE94B9F7
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 11:48:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A394E10E6AC;
	Thu,  8 Aug 2024 09:48:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jaFYFjDn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F190A10E38F;
 Thu,  8 Aug 2024 09:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723110485; x=1754646485;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U1NAjhLMGxYtpHj2iE3Ud0/bCN6hAjPHQKvyKKGgeNg=;
 b=jaFYFjDnit4kWdW5+o7jTa38DNb9tfp2zWlIjrF9NODa7mRiPgYKSxKE
 p/ankIq/QNuU8arBRMVJhLbpfmX9XAH5HTfQ+uM2/AOXQmgMi2cEqWNeH
 RARih8ARRH4jhgqfTO4tpya0NTkB9BC9RuH7Ky7CbzzoAFPjEG3kYOdy/
 0xbpkDZJm65awG6GIW9ExBwFPPzWBXVlDSCmTNrKsYa4NsGXiKN+b77vL
 3jQ/2BGzcYZPLMCAIxyV1lq10WOHHgOnEH7JAeHee+LBq66ytCYPJ93WO
 B6PxTudmIK9wgsZVXZTKGFTPZppfdDY6Ld10bmywVC9dntxnUG8zl56cN Q==;
X-CSE-ConnectionGUID: xqPWMaE0Tde3ifO688HuMQ==
X-CSE-MsgGUID: B68YUV7iT+iIcFNO3pKT5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="21376374"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="21376374"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 02:48:03 -0700
X-CSE-ConnectionGUID: SprGFQV8SP2E1jbj16yD5g==
X-CSE-MsgGUID: 8fibhRIBSIm3MHExe9Vg2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="57862312"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 08 Aug 2024 02:47:58 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	ankit.k.nautiyal@intel.com
Subject: [RFC] Add AS_SDP to fastset
Date: Thu,  8 Aug 2024 15:18:49 +0530
Message-ID: <20240808094849.1299028-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
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

Add full modeset being triggered during VRR enable/disable, specially
when panel has Adaptive sync SDP suypport.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2755ebbbb9d2..b41ea78d4c89 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5433,7 +5433,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_INFOFRAME(hdmi);
 	PIPE_CONF_CHECK_INFOFRAME(drm);
 	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
-	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
+	if(!fastset)
+		PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
 
 	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
 	PIPE_CONF_CHECK_I(master_transcoder);
-- 
2.45.2

