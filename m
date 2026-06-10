Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i0aMCWCjKWp0bAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:48:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8C566C0BC
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:48:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sms-medipool.de header.s=mail header.b=CySPo9l5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=sms-medipool.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2476C10EB5B;
	Wed, 10 Jun 2026 17:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.sms-medipool.de (mail.sms-medipool.de [178.63.14.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A9D10EB11;
 Wed, 10 Jun 2026 17:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sms-medipool.de;
 s=mail; t=1781113690;
 bh=gOzhvpbT/BeuZVrk4+kVYh1RAaDh2itI5WjymjfcCsM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CySPo9l53D1Or8sbX1EfGwjqFnQ9nnzpaktJjPu9sk6mngTnY814dJqsTXhQWx59G
 HvEeiiffGuUbVFPVap+m5ijl2cDRYnKYXeonHx8K154kYbjZOmOkouHu0v+wPxlHuJ
 sSNgIs09gStOZzaqa+AixGgc0Cb9P+Y/MU/PYQcma/c+giCRgj9VCNW+NgVQZoXEaR
 W0Ahq86jQMRoXiTLFdVY5Rkz/vTuxeyjD84PV8PLetGiNDpI3et7HXqUnhkESTJZty
 C4aGIHuPXRkzZKF7Zk5OCwYYnJt664iCr2rHRYYVHJf3vFlFUZG86P9NEIEmmOfCpq
 +oqq81TitQMPg==
Received: from mail.stoss-medica.de (mail.stoss-medica.de [213.147.17.40])
 by mail.sms-medipool.de (Postfix) with ESMTPS id CC39611B5C;
 Wed, 10 Jun 2026 19:48:09 +0200 (CEST)
Received: from NUC16-Linux.sb.golima.de ([95.88.98.111])
 by mail.stoss-medica.de (Kerio Connect 10.0.8 patch 2) with ESMTP;
 Wed, 10 Jun 2026 19:48:08 +0200
From: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, alexander.kaplan@sms-medipool.de
Subject: [PATCH 2/2] drm/i915/dp: Skip RBR for sinks with the NO_LINK_RATE_RBR
 quirk
Date: Wed, 10 Jun 2026 19:48:07 +0200
Message-ID: <20260610174807.6231-3-alexander.kaplan@sms-medipool.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260610174807.6231-1-alexander.kaplan@sms-medipool.de>
References: <20260610174807.6231-1-alexander.kaplan@sms-medipool.de>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sms-medipool.de,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[sms-medipool.de:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.kaplan@sms-medipool.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sms-medipool.de:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,sms-medipool.de:dkim,sms-medipool.de:email,sms-medipool.de:mid,sms-medipool.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BA8C566C0BC

Synaptics VMM7100 PCONs with branch firmware 7.1 deterministically
fail 8b/10b channel equalization at the 4-lane RBR link configuration
(see the preceding commit adding DP_DPCD_QUIRK_NO_LINK_RATE_RBR).

The link config computation optimizes for the minimum link rate, so
it picks exactly this failing configuration for low resolution modes.
E.g. a 1080p60 boot greeter computes to 4x162000.
The resulting link training failure makes the fallback logic reduce
the link parameters, and since the rate is already at its minimum,
the lane count is halved to 2.
The reduced intel_dp->link.max_lane_count then sticks: these PCONs
hold HPD high and never raise the long HPD that would re-sync the
link parameters via intel_dp_reset_link_params().
On the affected system the boot greeter thus permanently capped the
link at 2 lanes, limiting the subsequent 3840x2160@60 desktop mode to
6 bpc dithered output instead of the deep color modes the setup is
capable of with 4 lanes.

Skip RBR when computing the sink rates of a device with the
NO_LINK_RATE_RBR quirk, unless RBR is the only available rate.
Any mode that fits into the RBR link bandwidth also fits into HBR at
the same lane count, so no mode support is lost.
With the quirk applied the greeter trains 2x270000 and the 4k60
desktop mode 4x810000, verified on PTL (xe) with an affected PCON.

Signed-off-by: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 85d3aa3b9894..dec68f07161e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -197,7 +197,8 @@ static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
 	static const int dp_rates[] = {
 		162000, 270000, 540000, 810000
 	};
-	int i, max_rate;
+	int i, num_rates = 0;
+	int max_rate;
 	int max_lttpr_rate;
 
 	if (drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CAN_DO_MAX_LINK_RATE_3_24_GBPS)) {
@@ -221,7 +222,17 @@ static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
 	for (i = 0; i < ARRAY_SIZE(dp_rates); i++) {
 		if (dp_rates[i] > max_rate)
 			break;
-		intel_dp->sink_rates[i] = dp_rates[i];
+
+		/*
+		 * The quirked devices fail channel equalization at RBR, but
+		 * train reliably at all higher rates. Skip RBR, unless it's
+		 * the only available rate.
+		 */
+		if (dp_rates[i] == 162000 && max_rate >= 270000 &&
+		    drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_NO_LINK_RATE_RBR))
+			continue;
+
+		intel_dp->sink_rates[num_rates++] = dp_rates[i];
 	}
 
 	/*
@@ -252,14 +263,14 @@ static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
 		}
 
 		if (uhbr_rates & DP_UHBR10)
-			intel_dp->sink_rates[i++] = 1000000;
+			intel_dp->sink_rates[num_rates++] = 1000000;
 		if (uhbr_rates & DP_UHBR13_5)
-			intel_dp->sink_rates[i++] = 1350000;
+			intel_dp->sink_rates[num_rates++] = 1350000;
 		if (uhbr_rates & DP_UHBR20)
-			intel_dp->sink_rates[i++] = 2000000;
+			intel_dp->sink_rates[num_rates++] = 2000000;
 	}
 
-	intel_dp->num_sink_rates = i;
+	intel_dp->num_sink_rates = num_rates;
 }
 
 static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
-- 
2.54.0


