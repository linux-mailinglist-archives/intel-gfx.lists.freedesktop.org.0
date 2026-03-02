Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBRWGs0MpWn60QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 05:06:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C861D2E04
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 05:06:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 208CF10E42E;
	Mon,  2 Mar 2026 04:06:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mf3AFKG6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF51F10E422;
 Mon,  2 Mar 2026 04:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772424387; x=1803960387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jFMo56os1gWZapSX53Nnhi2H/SQP61U5v8lMsZ+IJ1A=;
 b=Mf3AFKG6VrHMTVWtm7lYrS96lMS73SEbHxeYQXgK9FUGcLPgad9QRGex
 cI7DVlcOhNR0gNJyWhqe4dth1eKXI6+SqCQY/apZOg/mJbvkovcL+jVdE
 x4ZzwJI6JH737uJpG+BvQOe2PKuC1M2OJtDLT7bPB4nCXQhYwTmJn455C
 Q9xLybX2RUIYkdbcb51p37pexAFMlJJ9zMejhlDJXpRuYnEucP2ma/2f5
 bOrsifTehbduIQDl9XK6i5fJU8djU7YD2BlxxvpDgWwVIxpy7u8qu4Q8h
 UiOdsb2gQZmX5w/IQppYquW0JfIVpF24pIQlAV1uQSHfP6dl9zjyvgGNE Q==;
X-CSE-ConnectionGUID: RUT4sxKjQju+n6THDlEVJQ==
X-CSE-MsgGUID: 1ocpooCNRIyeyRDM+MALwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="77294435"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="77294435"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 20:06:25 -0800
X-CSE-ConnectionGUID: wyLQ1CmUTiSJUAfvpB+ZTA==
X-CSE-MsgGUID: sDxqqMh1R7SAXhpXNIFplA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="217541009"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 01 Mar 2026 20:06:24 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [RESEND 4/8] drm/i915/backlight: Check luminance_set when disabling
 PWM via AUX VESA backlight
Date: Mon,  2 Mar 2026 09:36:09 +0530
Message-Id: <20260302040613.3324049-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260302040613.3324049-1-suraj.kandpal@intel.com>
References: <20260302040613.3324049-1-suraj.kandpal@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 39C861D2E04
X-Rspamd-Action: no action

When deciding what if PWM funcs need to be disabled take into account
luminance_set too. We do this since it is also used to decide if
we are enabling PWM backlight funcs or not.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index f59a8a1994a1..27e31d063a01 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -511,7 +511,8 @@ static void intel_dp_aux_vesa_disable_backlight(const struct drm_connector_state
 
 	drm_edp_backlight_disable(&intel_dp->aux, &panel->backlight.edp.vesa.info);
 
-	if (!panel->backlight.edp.vesa.info.aux_enable)
+	if (!(panel->backlight.edp.vesa.info.aux_enable ||
+	      panel->backlight.edp.vesa.info.luminance_set))
 		panel->backlight.pwm_funcs->disable(old_conn_state,
 						    intel_backlight_invert_pwm_level(connector, 0));
 }
-- 
2.34.1

