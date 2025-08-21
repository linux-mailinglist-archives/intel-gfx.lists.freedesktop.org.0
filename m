Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C7FB2ED5A
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 06:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F333410E8A7;
	Thu, 21 Aug 2025 04:59:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="So/mZN7V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96A5810E879;
 Thu, 21 Aug 2025 04:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755752380; x=1787288380;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WJpvxyp6uRo2DtMy/HQqys4t0WdyenMg0YBFse9HWQM=;
 b=So/mZN7VWEurWLY+x3fG9SurHVpOYOHD9wWJu8nmhgfBbvc2b9DryxKN
 TxG1l/F1fKlHj7ht+VI8jjbdpTJeV/W5GbzGylwQcbWYPdC3pgJwYFQ43
 wOQ7ywpjy6s3pOL1K7Xf0WNeaBBC4SPdGEzBFPOpUcjpVDmfc9L84FLfj
 h03Rr1TV+mWDnK9vmG1HXcVmSbE82FtP+OHsYPvAIrGHkvhP2kgKCbAKZ
 NO3Tht0yHPFQ6R5xAoljvGMqiWwQaqyJr+uhA1KA/x9bQyD9ckg/iGB8T
 2+jxkfDn1+qsXeWfIYWHelt3wvuM+7GPkuh+T61pAFX/zHusHEFoMyLO6 Q==;
X-CSE-ConnectionGUID: 4mkuQoNAQLuKLM82FpT/Tw==
X-CSE-MsgGUID: 3neo3T9ZTAui6tN3VzdDew==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="69473219"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="69473219"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 21:59:40 -0700
X-CSE-ConnectionGUID: eoGRAI5RSP26beJUSkInAQ==
X-CSE-MsgGUID: WT8lR7JfTO2AupYNdNGpXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="173577542"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.170])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 21:59:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/2] drm/i915/psr: check drm_mode_vrefresh return value
Date: Thu, 21 Aug 2025 07:59:18 +0300
Message-ID: <20250821045918.17757-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250821045918.17757-1-jouni.hogander@intel.com>
References: <20250821045918.17757-1-jouni.hogander@intel.com>
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

Check drm_mode_vrefresh return value sanity before using it in
intel_get_frame_time_us.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5addde63168e..8cc2314fac6f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1116,11 +1116,16 @@ transcoder_has_psr2(struct intel_display *display, enum transcoder cpu_transcode
 
 static u32 intel_get_frame_time_us(const struct intel_crtc_state *crtc_state)
 {
+	int vrefresh;
+
 	if (!crtc_state->hw.active)
 		return 0;
 
-	return DIV_ROUND_UP(1000 * 1000,
-			    drm_mode_vrefresh(&crtc_state->hw.adjusted_mode));
+	vrefresh = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
+	if (vrefresh <= 0)
+		return 0;
+
+	return DIV_ROUND_UP(1000 * 1000, vrefresh);
 }
 
 static void psr2_program_idle_frames(struct intel_dp *intel_dp,
-- 
2.43.0

