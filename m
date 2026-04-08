Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IExjNWqk1ml9GwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 20:54:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F40F3C1E7E
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 20:54:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F1710E6CA;
	Wed,  8 Apr 2026 18:54:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LwG15A9r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE01B10E6CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 18:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775674472; x=1807210472;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=UHPPdtUmYIZpCzT3OCRPc5bhD3nsADz00X0jc5xbm/8=;
 b=LwG15A9rjDFY1v7qbj9sbYBAl/lVyYz1L8GBUPQnGS65VYqRgSwmHa+g
 FmR7HVsElD9LRKlD9/QHWn6Fdg980Vf/NytRpHban/iyoo7At2qfMygEz
 yz0Hx7OkjxVU/W7XxqsVdBWNzc2bYiwiica9BARX4Y4cH0VzgVIClWZQX
 K/X+EI2pqIAVHIHeF4EcbgOa4sLDlQ2PzAh0/88Tb5uexY6ecni20QH5V
 UKC5kXD18UKOVzPkTzO5i+k6frcyZ5DupNhz5bZLc7fXKqMRF7OLHGSXh
 4inoZPRyZpv2e5nRfilkUSHfqf+o+ePkY5Pa7M+4ONIWRExsImips+mJ9 w==;
X-CSE-ConnectionGUID: COJCqpaURIem7xLUxNhFeQ==
X-CSE-MsgGUID: sybWAY9TRPem3GnjOnYxng==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="99297022"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="99297022"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:54:06 -0700
X-CSE-ConnectionGUID: +3a3DF8gR129VyFpMn9j6w==
X-CSE-MsgGUID: R9ke3CrhQ5+g0Dl4ogV2ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="228786737"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO [192.168.1.19])
 ([10.124.220.211])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:54:03 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 08 Apr 2026 15:53:00 -0300
Subject: [PATCH 2/4] drm/i915/bw: Deduplicate intel_sa_info instances
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-2-23c53afa7db0@intel.com>
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
X-Rspamd-Queue-Id: 3F40F3C1E7E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Now that intel_sa_info contains bandwidth parameters specific to the
display IP, we can drop many duplicates and reuse from previous
releases.

Let's do that and also simplify intel_bw_init_hw() while at it.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 44 ++++++---------------------------
 1 file changed, 8 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index ed840b592eff..654876215ace 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -516,27 +516,7 @@ static const struct intel_sa_info rkl_sa_info = {
 	.displayrtids = 128,
 };
 
-static const struct intel_sa_info adls_sa_info = {
-	.deburst = 16,
-	.displayrtids = 256,
-};
-
-static const struct intel_sa_info adlp_sa_info = {
-	.deburst = 16,
-	.displayrtids = 256,
-};
-
-static const struct intel_sa_info mtl_sa_info = {
-	.deburst = 32,
-	.displayrtids = 256,
-};
-
-static const struct intel_sa_info xe3lpd_sa_info = {
-	.deburst = 32,
-	.displayrtids = 256,
-};
-
-static const struct intel_sa_info xe3lpd_3002_sa_info = {
+static const struct intel_sa_info xelpdp_sa_info = {
 	.deburst = 32,
 	.displayrtids = 256,
 };
@@ -903,25 +883,17 @@ void intel_bw_init_hw(struct intel_display *display)
 	if (DISPLAY_VER(display) >= 35)
 		drm_WARN_ON(display->drm, dram_info->ecc_impacting_de_bw);
 
-	if (DISPLAY_VER(display) >= 30) {
-		if (DISPLAY_VERx100(display) == 3002)
-			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
-		else
-			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
-	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
+	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
 		xe2_hpd_get_bw_info(display, dram_info);
 	} else if (DISPLAY_VER(display) >= 14) {
-		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
+		tgl_get_bw_info(display, dram_info, &xelpdp_sa_info);
 	} else if (display->platform.dg2) {
 		dg2_get_bw_info(display);
-	} else if (display->platform.alderlake_p) {
-		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
-	} else if (display->platform.alderlake_s) {
-		tgl_get_bw_info(display, dram_info, &adls_sa_info);
-	} else if (display->platform.rocketlake) {
-		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
-	} else if (DISPLAY_VER(display) == 12) {
-		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
+	} else if (DISPLAY_VER(display) >= 12) {
+		if (display->platform.rocketlake)
+			tgl_get_bw_info(display, dram_info, &rkl_sa_info);
+		else
+			tgl_get_bw_info(display, dram_info, &tgl_sa_info);
 	} else if (DISPLAY_VER(display) == 11) {
 		icl_get_bw_info(display, dram_info, &icl_sa_info);
 	}

-- 
2.53.0

