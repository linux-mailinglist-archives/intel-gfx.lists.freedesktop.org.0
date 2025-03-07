Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6732CA56765
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 13:01:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD78710E31F;
	Fri,  7 Mar 2025 12:01:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nH8P2+us";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FBDE10E31F;
 Fri,  7 Mar 2025 12:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741348916; x=1772884916;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8O2DBtacFRMWe1rMYlFJ0/4xUTHDJombT5N94NJkENQ=;
 b=nH8P2+usf9Om3m5mNBbOe8BCrxJRe3jnE5sz4llumC0HK4ys3803hQWe
 ZmZiTw5EnGzXXcpFh+MwWZvViQR262jhYv/oiS82vr/QvMQkdjL7FhN+V
 te5U8oqwn00D4i0ySeB2qSA7BnLAVxgXQ++tpEg1tfsPqpZ/4Cabsr9y5
 J3kq2BWv9PZblB9RIvY23iGmxvrHmVOCaI2EggFnmkuHZcg30HoD0pr7I
 XydAJlrrCfReMvoTHMPJ92R8uNkOB+EcoSkv54bCCqJijDzGwWA8UROjr
 gXqY849hEeAK9bR3NPK4LOnPFTVFLTcxE+Z+M46PNVs2X7Z4fFaxscWaX w==;
X-CSE-ConnectionGUID: EC37cq62SgyvuqKxE7jPgg==
X-CSE-MsgGUID: dIy0owxgRT2i5WaqMqf00w==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42250337"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42250337"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:01:54 -0800
X-CSE-ConnectionGUID: hwJsJqokTO+XWLG3owFi1Q==
X-CSE-MsgGUID: 8KhMQ+R8R/mO1FFV0TWlyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="119304608"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.135])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:01:52 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Check transcoder Selective Update support for
 PR as well
Date: Fri,  7 Mar 2025 14:00:35 +0200
Message-ID: <20250307120035.2976127-1-jouni.hogander@intel.com>
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

We need to ensure transcoder is supporting Selective Update in case of
Panel Replay as well.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 74aa7ba34fda..84e4d6f1f3a8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1491,13 +1491,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!transcoder_has_psr2(display, crtc_state->cpu_transcoder)) {
-		drm_dbg_kms(display->drm,
-			    "PSR2 not supported in transcoder %s\n",
-			    transcoder_name(crtc_state->cpu_transcoder));
-		return false;
-	}
-
 	/*
 	 * DSC and PSR2 cannot be enabled simultaneously. If a requested
 	 * resolution requires DSC to be enabled, priority is given to DSC
@@ -1579,6 +1572,13 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
+	if (!transcoder_has_psr2(display, crtc_state->cpu_transcoder)) {
+		drm_dbg_kms(display->drm,
+			    "Selective update not supported in transcoder %s\n",
+			    transcoder_name(crtc_state->cpu_transcoder));
+		goto unsupported;
+	}
+
 	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state))
 		goto unsupported;
 
-- 
2.43.0

