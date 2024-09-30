Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9B898A0FF
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 13:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93F6E10E3F5;
	Mon, 30 Sep 2024 11:42:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qny11TGJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2F010E06C;
 Mon, 30 Sep 2024 11:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727696559; x=1759232559;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3TlCjGfplNNyrMvR3E5XI9xKmrca8nM3q+V2WMfp/dg=;
 b=Qny11TGJOQ6UdmGKO2NPR4IHQmzZtACUjAkF0BRVKc+b8bvmc8qpS+ag
 VQIkZ1mGUy02Nwvq0zWKewl5J41eHYSIxvgCXHk3uaxoYbCTWda41dblP
 lzlA+FNBpPXJzL067Ep4KZNJfEda0dfIV1ovC68DeS9QvTCKd3YgmPVP5
 yr3BLcWkTVfPKniuH+fnHGWS9LaIxenC7Tj6JLfKGRIhY64mx25N1rcbA
 i1Jc0+Fx2I3UfMb4ro/v8UGF7rNJVBgWwUy3B7FGRjgLT+XA/F70HXmzL
 GJGOGUTUQrfAbV+vSaWS6wBb0WI2isOfuVv6SUbJ8a7ZJhnourrhsVd0A w==;
X-CSE-ConnectionGUID: +Cyp7t4wQx6ElDF3wG39DQ==
X-CSE-MsgGUID: Fir6RL2oSaCvZ/RwfZmmpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26733109"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26733109"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 04:42:39 -0700
X-CSE-ConnectionGUID: jIYe8D13T56WysCW9mloBQ==
X-CSE-MsgGUID: etjcQE7ARXCkMqs6OO+YTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="73396361"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa008.fm.intel.com with ESMTP; 30 Sep 2024 04:42:38 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com
Subject: [PATCH] drm/i915: Allow fastset for change in HDR infoframe
Date: Mon, 30 Sep 2024 17:08:06 +0530
Message-Id: <20240930113806.2297402-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

Changes in Dynamic Range and Mastering infoframe
should not trigger a full modeset. Therefore, allow
fastset.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f7667931f9d9..67021f53dae8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5469,7 +5469,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_INFOFRAME(avi);
 	PIPE_CONF_CHECK_INFOFRAME(spd);
 	PIPE_CONF_CHECK_INFOFRAME(hdmi);
-	PIPE_CONF_CHECK_INFOFRAME(drm);
+	if (!fastset)
+		PIPE_CONF_CHECK_INFOFRAME(drm);
 	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
 	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
 
-- 
2.25.1

