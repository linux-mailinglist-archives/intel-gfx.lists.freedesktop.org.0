Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBEhINpj/2kx6AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 09 May 2026 18:42:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31409500866
	for <lists+intel-gfx@lfdr.de>; Sat, 09 May 2026 18:42:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B9B10E3FB;
	Sat,  9 May 2026 16:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="THVcCiT6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89E7D10E3E9;
 Sat,  9 May 2026 16:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778344918; x=1809880918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XxVF2rfs+VPrxZPr8mKenRqm7vBl2ngAJ4w9j5mhPGg=;
 b=THVcCiT6Us+IOqTykRpjq+Y2pIP1FjepMS6GLQ14FMRK/5sfA0e1k5e2
 WSND7hs7Xv0dHIfxnJlxdWO3DU/5Ro1XjP6l91k4daE5+1prrXJXxvEML
 zffDEMCjYcVUPxtmzbwDNS4z2Klr+3N0hlQxhSJ6LZ32DXzYSAedmTPai
 lOWzy1vyxTZzuPBGwjel2a5TC+2LOM2x3Dqi7bLeasTBasGsp9/il0F5I
 PMCQfYwsJ7SjuVXcXygazH+VDVMbGrzKF31bL+CvvjTBhqm42sfHR7fIX
 EMUx7i2jvXMc7xuYvFKzNvvu8RpcKA80yNLVVRCRkfbnQf3CxoUcjlZuV Q==;
X-CSE-ConnectionGUID: 3bUegHavShKkzhdwN6eCXw==
X-CSE-MsgGUID: peLxIBVwSlOA51JqTrWfuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11781"; a="90763619"
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="90763619"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2026 09:41:58 -0700
X-CSE-ConnectionGUID: g9043+/TRoOLgG0mNlo4DA==
X-CSE-MsgGUID: KUY4HYvDThqek/tM67iP5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="236212262"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP; 09 May 2026 09:41:56 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, nemesa.garg@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 7/9] drm/i915/scaler: unloop scaler readout that is run once
Date: Sat,  9 May 2026 18:40:46 +0200
Message-ID: <20260509164048.627399-8-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260509164048.627399-1-michal.grzelak@intel.com>
References: <20260509164048.627399-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Rspamd-Queue-Id: 31409500866
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Most of the loop's code is run once because of the continue statement at
it's start and break statement at it's end. Kick it out of the loop.

While at it, skl_scaler_get_config()'s loop is skipped when specified
condition is met and broken when the condition is not met. Equivalently,
invert the condition and break the loop.

Changelog:
v2->v3
- keep ctl inside the loop (Ville)

Cc: Nemesa Garg <nemesa.garg@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 36 +++++++++++------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 6d9080ec74ce..4e2f4c4ffc45 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -951,35 +951,35 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
 	int scaler_id;
+	u32 pos, size;
 
 	/* find scaler attached to this pipe */
 	for (scaler_id = 0; scaler_id < crtc->num_scalers; scaler_id++) {
-		u32 ctl, pos, size;
+		u32 ctl;
 
 		ctl = intel_de_read(display, SKL_PS_CTRL(crtc->pipe, scaler_id));
-		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) != (PS_SCALER_EN | PS_BINDING_PIPE))
-			continue;
+		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) == (PS_SCALER_EN | PS_BINDING_PIPE))
+			break;
+	}
 
-		if (scaler_has_casf(display, scaler_id))
-			intel_casf_sharpness_get_config(crtc_state);
+	if (scaler_id == crtc->num_scalers)
+		return;
 
-		crtc_state->pch_pfit.enabled = true;
+	if (scaler_has_casf(display, scaler_id))
+		intel_casf_sharpness_get_config(crtc_state);
 
-		pos = intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, scaler_id));
-		size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, scaler_id));
+	crtc_state->pch_pfit.enabled = true;
 
-		drm_rect_init(&crtc_state->pch_pfit.dst,
-			      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
-			      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
-			      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
-			      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
+	pos = intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, scaler_id));
+	size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, scaler_id));
 
-		scaler_state->scalers[scaler_id].in_use = true;
-		break;
-	}
+	drm_rect_init(&crtc_state->pch_pfit.dst,
+		      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
+		      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
+		      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
+		      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
 
-	if (scaler_id == crtc->num_scalers)
-		return;
+	scaler_state->scalers[scaler_id].in_use = true;
 
 	scaler_state->scaler_id = scaler_id;
 	if (scaler_id >= 0)
-- 
2.45.2

