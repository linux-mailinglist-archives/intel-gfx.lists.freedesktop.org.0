Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMbbDbN2t2nxRQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 04:19:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C64D2945BC
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 04:19:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A7010E07A;
	Mon, 16 Mar 2026 03:19:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rg7UMTtG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A1B310E07A;
 Mon, 16 Mar 2026 03:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773631151; x=1805167151;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WvDdyEX8bdI9nh9/ZMdB7EParXbClsENL+TGYjrSnOI=;
 b=Rg7UMTtGgV+XCeWuCTAOOOjZ4l5h5XiiDc7T/IUxoQjPYwceqtVVSjSV
 ljc1POX2lT0k1VGbL+tWxTwlMfJR7wxo1vzkn6RW8eZkl3S9HjClSkzma
 An1vp/mWEAUcQft28E430P8XxUc2Y3RuI3vuqtUZixcgPjrlUtxynSw+/
 xDxbupbUZ3TZ24987UlCvBiwdAQ9lk+XCrpnK96nYrRWLNmsPQYMPexiV
 4n2VwY2xb2+VLl3m3Kfr4T524XobU3sqHbNbyfW3ILcId4UO2/cRS7Zgv
 vOY75T7QMZD9uaEE3OIDDR0QGwkM/tCLZkz0N3+tWX/z/G1zOctUBpTQJ Q==;
X-CSE-ConnectionGUID: 9ifJXHT+R7qk3n3vvNO+Zw==
X-CSE-MsgGUID: 4s6OFiV8Tdi15a5UxjZAaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="85270849"
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="85270849"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2026 20:19:11 -0700
X-CSE-ConnectionGUID: ykri1RhRSCeQLG85GpWbzg==
X-CSE-MsgGUID: 0NeEWB9ITuGXmss1G5N29w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="220820031"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 15 Mar 2026 20:19:09 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: pranay.samala@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2] drm/i915/backlight: Check if VESA backlight is possible
Date: Mon, 16 Mar 2026 08:48:51 +0530
Message-Id: <20260316031850.81794-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260309053956.3966624-1-suraj.kandpal@intel.com>
References: <20260309053956.3966624-1-suraj.kandpal@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 4C64D2945BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Check if BACKLIGHT_BRIGHTNESS_AUX_SET_CAPABLE bit is
set then EDP_PWMGEN_BIT_COUNT_CAP_MIN and EDP_PWMGEN_BIT_COUNT_CAP_MAX
follow the eDP 1.4b Section 10.3. Which states min should
be >= 1 and max should be >= min. Some legacy panels
do not follow this properly. They set the
BACKLIGHT_BRIGHTNESS_AUX_SET_CAPABLE bit while not correctly
populating the min and max fields leading to a 0 max value.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7514
Fixes: 40d2f5820951 ("drm/i915/backlight: Remove try_vesa_interface")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---

v1 -> v2:
- Remove aux_set variable (Pranay)
- Fix commit message (Pranay)

 .../drm/i915/display/intel_dp_aux_backlight.c | 32 ++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index a7b186d0e3c4..d0c76632a946 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -609,6 +609,34 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 	return 0;
 }
 
+static bool
+check_if_vesa_backlight_possible(struct intel_dp *intel_dp)
+{
+	int ret;
+	u8 bit_min, bit_max;
+
+	if (!(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP))
+		return true;
+
+	ret = drm_dp_dpcd_read_byte(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, &bit_min);
+	if (ret < 0)
+		return false;
+
+	bit_min &= DP_EDP_PWMGEN_BIT_COUNT_MASK;
+	if (bit_min < 1)
+		return false;
+
+	ret = drm_dp_dpcd_read_byte(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT_CAP_MAX, &bit_max);
+	if (ret < 0)
+		return false;
+
+	bit_max &= DP_EDP_PWMGEN_BIT_COUNT_MASK;
+	if (bit_max < bit_min)
+		return false;
+
+	return true;
+}
+
 static bool
 intel_dp_aux_supports_vesa_backlight(struct intel_connector *connector)
 {
@@ -625,12 +653,14 @@ intel_dp_aux_supports_vesa_backlight(struct intel_connector *connector)
 		return true;
 	}
 
-	if (drm_edp_backlight_supported(intel_dp->edp_dpcd)) {
+	if (drm_edp_backlight_supported(intel_dp->edp_dpcd) &&
+	    check_if_vesa_backlight_possible(intel_dp)) {
 		drm_dbg_kms(display->drm,
 			    "[CONNECTOR:%d:%s] AUX Backlight Control Supported!\n",
 			    connector->base.base.id, connector->base.name);
 		return true;
 	}
+
 	return false;
 }
 
-- 
2.34.1

