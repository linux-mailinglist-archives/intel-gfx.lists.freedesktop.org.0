Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Cl6BJsgjmk+/wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 19:48:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A104A1306B6
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 19:48:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8054C10E297;
	Thu, 12 Feb 2026 18:48:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="efLFjIBw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 585C510E77F;
 Thu, 12 Feb 2026 18:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770922135; x=1802458135;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VgL66OKWK7LKJ1gTNA/AFSCy7/T6vfiyVuoh6nLA8Rs=;
 b=efLFjIBw+ZRhmaZn+nWqjgKGTIYzVA8Lu8YKOcY9r4IEcyqvR5Gc25a+
 05k79oSYs7Q3AW4uKrk6JYPs//7NYRPvEaex8+VWJsH4OVIaCSL1aKBFl
 9gKIKUMIIwVDee3u0XwHfYPJL0mcjjC4iJVsUoOHFe4WyHTlny5sOLYcI
 7iqOXUNlTRpxjZ9i2vrfOyQoA7UMNdAXOrK4yWKSvcuK5DGLKU0T5Bj4R
 /cg7ZSqU6qELqBsj2X1JYyywsIqeMzE/IMUoD2m5+Y9nH7CkHcIuxCaWk
 Yq0RsOCTBOijioCPMXUhqnzMkw+KNBz0it0gjeLD7ViLi8ddzWg+HFiWr Q==;
X-CSE-ConnectionGUID: pjzaC3l1T3CugA2GgueGnA==
X-CSE-MsgGUID: maq6fhwfT6ypXNxAJrQ1/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72204157"
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="72204157"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 10:48:37 -0800
X-CSE-ConnectionGUID: EcBoo4CIR4awYYzpRkDaag==
X-CSE-MsgGUID: Ewzk/fcwSYaxVdcuILM4bw==
X-ExtLoop1: 1
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.217])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 10:48:36 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 09/15] drm/i915/display: convert W/As in intel_fbc.c to new
 framework
Date: Thu, 12 Feb 2026 20:46:07 +0200
Message-ID: <20260212184737.352515-10-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260212184737.352515-1-luciano.coelho@intel.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A104A1306B6
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_wa.h | 2 ++
 drivers/gpu/drm/i915/display/intel_fbc.c        | 4 ++--
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 798e77200751..1459e5df1dd3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -70,6 +70,8 @@ static bool intel_display_needs_wa_16025573575(struct intel_display *display)
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name)
 {
 	switch (wa) {
+	case INTEL_DISPLAY_WA_1409120013:
+		return IS_DISPLAY_VER(display, 11, 12);
 	case INTEL_DISPLAY_WA_1409767108:
 		return (display->platform.alderlake_s ||
 			(display->platform.rocketlake &&
@@ -109,6 +111,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 	case INTEL_DISPLAY_WA_16011342517:
 		return display->platform.alderlake_p &&
 			IS_DISPLAY_STEP(display, STEP_A0, STEP_D0);
+	case INTEL_DISPLAY_WA_16011863758:
+		return DISPLAY_VER(display) >= 11;
 	case INTEL_DISPLAY_WA_16023588340:
 		return intel_display_needs_wa_16023588340(display);
 	case INTEL_DISPLAY_WA_16025573575:
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 2e5ce21e0455..87fe404962ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -27,6 +27,7 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
  * number.
  */
 enum intel_display_wa {
+	INTEL_DISPLAY_WA_1409120013,
 	INTEL_DISPLAY_WA_1409767108,
 	INTEL_DISPLAY_WA_13012396614,
 	INTEL_DISPLAY_WA_14010547955,
@@ -42,6 +43,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_15013987218,
 	INTEL_DISPLAY_WA_15018326506,
 	INTEL_DISPLAY_WA_16011342517,
+	INTEL_DISPLAY_WA_16011863758,
 	INTEL_DISPLAY_WA_16023588340,
 	INTEL_DISPLAY_WA_16025573575,
 	INTEL_DISPLAY_WA_22010178259,
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 9f39b6990bbd..a9e1dc7caa64 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -184,7 +184,7 @@ static unsigned int skl_fbc_min_cfb_stride(struct intel_display *display,
 	 * Wa_16011863758: icl+
 	 * Avoid some hardware segment address miscalculation.
 	 */
-	if (DISPLAY_VER(display) >= 11)
+	if (intel_display_wa(display, 16011863758))
 		stride += 64;
 
 	/*
@@ -950,7 +950,7 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 	}
 
 	/* Wa_1409120013:icl,jsl,tgl,dg1 */
-	if (IS_DISPLAY_VER(display, 11, 12))
+	if (intel_display_wa(display, 1409120013))
 		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
 			     0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 	/*
-- 
2.51.0

