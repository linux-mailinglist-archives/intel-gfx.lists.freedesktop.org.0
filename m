Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBBwGz9N1WkA4gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 20:30:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCDC3B2ED5
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 20:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3763010E08A;
	Tue,  7 Apr 2026 18:30:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eA08/IWD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD3BB10E08A;
 Tue,  7 Apr 2026 18:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775586620; x=1807122620;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j1Ut4AmQw5cSX+34uYjIm9XLsRC9hFuNXkou4JPmPH8=;
 b=eA08/IWD+ZIuJhTZdOFQDh036Pw8W84yC2e/RKt8D3jVxucYoIvfVAHY
 26nilaLg3RMKCVVmwMTnwwJwyiHnQ/f5wYyCYgXgDH2enb/Jxc84ouZ8f
 lRhIbl3fPXCSIsMx79YnWlLP4f6QKi+j+4XKlOdHkXE3WwRwLlfdRceB7
 N00+ifmRqiVtnQrWJaV+kLbkd5a5p1LwMl0NMCUTH0JOA2hxUKruol0lE
 Cvyp7NcGEStUruqKlEHIOst1RhvHVj3tXfobcfLGQCRXeAKwS5wqpEo78
 W7FuJEdwK/p+K8t3s5v03Ifk2KU0Pu03OtZhaBSieZnJ4oFguZLS5+b2N g==;
X-CSE-ConnectionGUID: PdRCOQDTSHi9ehMNiNBHnw==
X-CSE-MsgGUID: 5geShNB0SwOa+ZQNcIO1jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76680070"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="76680070"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 11:30:19 -0700
X-CSE-ConnectionGUID: tvcsVuexSpOY1tlXZQ1zpQ==
X-CSE-MsgGUID: enB2KsRgStaXnhRDXi9enA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="229911506"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 11:30:18 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: [PATCH] drm/i915/dp: Don't use DP link min bpp for the FRL link
 bandwidth check
Date: Tue,  7 Apr 2026 21:30:15 +0300
Message-ID: <20260407183015.16256-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,collabora.com:email]
X-Rspamd-Queue-Id: ACCDC3B2ED5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_dp_mode_min_link_bpp_x16() gives us the min bpp for the
DP link before the PCON, however intel_dp_mode_valid_downstream()
is trying to check for sufficient bandwidth on the HDMI FRL link
after the PCON. So the use of intel_dp_mode_min_link_bpp_x16() here
is incorrect.

Presumably even with FRL HDMI still can't go below 8bpc, so we should
just use that to give us the minimum required FRL bandwidth. And this
needs to account for the sink format (for 4:2:0 sub-sampling) since
that is what will be flowing over the HDMI link.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4955bd8b11d7..31e9b2758499 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1317,6 +1317,15 @@ intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
 	return MODE_OK;
 }
 
+static int frl_required_bw(int clock, int bpc,
+			   enum intel_output_format sink_format)
+{
+	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		clock /= 2;
+
+	return clock * bpc * 3;
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid_downstream(struct intel_connector *connector,
 			       const struct drm_display_mode *mode,
@@ -1327,13 +1336,14 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	enum drm_mode_status status;
 	enum intel_output_format sink_format;
 
+	sink_format = intel_dp_sink_format(connector, mode);
+
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
 	if (intel_dp->dfp.pcon_max_frl_bw) {
-		int link_bpp_x16 = intel_dp_mode_min_link_bpp_x16(connector, mode);
-		int target_bw;
-		int max_frl_bw;
+		int target_bw, max_frl_bw;
 
-		target_bw = fxp_q4_to_int_roundup(link_bpp_x16) * target_clock;
+		/* Assume 8bpc for the FRL bandwidth check */
+		target_bw = frl_required_bw(target_clock, 8, sink_format);
 
 		max_frl_bw = intel_dp->dfp.pcon_max_frl_bw;
 
@@ -1350,8 +1360,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	    target_clock > intel_dp->dfp.max_dotclock)
 		return MODE_CLOCK_HIGH;
 
-	sink_format = intel_dp_sink_format(connector, mode);
-
 	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
 	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
 					   8, sink_format, true);
-- 
2.52.0

