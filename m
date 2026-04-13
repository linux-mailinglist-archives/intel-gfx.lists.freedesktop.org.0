Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEfHHFJs3GmdQgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:08:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB6E3E724D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D813210E302;
	Mon, 13 Apr 2026 04:08:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fIsxkUzh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30AFC10E301;
 Mon, 13 Apr 2026 04:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776053328; x=1807589328;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vTr5UUBfXJDTkG0B/q8j3WhJj10dxyLUlv1GmLqNteY=;
 b=fIsxkUzhK8A6U9wpsQsPmPMzO4/gKzgr4ePpU39RWUStMsC/xeEEwBRY
 uFIZB1N1U8p6pwXnkgumyFjmEHQME69M5C1JPWKTNKjbL16GZpRt3VuO9
 h668nVvzKCaVOodUGC98w3nV17ptkx2ug4phB+R5ZOMwiGqr+Ib5N4vDd
 9ttHLUCJpze1ZGc+ZIT4IW2uQAenec43hWqinETvmHPCdMrGavHi/zFR6
 GCzBGJ2Sjpq2xgVo4YwtH+VHbAcJBQQdnIRpm9zqad805lDx5n8nbg0qG
 xxRJuvCAeenPrPXW8nue0T8hHDl/ECVeWtoG/ZRiixzBgKRJxupDtiztl A==;
X-CSE-ConnectionGUID: neFz/nkrT7OHJH3IuDYe+w==
X-CSE-MsgGUID: Y/Rh6XMEQfCDpSLkzZzNEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="80568737"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="80568737"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:08:48 -0700
X-CSE-ConnectionGUID: tbYgEsTGQ8aArCqx76iM+w==
X-CSE-MsgGUID: cvBsU1EWQk+oKcbyfQzMDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="229546599"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:08:45 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 02/12] drm/i915/vrr: Add helper to readback EMP_AS_SDP_TL
Date: Mon, 13 Apr 2026 09:23:39 +0530
Message-ID: <20260413035349.1730312-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 4AB6E3E724D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

EMP_AS_SDP_TL is used to program both DP Adaptive Sync SDP and HDMI
Video Timing EMP for VRR operation. Add a helper to read back the
programmed transmission line from hardware so VRR code can populate
the corresponding CRTC state fields during get_config.

This provides a common read-back path for VRR packet transmission
line state.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 1fed597439b0..abdae7f1f8a8 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -1218,3 +1218,16 @@ int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_st
 
 	return intel_vrr_vblank_start(crtc_state, VRR_DCB_VMAX(tmp) + 1);
 }
+
+u16 intel_vrr_read_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 val;
+
+	if (!HAS_EMP_AS_SDP_TL(display))
+		return 0;
+
+	val = intel_de_read(display, EMP_AS_SDP_TL(display, cpu_transcoder));
+	return REG_FIELD_GET(EMP_AS_SDP_DB_TL_MASK, val);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 4f16ca4af91f..6659a8a53432 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -53,5 +53,6 @@ int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_sta
 int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state);
 int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
 int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
+u16 intel_vrr_read_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

