Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKh4A4bLAWqgjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:28:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B6D50DC17
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:28:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3582010E72B;
	Mon, 11 May 2026 12:28:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eUl1djq8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06CF10E72F;
 Mon, 11 May 2026 12:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778502531; x=1810038531;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g6bJS1wRuxNrl+oTkRHNcZ9JPEyIjHn6i+tSeHRAtqc=;
 b=eUl1djq8QQf4c+MhpZDmeCt/gIwI+F7WAyoVtIGbFTYK70pt4sE6j17n
 CnXtN4iEceailGYNTQrIwvPQWbuVM8u/pYzOR+dDVkcFkVJ7WpPRiO7zj
 nIuV9AUYzGz4nWdu+nofpnypQ2WxMlFa7qVHiPPHjUPSqaW2aphu/zluR
 bGJjWgPu4HQgsI3xygfN3sZhV1Qp4kyVmvBDW3BG3lj6D8kyZlooOmw4U
 jHqjQJaBxHFkQzR9JIAhrJnzw5+ONYnYI5lo4IjNff/xsBUs0JoqzRpKD
 RrwmcRbPc9KzYbHQMWga/tkZ2kxAQoXY5YzRL6XI9KzDyOopSW4AXaSYL g==;
X-CSE-ConnectionGUID: zmUFnH89SMW4q+fsk5NoDA==
X-CSE-MsgGUID: aG9JCefHTIaVyq7hEdqm6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90762790"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90762790"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:28:50 -0700
X-CSE-ConnectionGUID: L458rIscQZqVUzk0Qe+BXQ==
X-CSE-MsgGUID: GmyNLzUyTiq0fKhecC5sQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="267801444"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.16])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:28:49 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 06/11] drm/i915/bw: update the routine to get max dclk from
 qgv points
Date: Mon, 11 May 2026 15:28:11 +0300
Message-ID: <20260511122816.1235478-7-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260511122816.1235478-1-vinod.govindapillai@intel.com>
References: <20260511122816.1235478-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
X-Rspamd-Queue-Id: B2B6D50DC17
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

As the qgv points are in the sorted order in pmdemand supported
versions, get the dclk from last qgv point.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 7b8801a88cb2..f05fdb5f24c9 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -391,11 +391,19 @@ static int adl_calc_psf_bw(int clk)
 	return DIV_ROUND_CLOSEST(64 * clk * 100, 6);
 }
 
-static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
+static int icl_sagv_max_dclk(struct intel_display *display,
+			     const struct intel_qgv_info *qi)
 {
 	u16 dclk = 0;
 	int i;
 
+	/* QGV points are in sorted order in pmdemand supported versions */
+	if (HAS_PMDEMAND(display)) {
+		int max_point = max(0, qi->num_points - 1);
+
+		return qi->points[max_point].dclk;
+	}
+
 	for (i = 0; i < qi->num_points; i++)
 		dclk = max(dclk, qi->points[i].dclk);
 
@@ -495,7 +503,7 @@ static int icl_get_bw_info(struct intel_display *display,
 		return ret;
 	}
 
-	dclk_max = icl_sagv_max_dclk(&qi);
+	dclk_max = icl_sagv_max_dclk(display, &qi);
 	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
 	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
 	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
@@ -581,7 +589,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 	if (qi.max_numchannels != 0)
 		num_channels = min_t(u8, num_channels, qi.max_numchannels);
 
-	dclk_max = icl_sagv_max_dclk(&qi);
+	dclk_max = icl_sagv_max_dclk(display, &qi);
 
 	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
 	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
@@ -705,7 +713,7 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 		return ret;
 	}
 
-	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
+	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(display, &qi);
 	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
 
 	for (i = 0; i < qi.num_points; i++) {
-- 
2.43.0

