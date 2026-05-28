Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPzKKn8aGGoBdQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 610505F0AB1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3FBA10EFC9;
	Thu, 28 May 2026 10:35:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g9b42YXf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7E1410EFC8;
 Thu, 28 May 2026 10:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779964538; x=1811500538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EeaIwU9H8mZAh++SgjIvISF1RUU8zSSZ/vWK7UClYWU=;
 b=g9b42YXfHY0ZXcLZSLt4GR9T/axlWTM1NIUCNYwtagv52sDaRPo88fUP
 5gSTP67vRr+1WsIFjiL0wcB4EX9KA+PhCrSIEPzGDZpkE2nnCNiqaRi7F
 LUz0AUH0RTDv9dRHKv1cyOB4Dh/Jg/3SDa90N0szKA0bnLDXy+455md5s
 rnT0IgqwUQU645syjDEy8bgtO+ewKMTTf6lRi8HL/80xKvnvoa1TP4a3S
 ac3Sa9E9zKXs3Yh1JAEoOoJfbI/VhWvTYiFxYYYdfXgaRf3U47Q0azIAk
 GJc+udik3EzYyfK61vuhpUJCaL0VCrjbJVp1w4cggM8QfpKp8w01dAavg Q==;
X-CSE-ConnectionGUID: M6kmhyIoRnaRRfBnA0Kj/w==
X-CSE-MsgGUID: Q+OznyF8Qt+/uuT6GXg+Lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="79837680"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="79837680"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:38 -0700
X-CSE-ConnectionGUID: hZMvVYnhRjKCwO/tGlMBwA==
X-CSE-MsgGUID: wwirla8YRMy3V56xoevJ3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="247458902"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.166])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:37 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/11] drm/i915/bw: Move peakbw[] out from the plane group
Date: Thu, 28 May 2026 13:34:55 +0300
Message-ID: <20260528103458.18069-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,linux.intel.com:mid]
X-Rspamd-Queue-Id: 610505F0AB1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The peak bandwidth doesn't depend on the number of planes,
so there is no need to repeat the same information for each
plane group.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 24 ++++++++++++-------
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++--
 2 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index ef86fac8e664..59df01b8ad7c 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -666,15 +666,21 @@ static int tgl_get_bw_info(struct intel_display *display,
 
 			bi->deratedbw[j] = min(maxdebw,
 					       bw * (100 - soc_bw_params->derating) / 100);
-			bi->peakbw[j] = tgl_peakbw(num_channels, qi.channel_width, sp->dclk);
 
 			drm_dbg_kms(display->drm,
-				    "BW%d / QGV %d: num_planes=%d deratedbw=%u peakbw: %u\n",
-				    i, j, bi->num_planes, bi->deratedbw[j],
-				    bi->peakbw[j]);
+				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
+				    i, j, bi->num_planes, bi->deratedbw[j]);
 		}
 	}
 
+	for (i = 0; i < qi.num_qgv_points; i++) {
+		const struct intel_qgv_point *sp = &qi.points[i];
+
+		display->bw.peakbw[i] = tgl_peakbw(num_channels, qi.channel_width, sp->dclk);
+
+		drm_dbg_kms(display->drm, "QGV %d: peakbw=%u\n", i, display->bw.peakbw[i]);
+	}
+
 	for (i = 0; i < qi.num_psf_points; i++) {
 		const struct intel_psf_gv_point *sp = &qi.psf_points[i];
 
@@ -741,11 +747,11 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 
 		display->bw.max[0].deratedbw[i] =
 			min(maxdebw, (100 - soc_bw_params->derating) * bw / 100);
-		display->bw.max[0].peakbw[i] = bw;
 
-		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
-			    i, display->bw.max[0].deratedbw[i],
-			    display->bw.max[0].peakbw[i]);
+		display->bw.peakbw[i] = bw;
+
+		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw=%u\n",
+			    i, display->bw.max[0].deratedbw[i], display->bw.peakbw[i]);
 	}
 
 	/* Bandwidth does not depend on # of planes; set all groups the same */
@@ -1110,7 +1116,7 @@ static int mtl_find_qgv_points(struct intel_display *display,
 
 		if (max_data_rate - data_rate < best_rate) {
 			best_rate = max_data_rate - data_rate;
-			qgv_peak_bw = display->bw.max[bw_index].peakbw[i];
+			qgv_peak_bw = display->bw.peakbw[i];
 		}
 
 		drm_dbg_kms(display->drm, "QGV point %d: max bw %d required %d qgv_peak_bw: %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 58cd0961031b..3c17cac1eb97 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -325,12 +325,12 @@ struct intel_display {
 		struct intel_bw_info {
 			/* for each QGV point */
 			unsigned int deratedbw[I915_NUM_QGV_POINTS];
-			/* Peak BW for each QGV point */
-			unsigned int peakbw[I915_NUM_QGV_POINTS];
 			u8 num_planes;
 		} max[6];
 		/* for each PSF GV point */
 		unsigned int psf_bw[I915_NUM_PSF_GV_POINTS];
+		/* Peak BW for each QGV point */
+		unsigned int peakbw[I915_NUM_QGV_POINTS];
 		u8 num_qgv_points;
 		u8 num_psf_gv_points;
 	} bw;
-- 
2.53.0

