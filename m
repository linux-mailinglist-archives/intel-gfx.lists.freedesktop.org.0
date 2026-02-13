Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4G3ZIxzsjmkCGAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 10:17:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 659011345EF
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 10:17:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB2A210E7C7;
	Fri, 13 Feb 2026 09:17:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZzTYStEK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3055910E7C8;
 Fri, 13 Feb 2026 09:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770974232; x=1802510232;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JM0fKY2cjpZiLdpw37eODYCEzW496KjRIoEqD8c4tUc=;
 b=ZzTYStEKXMGTw+aAmtEIljS+/lmiCMCxaYgNHj+usiNJ5DETQpbcP4bv
 JXsGMp08MNvs2GJMOtH+8mQ8NH/LZlxse+vaG+Ot3aMKMalyfgmjNGAJb
 FKc0mdNspCRKLmLpKCqVg4KUzomj5K/l6SexzapFXgga2p0nI7j56LQv9
 gaW19lwjwwuxFnyctRtcB1x8II4zga5ulXF1YMVyLWwRraskraj2wAQ6Q
 0+EoW9PF1gmsdyIErlDT2UO6Ed0xxq+dbkribRTCgBv+Nq9i+MDW7a6zM
 k717uE7r0RkpRonBOLuOUCL/O3Igib0bAI/G4QsihezgHuk+JFiQUuotO Q==;
X-CSE-ConnectionGUID: N2Ov2NpURGmaGAyTIm/pBg==
X-CSE-MsgGUID: Fa/e66KvSea+tlVECuXfMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72146695"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72146695"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 01:17:12 -0800
X-CSE-ConnectionGUID: P+It7kQGThuJb90PncEH0g==
X-CSE-MsgGUID: fj51QftoScO7l6Tn1viMAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="211778839"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 13 Feb 2026 01:17:10 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/8] drm/i915/backlight: Check luminance_set when disabling
 PWM via AUX VESA backlight
Date: Fri, 13 Feb 2026 14:46:49 +0530
Message-Id: <20260213091653.2250887-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260213091653.2250887-1-suraj.kandpal@intel.com>
References: <20260213091653.2250887-1-suraj.kandpal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 659011345EF
X-Rspamd-Action: no action

When deciding what if PWM funcs need to be disabled take into account
luminance_set too. We do this since it is also used to decide if
we are enabling PWM backlight funcs or not.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 4a67068f4098..dd43176d7a70 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -515,7 +515,7 @@ static void intel_dp_aux_vesa_disable_backlight(const struct drm_connector_state
 
 	drm_edp_backlight_disable(&intel_dp->aux, &panel->backlight.edp.vesa.info);
 
-	if (!panel->backlight.edp.vesa.info.aux_enable)
+	if (!(panel->backlight.edp.vesa.info.aux_enable || panel->backlight.edp.vesa.info.luminance_set))
 		panel->backlight.pwm_funcs->disable(old_conn_state,
 						    intel_backlight_invert_pwm_level(connector, 0));
 }
-- 
2.34.1

