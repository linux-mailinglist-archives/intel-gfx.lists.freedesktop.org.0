Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKGNOKU862mfKAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:49:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9849145C7CC
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8BE810F4A2;
	Fri, 24 Apr 2026 09:49:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b0elHuH9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6000910F4A2;
 Fri, 24 Apr 2026 09:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777024161; x=1808560161;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HE73IoN21SAiR407neVozQ8QA+lJHkcqoWp2mIAwHRo=;
 b=b0elHuH98jcQincsuzvsrI38k21YmeE0h3hAux8yxZaKz6HKfDOGi9Vl
 X42VH6nprsXxKoAkAq+oNwWQLniOrT7KLiKrQXK5jTk7qLgaz7lolej4H
 HUnZ09T+92uEtnL3T6nfiEpv085ZSSsVpxvIo0mvnhO8IXuARZ+5Aq8L8
 gQOWO0TmHDmAa48OhZXjUmAA/zT5MRAJ5JzXoqCFrPqspLbh8OZ51PfbT
 s9iru2Nm/1DBRB23cBpVgcqx7+OivYH2lL06FBozxh4CQgPbL+WOaSVEx
 j6w0B5NUr14C+bQXRBDr192mhBdeLCObNM4psYgwCGS6s8xLYdYztbhUS w==;
X-CSE-ConnectionGUID: LauWy42bR3uAM54QkPt5Xw==
X-CSE-MsgGUID: Fe9g/wa8QyeyOHKv8hg4+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="88612859"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="88612859"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:49:20 -0700
X-CSE-ConnectionGUID: rTv1Hut8Q6qZa+RLBafstQ==
X-CSE-MsgGUID: bdySOOzwR5Gp3KfAeYjBUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="228575712"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:49:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [RESEND PATCH 6/7] drm/dp: Add a helper to get the SDP type as a
 string
Date: Fri, 24 Apr 2026 15:04:23 +0530
Message-ID: <20260424093424.3060805-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260424093424.3060805-1-ankit.k.nautiyal@intel.com>
References: <20260424093424.3060805-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 9849145C7CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

Introduce dp_sdp_type_get_name() to get the SDP type as a string.
Use this to log the SDP type based on the sdp_type fields of the
VSC and AS SDPs instead of the hardcoded strings.

While at it, rename "SDP : AS_SDP" to "SDP : Adaptive Sync"

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 36 ++++++++++++++++++++++---
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index e29958f8b0b6..102328d9022d 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -3487,10 +3487,38 @@ static const char *dp_content_type_get_name(enum dp_content_type content_type)
 	}
 }
 
+static const char *dp_sdp_type_get_name(unsigned char type)
+{
+	switch (type) {
+	case DP_SDP_AUDIO_TIMESTAMP:
+		return "Audio Timestamp";
+	case DP_SDP_AUDIO_STREAM:
+		return "Audio Stream";
+	case DP_SDP_EXTENSION:
+		return "Extension";
+	case DP_SDP_AUDIO_COPYMANAGEMENT:
+		return "Audio Copy Management";
+	case DP_SDP_ISRC:
+		return "ISRC";
+	case DP_SDP_VSC:
+		return "VSC";
+	case DP_SDP_PPS:
+		return "PPS";
+	case DP_SDP_VSC_EXT_VESA:
+		return "VSC EXT VESA";
+	case DP_SDP_VSC_EXT_CEA:
+		return "VSC EXT CEA";
+	case DP_SDP_ADAPTIVE_SYNC:
+		return "Adaptive Sync";
+	default:
+		return "Unknown";
+	}
+}
+
 void drm_dp_vsc_sdp_log(struct drm_printer *p, const struct drm_dp_vsc_sdp *vsc)
 {
-	drm_printf(p, "DP SDP: VSC, revision %u, length %u\n",
-		   vsc->revision, vsc->length);
+	drm_printf(p, "DP SDP: %s, revision %u, length %u\n",
+		   dp_sdp_type_get_name(vsc->sdp_type), vsc->revision, vsc->length);
 	drm_printf(p, "    pixelformat: %s\n",
 		   dp_pixelformat_get_name(vsc->pixelformat));
 	drm_printf(p, "    colorimetry: %s\n",
@@ -3505,8 +3533,8 @@ EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
 
 void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp)
 {
-	drm_printf(p, "DP SDP: AS_SDP, revision %u, length %u\n",
-		   as_sdp->revision, as_sdp->length);
+	drm_printf(p, "DP SDP: %s, revision %u, length %u\n",
+		   dp_sdp_type_get_name(as_sdp->sdp_type), as_sdp->revision, as_sdp->length);
 	drm_printf(p, "    vtotal: %d\n", as_sdp->vtotal);
 	drm_printf(p, "    target_rr: %d\n", as_sdp->target_rr);
 	drm_printf(p, "    duration_incr_ms: %d\n", as_sdp->duration_incr_ms);
-- 
2.45.2

