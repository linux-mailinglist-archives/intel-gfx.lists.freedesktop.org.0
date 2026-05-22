Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AP/ENsq2EGqFcwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 22:04:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DA15B9DFD
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 22:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F28BC10F73F;
	Fri, 22 May 2026 20:04:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kf15A8L4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C975B10F73F;
 Fri, 22 May 2026 20:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779480264; x=1811016264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6P7eAT9/lRKoDrhInWxdtruq/dYzPOtg5B8rVdH6GBQ=;
 b=kf15A8L43t0ccHkDl60X1k8kOfMtxG4BhGDb0RXI+g+wV6LastDovUTj
 zHI8A/qlbOWoBxUVCdiK7HF6I+uQpRvIEYr/ntPbRpE/gZD1ODoVqEw7b
 fUjF0O5GxxvxILuEx2n1ODBRvidcUrw/GYYxsTqV4osS7sOgpONrG9E8H
 p3IVfn8eXrBakCa1NXQbmCA7rmLWiTYKGBaYPibYYmbKvkl3xJQfVdyVD
 DgJfcrNeqquIA5l1F7/6rBCLwqnLjMaBPp/iYuXLD3gwuW2LFFp4F0dsB
 xcNiqEQa665HQUrkep1yBOgJOIe0IurkpFDXGvWxqi0CA49BMrTBck/Wc g==;
X-CSE-ConnectionGUID: 3wYJY0xvT6mNXLTPrXonkQ==
X-CSE-MsgGUID: j6sPCy9BRumRxKJrVnTuTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="80396801"
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="80396801"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 13:04:24 -0700
X-CSE-ConnectionGUID: 2Go0j7fuQUeHZ2ifASrqZQ==
X-CSE-MsgGUID: Lo0txDrkTh21HQuJwlHKUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="234649127"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.71])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 13:04:22 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/10] drm/i915/bw: Fix/unify peakbw calculations
Date: Fri, 22 May 2026 23:03:43 +0300
Message-ID: <20260522200346.17377-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 73DA15B9DFD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We have several copies of the same memory peak bandwidth calculations,
and the rounding directions are all over the place in some of them.
Unify it all into one small function (with rounding matching what Bspec
says).

Note that 'channel_width' is always a multiple of 8 anyway, so for
'channnel_width / 8' the rounding direction doesn't actually matter.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index f2c7e7061ffa..5bb3aa70d570 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -578,6 +578,11 @@ static int icl_get_bw_info(struct intel_display *display,
 	return 0;
 }
 
+static int tgl_peakbw(int num_channels, int channel_width, int dclk)
+{
+	return num_channels * (channel_width / 8) * dclk;
+}
+
 static int tgl_get_bw_info(struct intel_display *display,
 			   const struct dram_info *dram_info,
 			   const struct intel_soc_bw_params *soc_bw_params,
@@ -587,7 +592,6 @@ static int tgl_get_bw_info(struct intel_display *display,
 	bool is_y_tile = true; /* assume y tile may be used */
 	int num_channels = max_t(u8, 1, dram_info->num_channels);
 	int ipqdepth, ipqdepthpch = 16;
-	int dclk_max;
 	int maxdebw, peakbw;
 	int clperchgroup;
 	int num_groups = ARRAY_SIZE(display->bw.max);
@@ -614,9 +618,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 	if (qi.max_numchannels != 0)
 		num_channels = min_t(u8, num_channels, qi.max_numchannels);
 
-	dclk_max = icl_sagv_max_dclk(&qi);
-
-	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
+	peakbw = tgl_peakbw(num_channels, qi.channel_width, icl_sagv_max_dclk(&qi));
 	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
 
 	ipqdepth = min(ipqdepthpch, display_bw_params->displayrtids / num_channels);
@@ -662,9 +664,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 
 			bi->deratedbw[j] = min(maxdebw,
 					       bw * (100 - soc_bw_params->derating) / 100);
-			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
-							  num_channels *
-							  qi.channel_width, 8);
+			bi->peakbw[j] = tgl_peakbw(num_channels, qi.channel_width, sp->dclk);
 
 			drm_dbg_kms(display->drm,
 				    "BW%d / QGV %d: num_planes=%d deratedbw=%u peakbw: %u\n",
@@ -737,12 +737,12 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 		return ret;
 	}
 
-	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
+	peakbw = tgl_peakbw(num_channels, qi.channel_width, icl_sagv_max_dclk(&qi));
 	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
 
 	for (i = 0; i < qi.num_points; i++) {
-		const struct intel_qgv_point *point = &qi.points[i];
-		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
+		const struct intel_qgv_point *sp = &qi.points[i];
+		int bw = tgl_peakbw(num_channels, qi.channel_width, sp->dclk);
 
 		display->bw.max[0].deratedbw[i] =
 			min(maxdebw, (100 - soc_bw_params->derating) * bw / 100);
-- 
2.52.0

