Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8LLeKNVpMmqWzgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:33:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FBF697F60
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:33:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Dso3JUjT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA49110EF3C;
	Wed, 17 Jun 2026 09:33:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7042810EF1E;
 Wed, 17 Jun 2026 09:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781688781; x=1813224781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CGeeaCmJZ/RpphxWk4Ystea1HBfRLfYTdDd7Tx4XANM=;
 b=Dso3JUjTm7obimYyAm1bnyTORkC4s2D8EltH28BhGW1hu5ZWLDr3Wej/
 vDTHqniEHp8aRGi1yMH/3SnEKJ2ZfqNofjE87tK+v7Db9DvtUO7trHSiI
 Mqo9HUlQ5eYjH/O+exiwfbYMdFJ3GWdJ/h5EOZajjgeVJWYW37DqnqyIc
 lEuArfUu80GXQK5R5zd0DFS9SD0GbDNSvDrrg2lyIbPwsnCx918VMwDFR
 4EZ4yqG7/SiQ38+5w5MLATvxsJ9833hFkFIuzqwqfS90zldceCQ0gYDHj
 Owdk1YvADJZg2PrkTDIxi6bWwWm7ej0giyrVVx28SY6tUFtg5N+/g4uq7 w==;
X-CSE-ConnectionGUID: MGN/JkuDTce0VoCnYiCIKg==
X-CSE-MsgGUID: 10PI/cNoTPuu9TRKjSJMwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81605290"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="81605290"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 02:32:57 -0700
X-CSE-ConnectionGUID: DCoT9io6QPKn07MI249F/Q==
X-CSE-MsgGUID: gnTSnUN5SCmWvVX29V8xeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="245114475"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 17 Jun 2026 02:32:55 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Pranay Samala <pranay.samala@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [v3 11/14] drm/i915/color: Program Pre-CSC registers for SDR
Date: Wed, 17 Jun 2026 14:38:16 +0530
Message-Id: <20260617090819.1735153-12-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 51FBF697F60

From: Pranay Samala <pranay.samala@intel.com>

Implement plane pre-CSC LUT support for SDR planes.

v2:
- s/drm_color_lut_extract/drm_color_lut32_extract

v3:
- Restructure loop to match HDR function pattern

Assisted-by: Claude:claude-opus-4.6
Signed-off-by: Pranay Samala <pranay.samala@intel.com>
Co-developed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 2a32ab62721c..abf3b3a2e177 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3992,6 +3992,46 @@ xelpd_load_hdr_pre_csc_lut(struct intel_display *display,
 	intel_de_write_dsb(display, dsb, PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);
 }
 
+static void
+xelpd_load_sdr_pre_csc_lut(struct intel_display *display,
+			   struct intel_dsb *dsb,
+			   enum pipe pipe,
+			   enum plane_id plane,
+			   const struct drm_color_lut32 *pre_csc_lut)
+{
+	int i, lut_size = 32;
+	u32 lut_val;
+
+	/*
+	 * First 3 planes are HDR, so reduce by 3 to get to the right
+	 * SDR plane offset
+	 */
+	plane = plane - 3;
+
+	intel_de_write_dsb(display, dsb,
+			   PLANE_PRE_CSC_GAMC_INDEX(pipe, plane, 0),
+			   PLANE_PAL_PREC_AUTO_INCREMENT);
+
+	for (i = 0; i < lut_size + 3; i++) {
+		if (pre_csc_lut) {
+			if (i < lut_size)
+				lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 16);
+			/* else duplicate last lut_val */
+		} else {
+			if (i < lut_size)
+				lut_val = (i * ((1 << 16) - 1)) / (lut_size - 1);
+			else
+				lut_val = 1 << 16;
+		}
+
+		intel_de_write_dsb(display, dsb,
+				   PLANE_PRE_CSC_GAMC_DATA(pipe, plane, 0),
+				   lut_val);
+	}
+
+	intel_de_write_dsb(display, dsb, PLANE_PRE_CSC_GAMC_INDEX(pipe, plane, 0), 0);
+}
+
 static void
 xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 				const struct intel_plane_state *plane_state)
@@ -4005,6 +4045,8 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 
 	if (icl_is_hdr_plane(display, plane))
 		xelpd_load_hdr_pre_csc_lut(display, dsb, pipe, plane, pre_csc_lut);
+	else
+		xelpd_load_sdr_pre_csc_lut(display, dsb, pipe, plane, pre_csc_lut);
 }
 
 static void
-- 
2.25.1

