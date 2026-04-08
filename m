Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Mm9DrFK1mkFDQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:31:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC013BC1A1
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D25F10E63A;
	Wed,  8 Apr 2026 12:31:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HR8APohz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B96C510E633;
 Wed,  8 Apr 2026 12:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775651502; x=1807187502;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rsKktwUSGuoAWIPz79uzF6w5qzQ0JKfxb4QVV/k7wTA=;
 b=HR8APohzwnXVMmGE62v2A1yMoI7h14JB0pYYgWUlfwbjsNU4+zgMlCdU
 ZxcLw/7D9jMPFIj/LepMjkCMEVrxM+wXDfWmrEZs2WoAhYDD3PwGFEEBD
 nhkqZxWu4dxJN0/gjiyD/VZv0F1SE/vL9fYeyWtZs0tcHiohgFruPqYal
 fd3/fCL8cvR6fUQ/bq6VWotDs92Wu8yKVYLgzwZIXupnLm/jrjxp8IHxF
 Zbp7ak3lZCNPfaiNhmIGYnOgIpWhoRvpr1y123WsEcZslowaOfax7drBF
 1wQYJ/SKl5BZxuA0Jr6OL/y/F7EDnyTRFjexoV2G8tlwvUkEsiA5ZRgkI g==;
X-CSE-ConnectionGUID: +yqwEHx0T8u3jG4bxlqKZQ==
X-CSE-MsgGUID: p0xdiCA5QK6L5gTS1ya6Hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80519082"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80519082"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:31:42 -0700
X-CSE-ConnectionGUID: dHsJbSSWQuWtT8terqnlnQ==
X-CSE-MsgGUID: DUkhfabyRUy6/5liAng4sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="251782054"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:31:40 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 5/9] drm/i915/scaler: Call skl_update_scaler_crtc() earlier
Date: Wed,  8 Apr 2026 15:31:10 +0300
Message-ID: <20260408123115.15716-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408123115.15716-1-ville.syrjala@linux.intel.com>
References: <20260408123115.15716-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[linux.intel.com:server fail,intel.com:server fail,gabe.freedesktop.org:server fail];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: CDC013BC1A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move the skl_update_scaler_crtc() call into intel_crtc_compute_config().
It no longer has any dependency on CDLCK/etc. so it doesn't need to be
done so late.

The fastset/modeset checks are redundant now as that's exactly
when intel_crtc_compute_config() is called.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 11952136c686..58f33ee72272 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2467,6 +2467,7 @@ static int intel_crtc_compute_set_context_latency(struct intel_atomic_state *sta
 static int intel_crtc_compute_config(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
@@ -2494,6 +2495,12 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 
 	intel_vrr_compute_guardband(crtc_state);
 
+	if (DISPLAY_VER(display) >= 9) {
+		ret = skl_update_scaler_crtc(crtc_state);
+		if (ret)
+			return ret;
+	}
+
 	return 0;
 }
 
@@ -4287,13 +4294,6 @@ static int intel_crtc_atomic_check_late(struct intel_atomic_state *state,
 	}
 
 	if (DISPLAY_VER(display) >= 9) {
-		if (intel_crtc_needs_modeset(crtc_state) ||
-		    intel_crtc_needs_fastset(crtc_state)) {
-			ret = skl_update_scaler_crtc(crtc_state);
-			if (ret)
-				return ret;
-		}
-
 		ret = intel_atomic_setup_scalers(state, crtc);
 		if (ret)
 			return ret;
-- 
2.52.0

