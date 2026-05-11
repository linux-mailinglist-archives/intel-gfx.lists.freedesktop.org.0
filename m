Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCEwNnEEAmo3nQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 18:31:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F56451230C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 18:31:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE76B10E820;
	Mon, 11 May 2026 16:31:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y3A6eq7+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FD2010E81A;
 Mon, 11 May 2026 16:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778517101; x=1810053101;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=heUEiRSkb2/GyrweDuZdXp+MxjGUYxWau8fsQRrj9GE=;
 b=Y3A6eq7+SWCnbgPn18Dpa5xOAUrLG/Mc9tuFRVivBdMsxdBLPAJR/Otv
 KSXme1nsGCyhVRZ7vpEecHwLUDhJi5qQPh0RmCf+4JhJSnM01hzKaEbwL
 dTlEvttGE3oVc0ljKLyUyowuHJ9h69pZZVK6bRMpkLasFsx535yX/L3qW
 UES1udoDBT9o6TlIeCVKWvE5KC33v32a2PjgUWfhX5ghgt4cvcQlLfsRp
 7wd9BbLlrA65h+tk30xoonKAfusKP35ZCuZhhrd2umO5U14W84uQ1Fje5
 +FUU+UzqabI0TVDJ8T5FAZYxkR2ZAJ0a9xvoeYGlP5Npwj3ja8okHWSY0 w==;
X-CSE-ConnectionGUID: Qu+cUEb5QI6Lp8UwoiuPxg==
X-CSE-MsgGUID: kDsfYPGUTUqtm4IFeACRNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="83024190"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="83024190"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 09:31:41 -0700
X-CSE-ConnectionGUID: 9dvNkk3QRXmE9gJsA3d+cw==
X-CSE-MsgGUID: L4kgojidSOmiDZizx3X2IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="267858157"
Received: from khuang2-desk.gar.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.192])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 09:31:40 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 11 May 2026 13:30:59 -0300
Subject: [PATCH v2 4/4] drm/i915/bw: Extract get_display_bw_params()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-4-e762cb8662da@intel.com>
References: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
In-Reply-To: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>
X-Mailer: b4 0.15-dev
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
X-Rspamd-Queue-Id: 8F56451230C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

Just like it is done for the platform-specific bandwidth parameters, use
a separate function named get_display_bw_params() to return the display
IP-specific parameters.  This simplifies intel_bw_init_hw() by having
just one call for each of the *_get_bw_info() functions.

v2:
  - Prefer to call get_display_bw_params() only once in
    intel_bw_init_hw() instead of having multiple calls in each of the
    affected *_get_bw_info() functions. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 36 +++++++++++++++++++++------------
 1 file changed, 23 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index c01356d38e64..acd1b6901b46 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -493,6 +493,26 @@ static const struct intel_display_bw_params xelpdp_bw_params = {
 	.displayrtids = 256,
 };
 
+static const struct intel_display_bw_params *get_display_bw_params(struct intel_display *display)
+{
+	if (DISPLAY_VER(display) >= 14) {
+		return &xelpdp_bw_params;
+	} else if (DISPLAY_VER(display) >= 12) {
+		/*
+		 * RKL's SoC was based on ICL and the display, even though being
+		 * gen12, had changes to the memory interface to match gen11's,
+		 * consequently inheriting gen11's display-specific bandwidth
+		 * parameters.
+		 */
+		if (display->platform.rocketlake)
+			return &gen11_bw_params;
+		else
+			return &gen12_bw_params;
+	} else {
+		return &gen11_bw_params;
+	}
+}
+
 static int icl_get_bw_info(struct intel_display *display,
 			   const struct dram_info *dram_info,
 			   const struct intel_soc_bw_params *soc_bw_params,
@@ -843,6 +863,7 @@ void intel_bw_init_hw(struct intel_display *display)
 {
 	const struct dram_info *dram_info = intel_dram_info(display);
 	const struct intel_soc_bw_params *soc_bw_params = get_soc_bw_params(display);
+	const struct intel_display_bw_params *display_bw_params = get_display_bw_params(display);
 
 	if (!HAS_DISPLAY(display))
 		return;
@@ -858,23 +879,12 @@ void intel_bw_init_hw(struct intel_display *display)
 
 	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
 		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
-	} else if (DISPLAY_VER(display) >= 14) {
-		tgl_get_bw_info(display, dram_info, soc_bw_params, &xelpdp_bw_params);
 	} else if (display->platform.dg2) {
 		dg2_get_bw_info(display);
 	} else if (DISPLAY_VER(display) >= 12) {
-		/*
-		 * RKL's SoC was based on ICL and the display, even though being
-		 * gen12, had changes to the memory interface to match gen11's,
-		 * consequently inheriting gen11's display-specific bandwidth
-		 * parameters.
-		 */
-		if (display->platform.rocketlake)
-			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
-		else
-			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen12_bw_params);
+		tgl_get_bw_info(display, dram_info, soc_bw_params, display_bw_params);
 	} else if (DISPLAY_VER(display) == 11) {
-		icl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
+		icl_get_bw_info(display, dram_info, soc_bw_params, display_bw_params);
 	}
 }
 

-- 
2.53.0

