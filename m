Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAU4FQxp8GkITAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 10:00:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C00C447F7ED
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 10:00:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4827D10EA6D;
	Tue, 28 Apr 2026 08:00:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZqVzOWnz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDD1D10EA7F;
 Tue, 28 Apr 2026 07:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777363196; x=1808899196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OKHzVlsKok+QZVWV/dSh2CtfkOOK6/cQ95XjlS1qiec=;
 b=ZqVzOWnzIcK5FhW3l838SsBU44FkuTdkD14/hdPxngpYIzqCUz30URsR
 iq1QWVprNhhtluArV4tD2nj7pKciXgnL2IqLsIJ+z+MUsDbB+bCwR/Pvw
 pt9uDKBAZMsrq1LYnRQOLUa1DE6muf/rJlReIqaZIOz+iUFq9q2S1bnG7
 OaRpenEeeGN7x5wL0P2ffDvHtN+O4FDu1kJz48WsrQvrJmxLix2pqwFPq
 j2ri8O3LLCaSU6+rYO6JpQDh3Oc00x7Fxb4VcJ0hfJndyAc1jQfbInkau
 vHXKGfJTv0cqukUW0IJoio9tLvXSjuavxTiqraoGSiJx+naRhSRUkSfTF A==;
X-CSE-ConnectionGUID: WrvQonVeSkiuqU/CbCKzuA==
X-CSE-MsgGUID: X4vOP1fNRquEfpp9wDwAIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="82115920"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="82115920"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:59:56 -0700
X-CSE-ConnectionGUID: QjYTgiMwSBuRw7QFSgDoXA==
X-CSE-MsgGUID: baGbELLwQu2agKf+0YvWqw==
X-ExtLoop1: 1
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:59:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 9/9] drm/dp: Use drm_printf_indent for DP SDP logging
Date: Tue, 28 Apr 2026 13:14:57 +0530
Message-ID: <20260428074457.3566918-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260428074457.3566918-1-ankit.k.nautiyal@intel.com>
References: <20260428074457.3566918-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: C00C447F7ED
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

Currently the DP SDP log helpers use spaces for indentation. Switch to
tabs for indentation and use drm_printf_indent to keep the format
strings readable.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 36 +++++++++++++------------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index fc550b48fd85..4bf7b783ac39 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -3519,15 +3519,16 @@ void drm_dp_vsc_sdp_log(struct drm_printer *p, const struct drm_dp_vsc_sdp *vsc)
 {
 	drm_printf(p, "DP SDP: %s, revision %u, length %u\n",
 		   dp_sdp_type_get_name(vsc->sdp_type), vsc->revision, vsc->length);
-	drm_printf(p, "    pixelformat: %s\n",
-		   dp_pixelformat_get_name(vsc->pixelformat));
-	drm_printf(p, "    colorimetry: %s\n",
-		   dp_colorimetry_get_name(vsc->pixelformat, vsc->colorimetry));
-	drm_printf(p, "    bpc: %u\n", vsc->bpc);
-	drm_printf(p, "    dynamic range: %s\n",
-		   dp_dynamic_range_get_name(vsc->dynamic_range));
-	drm_printf(p, "    content type: %s\n",
-		   dp_content_type_get_name(vsc->content_type));
+
+	drm_printf_indent(p, 1, "pixelformat: %s\n",
+			  dp_pixelformat_get_name(vsc->pixelformat));
+	drm_printf_indent(p, 1, "colorimetry: %s\n",
+			  dp_colorimetry_get_name(vsc->pixelformat, vsc->colorimetry));
+	drm_printf_indent(p, 1, "bpc: %u\n", vsc->bpc);
+	drm_printf_indent(p, 1, "dynamic range: %s\n",
+			  dp_dynamic_range_get_name(vsc->dynamic_range));
+	drm_printf_indent(p, 1, "content type: %s\n",
+			  dp_content_type_get_name(vsc->content_type));
 }
 EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
 
@@ -3535,14 +3536,15 @@ void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp
 {
 	drm_printf(p, "DP SDP: %s, revision %u, length %u\n",
 		   dp_sdp_type_get_name(as_sdp->sdp_type), as_sdp->revision, as_sdp->length);
-	drm_printf(p, "    vtotal: %d\n", as_sdp->vtotal);
-	drm_printf(p, "    target rr: %d\n", as_sdp->target_rr);
-	drm_printf(p, "    duration increase ms: %d\n", as_sdp->duration_incr_ms);
-	drm_printf(p, "    duration decrease ms: %d\n", as_sdp->duration_decr_ms);
-	drm_printf(p, "    operation mode: %d\n", as_sdp->mode);
-	drm_printf(p, "    target rr divider: %s\n",
-		   as_sdp->target_rr_divider ? "1.001" : "1.000");
-	drm_printf(p, "    coasting vtotal: %d\n", as_sdp->coasting_vtotal);
+
+	drm_printf_indent(p, 1, "vtotal: %d\n", as_sdp->vtotal);
+	drm_printf_indent(p, 1, "target rr: %d\n", as_sdp->target_rr);
+	drm_printf_indent(p, 1, "duration increase ms: %d\n", as_sdp->duration_incr_ms);
+	drm_printf_indent(p, 1, "duration decrease ms: %d\n", as_sdp->duration_decr_ms);
+	drm_printf_indent(p, 1, "operation mode: %d\n", as_sdp->mode);
+	drm_printf_indent(p, 1, "target rr divider: %s\n",
+			  as_sdp->target_rr_divider ? "1.001" : "1.000");
+	drm_printf_indent(p, 1, "coasting vtotal: %d\n", as_sdp->coasting_vtotal);
 }
 EXPORT_SYMBOL(drm_dp_as_sdp_log);
 
-- 
2.45.2

