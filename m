Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C390F8C5B97
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C040D10EA79;
	Tue, 14 May 2024 19:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P+lBg77p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E87710E8CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714070; x=1747250070;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NbNjisrR5vHYONOIzXp45mVJDkxy7l9tX7MDhe/T+eE=;
 b=P+lBg77pwmn39NIzjhbhxFY2n3COPTIouVuGRSvZIMhzDPbAd89iLgx0
 C4DypPfUvQx6pdmB2RKxxP1DSHEGgEDuNdegju0kXC6JrUa0UTDNpC4gz
 h6UO5Fk3PPHnrBAQvj24RHt//wYueSdkr628mxYVTHP0R5rgdJh3OhgW9
 F9LoB+bZ8gyIT//8rJFaE9HOvLM1RThWxMPRFfG1mNdp1f7HNTBKhrimS
 iQnULchObjNl10wLsn5B6O8GGMhba9TFa/fiazzBJVBS6q/r+NB5yp9US
 Hms8AWAYu+mrOUeA4Pf33hxaTDlVbzPX4xUiMb9pZOsJrNoogfbeCyDN3 A==;
X-CSE-ConnectionGUID: 2ZDVqCSORcSWb/EZyegWhA==
X-CSE-MsgGUID: okTmZdXbQXufyjb3HNazJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23124999"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23124999"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:30 -0700
X-CSE-ConnectionGUID: V+prkI+fThGQrymv6Ju5RQ==
X-CSE-MsgGUID: Re8Kr4pBSuq9Nxa+V2CiiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724631"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 15/20] drm/i915/dp_mst: Reset intel_dp->link_trained during
 disabling
Date: Tue, 14 May 2024 22:14:13 +0300
Message-ID: <20240514191418.2863344-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240514191418.2863344-1-imre.deak@intel.com>
References: <20240514191418.2863344-1-imre.deak@intel.com>
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

Reset the flag indicating an active link after disabling an MST link,
similarly to how this is done for SST outputs. This avoids trying to
retrain an MST link while its disabled.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c9c5d235744ab..66c1c59268167 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -981,6 +981,9 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	drm_dbg_kms(&i915->drm, "active links %d\n",
 		    intel_dp->active_mst_links);
 
+	if (intel_dp->active_mst_links == 1)
+		intel_dp->link_trained = false;
+
 	intel_hdcp_disable(intel_mst->connector);
 
 	intel_dp_sink_disable_decompression(state, connector, old_crtc_state);
-- 
2.43.3

