Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oG5pGe901GmyuAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 05:07:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C895B3A9500
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 05:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1BF910E34A;
	Tue,  7 Apr 2026 03:07:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ilM8fXDo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9730010E349;
 Tue,  7 Apr 2026 03:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775531243; x=1807067243;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=la5rMMtvcyK6knDYGAW8bAja8NoSPlg9gAQllSGjJwA=;
 b=ilM8fXDomfRXVPyVIv27d9bRob8iJyYxkemmst0kJ/3x+gy43WKn6BuR
 l54BdlOsBRfHKTRrdwTu2TB10BICFP8Re69CErTiKwyPe9SANTvEbG64X
 LhTeUomkVU7TOzP6VzpMeCDistmSvMMNsS19MVEQ/UQI0k8d+/zlJShSd
 dV7g+J9hgVpVf3bbJikHvY4Z3ZUX32S5pY9KgiZSrG894ZPZ/rWjesGb/
 C4sDPs7C5kdLA1qQzkpAc32vLRtVWxvBO2Xtl5Xj51VtCUb/X1rt+VYCG
 M489jWpcOVKC26SIxKIWLoz6GAil+3XFhvDIlMWyQHoTWA4ZBxY+HMnEG w==;
X-CSE-ConnectionGUID: SIsppWpdSV+KZwz7JKX74g==
X-CSE-MsgGUID: IVj+YWd5Q2aRZVhjajUHng==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="94066967"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="94066967"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 20:07:23 -0700
X-CSE-ConnectionGUID: uv11pxo0RJ66lm6huJHFDQ==
X-CSE-MsgGUID: dQ6w+qUhS4mqmMtT4ofX6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="227985986"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 06 Apr 2026 20:07:22 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2] drm/i915/backlight: Fix VESA backlight possible check
 condition
Date: Tue,  7 Apr 2026 08:37:11 +0530
Message-Id: <20260407030710.1440046-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260401034332.1321585-1-suraj.kandpal@intel.com>
References: <20260401034332.1321585-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C895B3A9500
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VESA backlight enable is possible when
BACKLIGHT_AUX_ENABLE_CAPABLE is true via AUX command or when
BACKLIGHT_PIN_ENABLE_CAPABLE is true via eDP connector pin.
Similarly, backlight brightness adjustment can be
done via AUX-based control or PWM pin-based control.
It means there can be three configurations:
1) Full AUX-based: Enable and adjustment both via AUX. We currently
   support this (apart from the AUX luminance-based backlight control).
2) Hybrid: Enable via the BL_ENABLE pin, adjustment via either AUX or
   PWM.
3) Fully PWM pin-based: Enable via the BL_ENABLE pin, adjustment via
   PWM.
Since that only 1 is supported as of now we need to make
sure we do not try to manipulate backlight when
BACKLIGHT_AUX_ENABLE_CAPABLE is not set.
Also fix return value when condition is not fulfilled.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15907
Fixes: 0fb03890d182 ("drm/i915/backlight: Check if VESA backlight is possible")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Tested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index d0c76632a946..a8d56ebf06a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -615,8 +615,13 @@ check_if_vesa_backlight_possible(struct intel_dp *intel_dp)
 	int ret;
 	u8 bit_min, bit_max;
 
-	if (!(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP))
-		return true;
+	/*
+	 * Since we only support Fully AUX Based VESA Backlight interface make sure
+	 * backlight enable is possible via AUX along with backlight adjustment
+	 */
+	if (!(intel_dp->edp_dpcd[1] & DP_EDP_BACKLIGHT_AUX_ENABLE_CAP &&
+	      intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP))
+		return false;
 
 	ret = drm_dp_dpcd_read_byte(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, &bit_min);
 	if (ret < 0)
-- 
2.34.1

