Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3DdtHtNhMGpTSQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBF2689E2C
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=eiWvsLh5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACC7A10E6B2;
	Mon, 15 Jun 2026 20:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD48A10E6B4;
 Mon, 15 Jun 2026 20:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781555664; x=1813091664;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nv5ecdg35+41I2RLZG7grHI8/06E1LzdFSUCdUIVvQc=;
 b=eiWvsLh5xN+s7bJyRqWpKEHrsgAeB0ITwhcjLFDb+hwHOFG41UZ2tSTB
 W1QzjodRUe+p6J7SOwkvAdCq6PkOvWLDEocL28mu+IetfZLWVuHI90tLk
 QGDIn7SjYuDPl0A+lg8J+B1+by624VdfJXV/Y9fPikTsFDl3cyCOUhZcF
 fOo6U/cJcuEzrrWMTvwRChuvMFKP31BUMR0i7oTxTxBx5/gQjDWxEFCh4
 6jzMDnUesQLMmBnRaMEv9t0mMhMhaVp7gb0Pr2t4NG7hXmCN7dCaON277
 OVZEG10jyUFOIaqb3cM+yzhlOQ3iBYLYNRhASKDGQQJYZDsLDGklhNcWD w==;
X-CSE-ConnectionGUID: eGujVv9YQ/aELZJTnY7/JA==
X-CSE-MsgGUID: pz1ePo8BSKm5c3nEiJWcFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93694604"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93694604"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:23 -0700
X-CSE-ConnectionGUID: pUdJbR2QSye3lbKXA8Azvw==
X-CSE-MsgGUID: VyNUovOeS6unXzt04uNOKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="252538573"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:22 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 5/7] drm/i915/bw: extract update_sagv_status()
Date: Mon, 15 Jun 2026 23:33:53 +0300
Message-ID: <20260615203355.218578-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615203355.218578-1-vinod.govindapillai@intel.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1CBF2689E2C

Extract the code to update the sagv status based on the number of
QGV points into a separate function and use it.

v2: rebase

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 38 ++++++++++++-------------
 1 file changed, 18 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 6649220d81b4..0d89f64db848 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -521,6 +521,19 @@ static const struct intel_display_bw_params *get_display_bw_params(struct intel_
 	return NULL;
 }
 
+static void update_sagv_status(struct intel_display *display, int qgv_points)
+{
+	/*
+	 * In case if SAGV is disabled in BIOS, we always get 1
+	 * SAGV point, but we can't send PCode commands to restrict it
+	 * as it will fail and pointless anyway.
+	 */
+	if (qgv_points == 1)
+		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
+	else
+		display->sagv.status = I915_SAGV_ENABLED;
+}
+
 static int icl_get_bw_info(struct intel_display *display,
 			   const struct dram_info *dram_info,
 			   const struct intel_soc_bw_params *soc_bw_params,
@@ -579,15 +592,8 @@ static int icl_get_bw_info(struct intel_display *display,
 				    i, j, bi->num_planes, bi->deratedbw[j]);
 		}
 	}
-	/*
-	 * In case if SAGV is disabled in BIOS, we always get 1
-	 * SAGV point, but we can't send PCode commands to restrict it
-	 * as it will fail and pointless anyway.
-	 */
-	if (qi.num_qgv_points == 1)
-		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
-	else
-		display->sagv.status = I915_SAGV_ENABLED;
+
+	update_sagv_status(display, display->bw.num_qgv_points);
 
 	return 0;
 }
@@ -699,15 +705,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 		drm_dbg_kms(display->drm, "PSF GV %d: bw=%u\n", i, display->bw.psf_bw[i]);
 	}
 
-	/*
-	 * In case if SAGV is disabled in BIOS, we always get 1
-	 * SAGV point, but we can't send PCode commands to restrict it
-	 * as it will fail and pointless anyway.
-	 */
-	if (qi.num_qgv_points == 1)
-		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
-	else
-		display->sagv.status = I915_SAGV_ENABLED;
+	update_sagv_status(display, display->bw.num_qgv_points);
 
 	return 0;
 }
@@ -729,7 +727,7 @@ static void dg2_get_bw_info(struct intel_display *display)
 	for (i = 1; i < ARRAY_SIZE(display->bw.max); i++)
 		display->bw.max[i] = display->bw.max[0];
 
-	display->sagv.status = I915_SAGV_NOT_CONTROLLED;
+	update_sagv_status(display, display->bw.num_qgv_points);
 }
 
 static int xe2_hpd_get_bw_info(struct intel_display *display,
@@ -777,7 +775,7 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 	 * battery and plugged-in operation.
 	 */
 	drm_WARN_ON(display->drm, qi.num_qgv_points != 2);
-	display->sagv.status = I915_SAGV_ENABLED;
+	update_sagv_status(display, display->bw.num_qgv_points);
 
 	return 0;
 }
-- 
2.43.0

