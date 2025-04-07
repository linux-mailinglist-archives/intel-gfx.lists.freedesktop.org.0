Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3D9A7D44A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 08:38:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF8CE10E1F4;
	Mon,  7 Apr 2025 06:38:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ex9jmO75";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A3E010E1F4;
 Mon,  7 Apr 2025 06:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744007918; x=1775543918;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Tc/IIjsu/4NVl+vTwU9AdcSFbVLgt4KMPp1F0sz1q4o=;
 b=ex9jmO75UG1rzbN9uVgEqJJnTVs+WIKn43BFhct9fdLRV7EG9qeOV3MQ
 OYof3ISpatH4RyinSmk/tAhiozlHB9ptBOZn3Z7Jwt9JtYztUUud9HhDf
 BNU63rK2fYm3W1Xh9gQyv94Hjrl3o47+h/1GB1dVW1NafVc0fLsWjqkTR
 bTRyhty5RslxgqNjgB6zJAp+SvZ63lp51LiMAKtUew/jEen3ok6KkgQ5/
 ezBeT70KBQV9BKOGieEWK9yUrGQsDCIrBEmzknWa+Ww9yYZDvpIC6OrPy
 lf7cJpmZ3UMpdQw1LIGCga+qj1EE4y5iRHY4TVP/jcCtpMniPI5Q/SMZ7 Q==;
X-CSE-ConnectionGUID: 7ime/KTaRdWOYlW/yCXdZw==
X-CSE-MsgGUID: PAqDSheBQSe0Iq72gm5PcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="56040257"
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="56040257"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2025 23:38:37 -0700
X-CSE-ConnectionGUID: zTjLE5jFRoSLauZyrodY7g==
X-CSE-MsgGUID: mOOYfWSlR0yNGmEVuKv3UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="133073460"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.170])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2025 23:38:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/vrr: Stop writing VRR_CTL_IGN_MAX_SHIFT for LNL
 onwards
Date: Mon,  7 Apr 2025 09:37:58 +0300
Message-ID: <20250407063758.3131498-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

According to Bspec VRR_CTL_IGN_MAX_SHIFT doesn't exist for LunarLake and
onwards. Bit 30 is "Mask Block PkgC" instead. Stop writing that for
LunarLake and onwards.

Bspec: 68925

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 633a66f6b73be..ed59e83a3857b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -444,7 +444,10 @@ static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (DISPLAY_VER(display) >= 13)
+	if (DISPLAY_VER(display) >= 20)
+		return VRR_CTL_FLIP_LINE_EN |
+			XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
+	else if (DISPLAY_VER(display) >= 13)
 		return VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
 			XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
 	else
-- 
2.43.0

