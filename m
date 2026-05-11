Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OI/3CY/LAWqgjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:29:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E8E50DC35
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EE4410E739;
	Mon, 11 May 2026 12:29:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fMMAbkHF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CB3C10E73D;
 Mon, 11 May 2026 12:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778502541; x=1810038541;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vjQ50gGZcVErV0REW3vIfQHm8W2PijXBmka4HiCYlJ4=;
 b=fMMAbkHFIj/Mrixvi6z3coTYMW6/TUIETh5Zdf1DxtWJMPrgptySoKgH
 YyageGXJa1GnRjbtSWvcOVDAxDvsC+2vkI62v2FdVINyfVzOuqEj7Xf3E
 HKIoahFooiC2tnXYJablMMSWtEjOxyCp6oSXVhU2j7G8NOkLaKVo1gcu5
 rrN80fiNzPb1724nkAu2lqSXA8zMzTPQQ07KflDu5zC7cjkudJ0gJw9LD
 HujK86PWsGW9DZWAKGgI0FhWyYyyn6TF1hqsZoP4us8rRbCHHOMJHcJa/
 RiM4f6xvJb1TWcBdZKwfRGOw7i7BJkHE00kCohvBIuFm2ei6ubXDdAfOY w==;
X-CSE-ConnectionGUID: oPjGiAhLS+uSC2Bh7tIJ6Q==
X-CSE-MsgGUID: Pk5thvW0SWaye6dPEn5LlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90762815"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90762815"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:29:01 -0700
X-CSE-ConnectionGUID: i1VjWBXfT1ilp3nco7W+7w==
X-CSE-MsgGUID: nsmMQjkMSVi2o9ik7vGoWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="267801459"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.16])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:29:00 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 10/11] drm/i915/bw: extract update_sagv_status()
Date: Mon, 11 May 2026 15:28:15 +0300
Message-ID: <20260511122816.1235478-11-vinod.govindapillai@intel.com>
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
X-Rspamd-Queue-Id: F0E8E50DC35
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
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Extract the code to update the sagv status based on the number of
QGV points into a separate function and use it.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 33 +++++++++++--------------
 1 file changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 0bda13a3e31b..938c0294c251 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -505,6 +505,19 @@ static void debug_print_bw_info(struct intel_display *display)
 	}
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
 static bool is_tile_y_factored(struct intel_display *display)
 {
 	/* TGL supports Y-tile for LPDDR4/5, but not for DDR4 */
@@ -571,15 +584,7 @@ static int icl_get_bw_info(struct intel_display *display,
 
 	debug_print_bw_info(display);
 
-	/*
-	 * In case if SAGV is disabled in BIOS, we always get 1
-	 * SAGV point, but we can't send PCode commands to restrict it
-	 * as it will fail and pointless anyway.
-	 */
-	if (qi.num_points == 1)
-		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
-	else
-		display->sagv.status = I915_SAGV_ENABLED;
+	update_sagv_status(display, qi.num_points);
 
 	return 0;
 }
@@ -682,15 +687,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 
 	debug_print_bw_info(display);
 
-	/*
-	 * In case if SAGV is disabled in BIOS, we always get 1
-	 * SAGV point, but we can't send PCode commands to restrict it
-	 * as it will fail and pointless anyway.
-	 */
-	if (qi.num_points == 1)
-		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
-	else
-		display->sagv.status = I915_SAGV_ENABLED;
+	update_sagv_status(display, qi.num_points);
 
 	return 0;
 }
-- 
2.43.0

