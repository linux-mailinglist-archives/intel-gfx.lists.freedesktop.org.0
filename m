Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAsCIIHLAWqgjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:28:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 549C950DC00
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:28:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D925810E73C;
	Mon, 11 May 2026 12:28:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LEWFu/pK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF76410E743;
 Mon, 11 May 2026 12:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778502526; x=1810038526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1QT1GfOjakGLTtxmrMVYP2Y7dHT5K666xLBZhwOpBdc=;
 b=LEWFu/pKQARJVYs9FVqKxUB0P+ZHnUOV3eqvDP3+dRdu1332mQFttgRa
 s5JZ4uDvCbU2GXoKkt5r64z5veK5y0zOzOXMrs+iSRMlcnSxd2zOdHwlb
 bdogvi1GUwZg5gL4OZaFsV7+EQk/bapCzoE4/mL4dacc0AArRFZaxgop9
 kz24Nmme/9Jxwjh/MpNT6q3/1sNfbfJn9WuB9vQ1O7oz0KxA+gHLl1Lpj
 4kaEZpXKIjQIIFQsofXoeOy2JtqbNsmcDbI9n0aC124jGjcv2ibEFHiYf
 EwTyxurKHoHgo5+26Ev5ukhJ7yUehGevkq6H9VGP8V+rnSNXAgxcON6uH A==;
X-CSE-ConnectionGUID: Ana4P1DuQx+1rU/8U9uDBg==
X-CSE-MsgGUID: PcyqHrkmS/+saYLi5IOj7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90762772"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90762772"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:28:45 -0700
X-CSE-ConnectionGUID: /vmvm5ykQgKB1e9dBfuH1w==
X-CSE-MsgGUID: M02VFyxuS12olZf9DPn3ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="267801434"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.16])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:28:44 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 04/11] drm/i915/bw: Extract icl_init_qgv_info()
Date: Mon, 11 May 2026 15:28:09 +0300
Message-ID: <20260511122816.1235478-5-vinod.govindapillai@intel.com>
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
X-Rspamd-Queue-Id: 549C950DC00
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
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Simplify the initialization of qgv points info by extracting
the code to initialize the qgv points info from dram info based
on the memory type.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index d99e921df0b9..e9cfa3edd09e 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -238,13 +238,11 @@ intel_read_qgv_point_info(struct intel_display *display,
 		return icl_pcode_read_qgv_point_info(display, sp, point);
 }
 
-static int icl_get_qgv_points(struct intel_display *display,
-			      const struct dram_info *dram_info,
-			      struct intel_qgv_info *qi,
-			      bool is_y_tile)
+static int icl_init_qgv_info(struct intel_display *display,
+			     const struct dram_info *dram_info,
+			     struct intel_qgv_info *qi,
+			     bool is_y_tile)
 {
-	int i, ret;
-
 	qi->num_points = dram_info->num_qgv_points;
 	qi->num_psf_points = dram_info->num_psf_gv_points;
 
@@ -316,6 +314,19 @@ static int icl_get_qgv_points(struct intel_display *display,
 		qi->max_numchannels = 1;
 	}
 
+	return 0;
+}
+
+static int icl_get_qgv_points(struct intel_display *display,
+			      const struct dram_info *dram_info,
+			      struct intel_qgv_info *qi,
+			      bool is_y_tile)
+{
+	int i, ret;
+
+	if (icl_init_qgv_info(display, dram_info, qi, is_y_tile))
+		return -EINVAL;
+
 	if (drm_WARN_ON(display->drm,
 			qi->num_points > ARRAY_SIZE(qi->points)))
 		qi->num_points = ARRAY_SIZE(qi->points);
-- 
2.43.0

