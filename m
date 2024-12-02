Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0089DF908
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 03:43:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C46610E2FA;
	Mon,  2 Dec 2024 02:43:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oE8G2rwz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FCAF10E2EF;
 Mon,  2 Dec 2024 02:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733107421; x=1764643421;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XcmuxXGoiktJbQoRJxgPq1eZBL7GztrftXb/Z/N4DBo=;
 b=oE8G2rwzIWkmfjT/Z37yR3NYs8CYziX6donLNP/QFg/sqa19oVPvbpLc
 w4g99hjI/0jmi+lM27O5m3xWvnSdmZbUYb+I2980x+XV6AttP4LJTojPZ
 jTcLiQfMyJiiPTrbEG9TFIvyyO6JshTG6w0zG8FFnDjqN+aqmhejK11ht
 whIY5wDMayyL19FYDl06r6COQBYxVef8KEgLJP8Oa0JbKupy3XpXYp94x
 4yLLo5DUDMs+/mBx4113vxGQ3Njfo+ZMtRPViF2828qQyq7VjLR2AFw+w
 nK4zSEvXKjTULAU61vK4XM0LMmNwFaLJCa6sCtldLlzTn2nRX5g+E1P7S Q==;
X-CSE-ConnectionGUID: FT7rT038ST6i8S1dfGJAwA==
X-CSE-MsgGUID: 8LRIjAHNR1mcYZsS0d9ToQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="44634863"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="44634863"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2024 18:43:41 -0800
X-CSE-ConnectionGUID: IbBbAY52Rf62vAer7cPDnQ==
X-CSE-MsgGUID: OwpBu171S/aHmA4/x52hww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="92878238"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 01 Dec 2024 18:43:39 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Subject: [PATCH v5 6/6] drm/i915/display: Move as sdp params change to fastset
Date: Mon,  2 Dec 2024 08:15:40 +0530
Message-ID: <20241202024540.2578856-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
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

as_sdp param changes from vrr to cmrr should happen to fastset.
Changing as_sdp params should not trigger any modeset.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4805bf682d43..708e3f86db8f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5711,10 +5711,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_INFOFRAME(avi);
 	PIPE_CONF_CHECK_INFOFRAME(spd);
 	PIPE_CONF_CHECK_INFOFRAME(hdmi);
-	if (!fastset)
+	if (!fastset) {
 		PIPE_CONF_CHECK_INFOFRAME(drm);
+		PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
+	}
 	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
-	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
 
 	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
 	PIPE_CONF_CHECK_I(master_transcoder);
-- 
2.46.0

