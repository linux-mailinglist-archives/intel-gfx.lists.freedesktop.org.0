Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCc/JkKxBmpInAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 07:38:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C69B5499EF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 07:38:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F052910F3D9;
	Fri, 15 May 2026 05:38:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OeelVbDX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64CE710E0A6;
 Fri, 15 May 2026 05:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778823487; x=1810359487;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oeOk4YaW2WNaaHPLYBiKDp1GHh8dNR86bu+JS/8cexM=;
 b=OeelVbDXOndpkueMPvcDiAP4imL87pfp+W7upgNcGoF9yL5dMel8EIpF
 EnwZV4V4xfI709lI50fp55HTUM1ZPel9uOjnBCORt91stH84+HlIAINQE
 OPZmp6IvcO2ld6fdk5wOIGnFiWueYblk0SbsADEFLolWQ260UfcL+IiBj
 BTDt3FRBMr23sTClDbSFtYWCUb0uGX1WR9LnRPsQ2PswKTG7OmXLC6XoV
 yfC/c2Rmrm0v+6WYz2JF5ap99fkg7u8nSnF7nwrwUZ3AWQXRRH6FV+JIZ
 7fE6rnnshK2zsoQmsCtPeTWIozvAXmrLRfjrzAIBMhLAp7vAiqWvCdlSl w==;
X-CSE-ConnectionGUID: g5dm/toIQv+CCvZH7foLeA==
X-CSE-MsgGUID: NSzl3CG9RqO+sra8jQwSoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="97349256"
X-IronPort-AV: E=Sophos;i="6.23,235,1770624000"; d="scan'208";a="97349256"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 22:38:06 -0700
X-CSE-ConnectionGUID: 7M+P0v+0TvWjC0yGE7786Q==
X-CSE-MsgGUID: RTUGe2OWRdO67N+MXDG/2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,235,1770624000"; d="scan'208";a="243564973"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa005.jf.intel.com with ESMTP; 14 May 2026 22:38:04 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dp: Require DPCD backlight control mode for VESA AUX
 backlight
Date: Fri, 15 May 2026 11:07:57 +0530
Message-Id: <20260515053757.907081-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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
X-Rspamd-Queue-Id: 2C69B5499EF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Read DP_EDP_BACKLIGHT_MODE_SET_REGISTER during VESA AUX backlight
capability checks and reject panels using
DP_EDP_BACKLIGHT_CONTROL_MODE_PRODUCT.
i915 supports VESA AUX backlight only in
DP_EDP_BACKLIGHT_CONTROL_MODE_DPCD. Reject panels that expose AUX
backlight capability bits when their active backlight control mode is
DP_EDP_BACKLIGHT_CONTROL_MODE_PRODUCT.

Fixes: 40d2f5820951 ("drm/i915/backlight: Remove try_vesa_interface")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index a8d56ebf06a2..fadc4b2faa4c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -613,7 +613,7 @@ static bool
 check_if_vesa_backlight_possible(struct intel_dp *intel_dp)
 {
 	int ret;
-	u8 bit_min, bit_max;
+	u8 bit_min, bit_max, mode_reg;
 
 	/*
 	 * Since we only support Fully AUX Based VESA Backlight interface make sure
@@ -623,6 +623,15 @@ check_if_vesa_backlight_possible(struct intel_dp *intel_dp)
 	      intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP))
 		return false;
 
+	ret = drm_dp_dpcd_read_byte(&intel_dp->aux, DP_EDP_BACKLIGHT_MODE_SET_REGISTER,
+				    &mode_reg);
+	if (ret < 0)
+		return false;
+
+	if ((mode_reg & DP_EDP_BACKLIGHT_CONTROL_MODE_MASK) ==
+	    DP_EDP_BACKLIGHT_CONTROL_MODE_PRODUCT)
+		return false;
+
 	ret = drm_dp_dpcd_read_byte(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, &bit_min);
 	if (ret < 0)
 		return false;
-- 
2.34.1

