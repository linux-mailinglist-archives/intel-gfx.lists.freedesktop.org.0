Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MAaNm2k1ml9GwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 20:54:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7DD3C1EAF
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 20:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 412D410E6D0;
	Wed,  8 Apr 2026 18:54:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vk1paIEj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF20010E6CB
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 18:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775674472; x=1807210472;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=jYsTh25UTzVqehgFj0S31Co8Px9IVI9OY5XETr9Ghs4=;
 b=Vk1paIEjyS8dacGq6Uc2sHzQcJHRiSTz5jXwzXfg976/jrXaHgSMEsow
 4SocXFLr8uvtt85zmklfDH4utG5hK+XgGwB7ShmCSC7/P7tdAKxAYvdMk
 JKrL9fWDSgKAzipoYEQ4/ANWe5LofuQyfHQ2yARRXZPlE/IxZ5X9TFCTd
 Z972yDkjyNm1ATOYz6X9MgCE93RU/LEoTTe1mG25AmHdmr+MkjvfSgdAI
 eL7Zef/rDibcAn8sInE8mP6oitOWS2pspjL3M2Ih2QsFmuDsd53V4UZnL
 QcYsWOlEyzmEz1JtGKh66N7CDhbsMTLqnqGueDaJOhmy0RGYl7ClzWl/U w==;
X-CSE-ConnectionGUID: iE+wgPRMQvWtEM/1K+oZIw==
X-CSE-MsgGUID: aHypZPkgQGWwePdUyt8kYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="99297028"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="99297028"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:54:09 -0700
X-CSE-ConnectionGUID: 5vAMlDbXR/evA6it027b0g==
X-CSE-MsgGUID: hIBX1IRuSxefNqZLfT9lwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="228786756"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO [192.168.1.19])
 ([10.124.220.211])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:54:07 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 08 Apr 2026 15:53:02 -0300
Subject: [PATCH 4/4] drm/i915/bw: Extract get_display_bw_params()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-4-23c53afa7db0@intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
In-Reply-To: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 8D7DD3C1EAF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Just like it is done for the platform-specific bandwidth parameters, use
a separate function named get_display_bw_params() to return the display
IP-specific parameters.  This simplifies intel_bw_init_hw() by having
just one call for each of *_get_info() function.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 31 ++++++++++++++++++++-----------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 64c6f18346bb..1f08fb893ee7 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -529,12 +529,26 @@ static const struct intel_display_bw_params xelpdp_disp_bw_params = {
 	.displayrtids = 256,
 };
 
+static const struct intel_display_bw_params *get_display_bw_params(struct intel_display *display)
+{
+	if (DISPLAY_VER(display) >= 14) {
+		return &xelpdp_disp_bw_params;
+	} else if (DISPLAY_VER(display) >= 12) {
+		if (display->platform.rocketlake)
+			return &rkl_disp_bw_params;
+		else
+			return &tgl_disp_bw_params;
+	} else {
+		return &icl_disp_bw_params;
+	}
+}
+
 static int icl_get_bw_info(struct intel_display *display,
-			   const struct dram_info *dram_info,
-			   const struct intel_display_bw_params *disp_bw_params)
+			   const struct dram_info *dram_info)
 {
 	struct intel_qgv_info qi = {};
 	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
+	const struct intel_display_bw_params *disp_bw_params = get_display_bw_params(display);
 	bool is_y_tile = true; /* assume y tile may be used */
 	int num_channels = max_t(u8, 1, dram_info->num_channels);
 	int ipqdepth, ipqdepthpch = 16;
@@ -602,11 +616,11 @@ static int icl_get_bw_info(struct intel_display *display,
 }
 
 static int tgl_get_bw_info(struct intel_display *display,
-			   const struct dram_info *dram_info,
-			   const struct intel_display_bw_params *disp_bw_params)
+			   const struct dram_info *dram_info)
 {
 	struct intel_qgv_info qi = {};
 	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
+	const struct intel_display_bw_params *disp_bw_params = get_display_bw_params(display);
 	bool is_y_tile = true; /* assume y tile may be used */
 	int num_channels = max_t(u8, 1, dram_info->num_channels);
 	int ipqdepth, ipqdepthpch = 16;
@@ -893,17 +907,12 @@ void intel_bw_init_hw(struct intel_display *display)
 
 	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
 		xe2_hpd_get_bw_info(display, dram_info);
-	} else if (DISPLAY_VER(display) >= 14) {
-		tgl_get_bw_info(display, dram_info, &xelpdp_disp_bw_params);
 	} else if (display->platform.dg2) {
 		dg2_get_bw_info(display);
 	} else if (DISPLAY_VER(display) >= 12) {
-		if (display->platform.rocketlake)
-			tgl_get_bw_info(display, dram_info, &rkl_disp_bw_params);
-		else
-			tgl_get_bw_info(display, dram_info, &tgl_disp_bw_params);
+		tgl_get_bw_info(display, dram_info);
 	} else if (DISPLAY_VER(display) == 11) {
-		icl_get_bw_info(display, dram_info, &icl_disp_bw_params);
+		icl_get_bw_info(display, dram_info);
 	}
 }
 

-- 
2.53.0

